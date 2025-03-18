# burden-reduction-smart-on-fhir
This app is built to integrate with EHR system(s) for fetching Clinical Information and enabling users to work with HC Payers for CRD, DTR and PAS use cases.

Demo:
1. Refer to google drive link in usage-resources/Demo V1 link.txt

Steps to setup data:
1. In the payer salesforce org, execute usage-resources/PayerDataSetup.apex
2. In the provider salesforce org, execute usage-resources/ProviderDataSetup.apex

3. PayerDataSetup includes saving Payer, Members, Providers, Provider Locations, Payer Networks, Facilities, Facility Networks, CodeSets, CodeSetBundles, Purchaser Plans, Plan Benefits, Plan Benefit Items, Member Plan, Coverage Benefits, Coverage Benefit Items, Coverage Benefit Item Limits, Identifiers.
4. Provider just includes Patients, Identifiers, CodeSets, Provider, Facility in the initial version.
5. The NodeApp fetches patient info along with their Identifiers, it forms a sample CDS payload with hard-coded Service and Medication Requests.
6. Node App 1.0 demo includes four use cases mentioned below.

patient_name, Medicatation/Service,  Name, Docs_Needed, Prioir_Auth_Approval
Sophia, Service,  MRA Knee Vessels Right, "clinical, No Prior Authorization"
Sophia, Medication, Paracetamol, Admin, "Prior Authorization Needed"
Sophia, Medicaiton, Amoxicillin, NA, "Authorization Satisfied"
Sophia, MRA Knee Vessel Left, admin, "Performer Prior Authorization"



Steps to start the app:
1. Clone the repository.
2. run command npm install to install all the dependencies mentioned in the package.json.
3. run npm start to start the server.
