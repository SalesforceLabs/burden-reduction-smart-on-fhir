import crypto from 'crypto';

export function generateCodeVerifier(): string {
  return base64URLEncode(crypto.randomBytes(32));
}

export function generateCodeChallenge(codeVerifier: string): string {
  const hash = crypto.createHash('sha256').update(codeVerifier).digest();
  return base64URLEncode(hash);
}

export function base64URLEncode(buffer: Buffer): string {
  return buffer
    .toString('base64')
    .replace(/\+/g, '-')
    .replace(/\//g, '_')
    .replace(/=+$/, '');
}

export function generateState(): string {
  return base64URLEncode(crypto.randomBytes(16));
}


