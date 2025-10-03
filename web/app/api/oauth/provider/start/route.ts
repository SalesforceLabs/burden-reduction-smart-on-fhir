import { NextRequest, NextResponse } from 'next/server';
import { getIronSession } from 'iron-session';
import { cookies } from 'next/headers';
import { sessionOptions, AppSession } from '@/lib/session';
import { generateCodeVerifier, generateCodeChallenge, generateState } from '../../common';

export async function POST(_req: NextRequest) {
  const session = await getIronSession<AppSession>(cookies(), sessionOptions);
  const body = await _req.json();
  const { baseUrl, clientId, redirectUri } = body ?? {};

  if (!baseUrl || !clientId || !redirectUri) {
    return NextResponse.json({ error: 'Missing fields' }, { status: 400 });
  }

  const codeVerifier = generateCodeVerifier();
  const codeChallenge = generateCodeChallenge(codeVerifier);
  const state = generateState();

  session.oauth = session.oauth || {};
  session.oauth.provider = { codeVerifier, state };
  // Persist provider config too
  session.providerLogin = { baseUrl, clientId, callbackUrl: redirectUri };
  await session.save();

  const scope = encodeURIComponent('api full');
  const authUrl = `${baseUrl.replace(/\/$/, '')}/services/oauth2/authorize?response_type=code&client_id=${encodeURIComponent(clientId)}&redirect_uri=${encodeURIComponent(redirectUri)}&scope=${scope}&code_challenge=${encodeURIComponent(codeChallenge)}&code_challenge_method=S256&state=${encodeURIComponent(state)}`;

  return NextResponse.json({ authUrl }, { status: 200 });
}


