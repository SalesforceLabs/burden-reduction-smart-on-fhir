export const metadata = {
  title: 'SF FHIR Portal',
  description: 'Bridge the Gap Between EHR and Payer Systems'
};

import './globals.css';

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <head>
        <link rel="icon" href="/assets/sfhir.png" />
        <link rel="stylesheet" href="/style.css" />
      </head>
      <body>
        <header style={{ display: 'flex', alignItems: 'center', padding: '2rem' }}>
          <a href="/">
            <img src="/assets/SalesforceLogo.png" alt="Logo" style={{ width: 100, height: 'auto' }} />
          </a>
        </header>
        <div className="content">{children}</div>
        <footer className="footer">
          <p>
            © {new Date().getFullYear()} Salesforce, Inc. All rights reserved. |{' '}
            <a href="https://www.salesforce.com/in/company/privacy/" className="privacy-link">
              Privacy
            </a>
          </p>
        </footer>
      </body>
    </html>
  );
}


