import { NextRequest, NextResponse } from 'next/server';
import { getIronSession } from 'iron-session';
import { cookies } from 'next/headers';
import { sessionOptions, AppSession } from '../../../../lib/session';

export async function POST(req: NextRequest) {
  const session = await getIronSession<AppSession>(cookies(), sessionOptions);
  const body = await req.json();
  const { userType, baseUrl, clientId, clientSecret, callbackUrl } = body ?? {};

  if (!userType || !baseUrl || !clientId || !callbackUrl) {
    return NextResponse.json({ success: false, error: 'Missing fields' }, { status: 400 });
  }

  (session as any)[userType] = { baseUrl, clientId, clientSecret, callbackUrl };
  await session.save();

  return NextResponse.json({ success: true });
}


