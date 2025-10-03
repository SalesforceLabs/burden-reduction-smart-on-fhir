import { IronSessionOptions } from 'iron-session';

export type OrgConfig = {
  baseUrl: string;
  clientId: string;
  callbackUrl: string;
  clientSecret?: string;
};

export type OrgTokens = {
  accessToken: string;
  instanceUrl: string;
};

export type AppSession = {
  payerLogin?: OrgConfig;
  providerLogin?: OrgConfig;
  tokens?: {
    payer?: OrgTokens;
    provider?: OrgTokens;
  };
  oauth?: {
    payer?: { codeVerifier: string; state: string };
    provider?: { codeVerifier: string; state: string };
  };
};

export const sessionOptions: IronSessionOptions = {
  cookieName: 'sf-fhir.session',
  password: process.env.SESSION_PASSWORD as string,
  cookieOptions: {
    secure: process.env.NODE_ENV === 'production',
    sameSite: 'lax',
    httpOnly: true,
    path: '/'
  }
};


