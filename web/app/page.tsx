import { getIronSession } from 'iron-session';
import { cookies } from 'next/headers';
import { AppSession, sessionOptions } from '@/lib/session';

export default async function HomePage() {
  const session = await getIronSession<AppSession>(cookies(), sessionOptions);
  const providerConnected = Boolean(session.tokens?.provider?.accessToken);
  const payerConnected = Boolean(session.tokens?.payer?.accessToken);

  return (
    <div className="homeClass">
      <div className="main-heading">Bridge the Gap Between EHR and Payer Systems</div>
      <div className="description">
        <p>
          Our portal simplifies healthcare operations by facilitating the exchange of patient data between EHRs and payer systems. This supports
          CRD, DTR, and PAS use cases.
        </p>
      </div>
      <div className="card-container">
        <div className="cardHome">
          <h3>Providers</h3>
          <p>Provider Org is the FHIR Client from where we fetch the Clinical Details</p>
          {providerConnected ? (
            <div className="available"><span className="icon">✔️</span> provider configured successfully</div>
          ) : null}
          <a href="/provider-login" className="btn btn-primary">{providerConnected ? 'Reconfigure' : 'Configure Provider'}</a>
        </div>
        <div className="cardHome">
          <h3>Payers</h3>
          <p>Payer Org is the FHIR Server for Service & Medication Requests</p>
          {payerConnected ? (
            <div className="available"><span className="icon">✔️</span> payer configured successfully</div>
          ) : null}
          <a href="/payer-login" className="btn btn-primary">{payerConnected ? 'Reconfigure' : 'Configure Payer'}</a>
        </div>
        <div className="cardHome">
          <h3>UM Workspace</h3>
          <p>Workspace to perform various Utilization Management Operations</p>
          <button disabled={!providerConnected || !payerConnected}>Enter Workspace</button>
          {(!payerConnected || !providerConnected) ? (
            <div className="subtext">
              {!payerConnected ? <div className="notAvailable"><span className="icon">ⓘ</span> payer not configured</div> : null}
              {!providerConnected ? <div className="notAvailable"><span className="icon">ⓘ</span> provider not configured</div> : null}
            </div>
          ) : null}
        </div>
      </div>
      <img src="/assets/edited-image.png" alt="Footer Image" className="background-image" />
    </div>
  );
}


