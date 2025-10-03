# burden-reduction-smart-on-fhir

Portal to bridge EHR and Payer systems for CRD, DTR and PAS workflows.

## Architecture (Current)
- `Express + EJS` legacy app remains for reference during migration.
- `Next.js (App Router)` app under `web/` is the new UI/API surface.
  - UI: React pages in `web/app/**` with a shared layout.
  - Auth: Salesforce OAuth 2.0 Authorization Code + PKCE.
  - Session: Encrypted cookie via `iron-session`; tokens are per-user and never written to files.
  - APIs: Next Route Handlers in `web/app/api/**` proxy to Salesforce using the session token.
  - Assets: Static files in `web/public/` (copied from root `public/`).

### Key Routes (Next.js)
- Pages
  - `/` home with provider/payer connection status
  - `/provider-login`, `/payer-login` configuration + OAuth start
  - `/provider/callback`, `/payer/callback` bridge pages → server callbacks
- API
  - `/api/config/update` stores per-user org config in session
  - `/api/oauth/{provider|payer}/start` begins PKCE flow
  - `/api/oauth/{provider|payer}/callback` exchanges `code` → session tokens and redirects to `/`

## Getting Started
1. Prerequisites
   - Node 18+
   - Salesforce Connected Apps for Provider and Payer orgs
     - Callback URLs:
       - Provider: `http://localhost:3000/provider/callback`
       - Payer: `http://localhost:3000/payer/callback`
     - OAuth scopes: `api`, `refresh_token` (optional), `openid` (optional)
     - Authorization Code flow with PKCE enabled
2. Setup
   - Create `web/.env.local` with:
     - `SESSION_PASSWORD=replace-with-a-long-random-string`
   - Install deps and run Next app:
     - `cd web && npm install && npm run dev`
3. Login
   - Open `http://localhost:3000`
   - Configure Provider and Payer with their Base URL and Client Id
   - Complete OAuth in Salesforce; you will be redirected back to `/`

## Legacy App (Express)
- Legacy server code (`app.js`, `router.js`, `views/**`) is kept for parity reference during migration.
- Do not use file-based tokens (`config/payerConfig.json`, `config/providerConfig.json`) for authentication; these will be removed.

## Notes
- Never commit `.env*` files; see `.gitignore`.
- Tokens are stored per-session in an encrypted cookie; opening in a new browser/incognito requires login again.
