import { NextRequest, NextResponse } from 'next/server';
import { getIronSession } from 'iron-session';
import { cookies } from 'next/headers';
import { AppSession, sessionOptions } from '@/lib/session';

export async function GET(req: NextRequest) {
  const session = await getIronSession<AppSession>(cookies(), sessionOptions);
  const { searchParams } = new URL(req.url);
  const code = searchParams.get('code');
  const state = searchParams.get('state');

  const cfg = session.payerLogin;
  const oauth = session.oauth?.payer;

  // Debug fallback: if missing, try to reconstruct from query (some IdPs echo client_id/redirect_uri)
  if (!cfg) {
    const client_id = searchParams.get('client_id');
    const redirect_uri = searchParams.get('redirect_uri');
    const baseUrlGuess = process.env.SALESFORCE_BASE_URL || '';
    if (client_id && redirect_uri && baseUrlGuess) {
      session.payerLogin = { baseUrl: baseUrlGuess, clientId: client_id, callbackUrl: redirect_uri };
    }
  }

  if (!session.payerLogin || !oauth) {
    return NextResponse.redirect(new URL('/payer-login', req.url));
  }
  if (!code || !state || state !== oauth.state) {
    return NextResponse.redirect(new URL('/payer-login', req.url));
  }

  const tokenUrl = `${session.payerLogin.baseUrl.replace(/\/$/, '')}/services/oauth2/token`;
  const form = new URLSearchParams();
  form.set('grant_type', 'authorization_code');
  form.set('code', code);
  form.set('client_id', session.payerLogin.clientId);
  form.set('redirect_uri', session.payerLogin.callbackUrl);
  form.set('code_verifier', oauth.codeVerifier);

  const tokenResp = await fetch(tokenUrl, {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: form
  });

  if (!tokenResp.ok) {
    return NextResponse.redirect(new URL('/payer-login', req.url));
  }
  const tokenJson = await tokenResp.json();
  const accessToken = tokenJson.access_token as string;
  const instanceUrl = tokenJson.instance_url as string;

  session.tokens = session.tokens || {};
  session.tokens.payer = { accessToken, instanceUrl };
  await session.save();
  return NextResponse.redirect(new URL('/', req.url));
}


