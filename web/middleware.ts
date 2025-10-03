import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';

// Minimal placeholder middleware: expand to protect routes as needed
export function middleware(_req: NextRequest) {
  return NextResponse.next();
}

export const config = {
  matcher: ['/um-workspace', '/order-select', '/retrieve-questionnaire']
};


