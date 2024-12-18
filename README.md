# burden-reduction-smart-on-fhir
This app is built to integrate with EHR system(s) for fetching Clinical Information and enabling users to work with HC Payers for CRD, DTR and PAS use cases.

Demo:
1. Refer to google drive link in usage-resources/Demo V1 link.txt

Steps to setup data:
1. In the payer salesforce org, execute usage-resources/PayerDataSetup.apex
2. In the provider salesforce org, execute usage-resources/ProviderDataSetup.apex

Steps to start the app:
1. Clone the repository.
2. run command npm install to install all the dependencies mentioned in the package.json.
3. run npm start to start the server.
