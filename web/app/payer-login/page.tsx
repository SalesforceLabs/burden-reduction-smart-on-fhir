
'use client';

import { useState } from 'react';

export default function PayerLoginPage() {
  const [baseUrl, setBaseUrl] = useState('your salesforce base url');
  const [clientId, setClientId] = useState('');
  const [redirectUri, setRedirectUri] = useState('your callback url');

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const res = await fetch('/api/config/update', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ userType: 'payerLogin', baseUrl, clientId, callbackUrl: redirectUri })
    });
    if (!res.ok) return;
    const authStart = await fetch('/api/oauth/payer/start', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ baseUrl, clientId, redirectUri })
    });
    const { authUrl } = await authStart.json();
    window.location.href = authUrl;
  }

  return (
    <div className="center-div" id="baseLogin">
      <div className="container w-25 border py-5">
        <div className="title pb-2">
          <h2 className="heading-style">Payer Login</h2>
          <span>Log in to the Payer Org</span>
          <hr />
        </div>
        <form onSubmit={handleSubmit} className="pt-2">
          <div className="form-group">
            <small className="form-text text-muted text-left">Enter Base URL</small>
            <input value={baseUrl} onChange={e => setBaseUrl(e.target.value)} className="form-control" placeholder="base url" required />
          </div>
          <div className="form-group pt-3">
            <small className="form-text text-muted text-left">Enter Client Id</small>
            <input value={clientId} onChange={e => setClientId(e.target.value)} className="form-control" placeholder="client id" required />
          </div>
          <div className="form-group pt-3">
            <small className="form-text text-muted text-left">Enter Callback URL</small>
            <input value={redirectUri} onChange={e => setRedirectUri(e.target.value)} className="form-control" placeholder="callback url" required />
          </div>
          <div className="pt-3">
            <button type="submit" className="btn btn-success rounded-pill">Get Access Token</button>
          </div>
        </form>
      </div>
    </div>
  );
}


