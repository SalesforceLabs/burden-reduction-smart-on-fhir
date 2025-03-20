public Class CDSDataSetup {
    public static void doExec() {

        List<CodeSet> lcs = new List<CodeSet>();

        // MB Codeset for the patient
        CodeSet CodeSet_MB = new CodeSet();
        CodeSet_MB.Name = 'MB Codeset Coverage';
        CodeSet_MB.SourceSystem = 'http://terminology.hl7.org/CodeSystem/v2-0203';
        CodeSet_MB.Code = 'MB';
        CodeSet_MB.IsActive = true;
        CodeSet_MB.IsCustomCode = true;
        CodeSet_MB.IsPrimary = true;
        insert CodeSet_MB;
        lcs.add(CodeSet_MB);
        
        CodeSet CodeSet_1 = new CodeSet();
        CodeSet_1.Name = 'MRA Knee Vessels Right-RxNorm';
        CodeSet_1.SourceSystem = 'http://www.nlm.nih.gov/research/umls/rxnorm';
        CodeSet_1.Code = '615224';
        CodeSet_1.IsActive = true;
        CodeSet_1.IsCustomCode = true;
        CodeSet_1.IsPrimary = true;
        CodeSet_1.CodeSetType = 'RxNorm';
        insert CodeSet_1;
        lcs.add(CodeSet_1);
        
        CodeSet CodeSet_2 = new CodeSet();
        CodeSet_2.Name = 'MRA Knee Vessels Right-CPT';
        CodeSet_2.SourceSystem = 'http://www.nlm.nih.gov/research/umls/cpt';
        CodeSet_2.Code = '617994';
        CodeSet_2.IsActive = true;
        CodeSet_2.IsCustomCode = true;
        CodeSet_2.IsPrimary = true;
        CodeSet_2.CodeSetType = 'CPT';
        insert CodeSet_2;
        lcs.add(CodeSet_2);
        
        CodeSet CodeSet_3 = new CodeSet();
        CodeSet_3.Name = 'MRA Knee Vessels Right-HCPCS';
        CodeSet_3.SourceSystem = 'urn:oid:2.16.840.1.113883.6.285';
        CodeSet_3.Code = 'G0297';
        CodeSet_3.IsActive = true;
        CodeSet_3.IsCustomCode = true;
        CodeSet_3.IsPrimary = true;
        CodeSet_3.CodeSetType = 'HCPCS';
        insert CodeSet_3;
        lcs.add(CodeSet_3);
        
        CodeSet CodeSet_4 = new CodeSet();
        CodeSet_4.Name = 'MRA Knee Vessels Right-SNOWMED';
        CodeSet_4.SourceSystem = 'http://snomed.info/sct';
        CodeSet_4.Code = '751000119105';
        CodeSet_4.IsActive = true;
        CodeSet_4.IsCustomCode = true;
        CodeSet_4.IsPrimary = true;
        CodeSet_4.CodeSetType = 'Snowmed';
        CodeSet_4.CodeSetKey = 'C15C98114D1844A2A5B0E11E2B184E13-45026204';
        insert CodeSet_4;
        lcs.add(CodeSet_4);
        
        CodeSet CodeSet_5 = new CodeSet();
        CodeSet_5.Name = 'Paracetamol-SNOWMED';
        CodeSet_5.SourceSystem = 'http://snomed.info/sct';
        CodeSet_5.Code = '372731000000109';
        CodeSet_5.IsActive = true;
        CodeSet_5.IsCustomCode = true;
        CodeSet_5.IsPrimary = true;
        CodeSet_5.CodeSetType = 'Snowmed';
        insert CodeSet_5;
        lcs.add(CodeSet_5);
        
        CodeSet CodeSet_6 = new CodeSet();
        CodeSet_6.Name = 'Paracetamol-CPT';
        CodeSet_6.SourceSystem = 'http://www.nlm.nih.gov/research/umls/cpt';
        CodeSet_6.Code = '617999';
        CodeSet_6.IsActive = true;
        CodeSet_6.IsCustomCode = true;
        CodeSet_6.IsPrimary = true;
        CodeSet_6.CodeSetType = 'CPT';
        insert CodeSet_6;
        lcs.add(CodeSet_6);
        
        CodeSet CodeSet_7 = new CodeSet();
        CodeSet_7.Name = 'Paracetamol-HCPCS';
        CodeSet_7.SourceSystem = 'urn:oid:2.16.840.1.113883.6.285';
        CodeSet_7.Code = '613998';
        CodeSet_7.IsActive = true;
        CodeSet_7.IsCustomCode = true;
        CodeSet_7.IsPrimary = true;
        CodeSet_7.CodeSetType = 'HCPCS';
        insert CodeSet_7;
        lcs.add(CodeSet_7);
        
        CodeSet CodeSet_8 = new CodeSet();
        CodeSet_8.Name = 'Paracetamol-RxNorm';
        CodeSet_8.SourceSystem = 'http://www.nlm.nih.gov/research/umls/rxnorm';
        CodeSet_8.Code = '198445';
        CodeSet_8.IsActive = true;
        CodeSet_8.IsCustomCode = true;
        CodeSet_8.IsPrimary = true;
        CodeSet_8.CodeSetType = 'RxNorm';
        insert CodeSet_8;
        lcs.add(CodeSet_8);

        CodeSet CodeSet_9 = new CodeSet();
        CodeSet_9.Name = 'Amoxycilin-SNOWMED';
        CodeSet_9.SourceSystem = 'http://snomed.info/sct';
        CodeSet_9.Code = '372729009';
        CodeSet_9.IsActive = true;
        CodeSet_9.IsCustomCode = true;
        CodeSet_9.IsPrimary = true;
        CodeSet_9.CodeSetType = 'Snowmed';
        insert CodeSet_9;
        lcs.add(CodeSet_9);
        
        CodeSet CodeSet_10 = new CodeSet();
        CodeSet_10.Name = 'Amoxycilin-CPT';
        CodeSet_10.SourceSystem = 'http://www.nlm.nih.gov/research/umls/cpt';
        CodeSet_10.Code = '617993';
        CodeSet_10.IsActive = true;
        CodeSet_10.IsCustomCode = true;
        CodeSet_10.IsPrimary = true;
        CodeSet_10.CodeSetType = 'CPT';
        insert CodeSet_10;
        lcs.add(CodeSet_10);
        
        CodeSet CodeSet_11 = new CodeSet();
        CodeSet_11.Name = 'Amoxycilin-HCPCS';
        CodeSet_11.SourceSystem = 'urn:oid:2.16.840.1.113883.6.285';
        CodeSet_11.Code = 'J0145';
        CodeSet_11.IsActive = true;
        CodeSet_11.IsCustomCode = true;
        CodeSet_11.IsPrimary = true;
        CodeSet_11.CodeSetType = 'HCPCS';
        insert CodeSet_11;
        lcs.add(CodeSet_11);
        
        CodeSet CodeSet_12 = new CodeSet();
        CodeSet_12.Name = 'Amoxycilin-RxNorm';
        CodeSet_12.SourceSystem = 'http://www.nlm.nih.gov/research/umls/rxnorm';
        CodeSet_12.Code = '198443';
        CodeSet_12.IsActive = true;
        CodeSet_12.IsCustomCode = true;
        CodeSet_12.IsPrimary = true;
        CodeSet_12.CodeSetType = 'RxNorm';
        insert CodeSet_12;
        lcs.add(CodeSet_12);

        CodeSet CodeSet_13 = new CodeSet();
        CodeSet_13.Name = 'MRA Knee Vessel Left-SNOWMED';
        CodeSet_13.SourceSystem = 'http://snomed.info/sct';
        CodeSet_13.Code = '751000119104';
        CodeSet_13.IsActive = true;
        CodeSet_13.IsCustomCode = true;
        CodeSet_13.IsPrimary = true;
        CodeSet_13.CodeSetType = 'Snowmed';
        insert CodeSet_13;
        lcs.add(CodeSet_13);
        
        CodeSet CodeSet_14 = new CodeSet();
        CodeSet_14.Name = 'MRA Knee Vessel Left-CPT';
        CodeSet_14.SourceSystem = 'http://www.nlm.nih.gov/research/umls/cpt';
        CodeSet_14.Code = '617995';
        CodeSet_14.IsActive = true;
        CodeSet_14.IsCustomCode = true;
        CodeSet_14.IsPrimary = true;
        CodeSet_14.CodeSetType = 'CPT';
        insert CodeSet_14;
        lcs.add(CodeSet_14);
        
        CodeSet CodeSet_15 = new CodeSet();
        CodeSet_15.Name = 'MRA Knee Vessel Left-HCPCS';
        CodeSet_15.SourceSystem = 'urn:oid:2.16.840.1.113883.6.285';
        CodeSet_15.Code = 'G0298';
        CodeSet_15.IsActive = true;
        CodeSet_15.IsCustomCode = true;
        CodeSet_15.IsPrimary = true;
        CodeSet_15.CodeSetType = 'HCPCS';
        insert CodeSet_15;
        lcs.add(CodeSet_15);
        
        CodeSet CodeSet_16 = new CodeSet();
        CodeSet_16.Name = 'MRA Knee Vessel Left-RxNorm';
        CodeSet_16.SourceSystem = 'http://www.nlm.nih.gov/research/umls/rxnorm';
        CodeSet_16.Code = '614891';
        CodeSet_16.IsActive = true;
        CodeSet_16.IsCustomCode = true;
        CodeSet_16.IsPrimary = true;
        CodeSet_16.CodeSetType = 'RxNorm';
        insert CodeSet_16;
        lcs.add(CodeSet_16);
        

        CodeSet paCodeSet1 = new CodeSet();
        paCodeSet1.Name = 'No Prior Authorization';
        paCodeSet1.SourceSystem = 'http://hl7.org/fhir/us/davinci-crd/CodeSystem/temp';
        paCodeSet1.Code = 'no-auth';
        insert(paCodeSet1);
        lcs.add(paCodeSet1);

        CodeSet paCodeSet2 = new CodeSet();
        paCodeSet2.Name ='Prior Authorization Needed';
        paCodeSet2.SourceSystem ='http://hl7.org/fhir/us/davinci-crd/CodeSystem/temp';
        paCodeSet2.Code ='auth-needed';
        insert(paCodeSet2);
        lcs.add(paCodeSet2);

        CodeSet paCodeSet3 = new CodeSet();
        paCodeSet3.Name ='Authorization Satisfied';
        paCodeSet3.SourceSystem ='http://hl7.org/fhir/us/davinci-crd/CodeSystem/temp';
        paCodeSet3.Code ='satisfied';
        insert(paCodeSet3);
        lcs.add(paCodeSet3);

        CodeSet paCodeSet4 = new CodeSet();
        paCodeSet4.Name ='Performer Prior Authorization';
        paCodeSet4.SourceSystem ='http://hl7.org/fhir/us/davinci-crd/CodeSystem/temp';
        paCodeSet4.Code ='performpa';
        insert(paCodeSet4);
        lcs.add(paCodeSet4);

        CodeSet paCodeSet5 = new CodeSet();
        paCodeSet5.Name ='Conditional';
        paCodeSet5.SourceSystem ='http://hl7.org/fhir/us/davinci-crd/CodeSystem/temp';
        paCodeSet5.Code ='conditional';
        insert(paCodeSet5);
        lcs.add(paCodeSet5);
        
        // Account
        List<Account> accs =new List<Account>();
        // Charles Green
        Account Account_1 = new Account();
        Account_1.FirstName = 'Charles';
        Account_1.LastName = 'Green';
        Account_1.IsActive = true;
        Account_1.SourceSystemIdentifier = '1288992';
        Account_1.PersonBirthDate = Date.valueof('1994-12-23');
        Account_1.PersonGender = 'Male';
        Account_1.SourceSystemIdentifier = 'bsc-sbscrbrid-00A-001';
        insert Account_1;
        accs.add(Account_1);
        
        Account Account_2 = new Account();
        Account_2.FirstName = 'Sophia';
        Account_2.LastName = 'Sophia';
        Account_2.IsActive = true;
        // Account_2.PersonContactId = '003SB00000K1H4vYAF';
        Account_2.PersonBirthDate = Date.valueof('2000-12-23');
        Account_2.PersonGender = 'Female';
        insert Account_2;
        accs.add(Account_2);
        
        // Provider Account
        Account Account_3 = new Account();
        Account_3.FirstName = 'William';
        Account_3.LastName = 'Practitioner';
        Account_3.ParentId = '000000000000000AAA';
        Account_3.IsActive = true;
        Account_3.OperatingHoursId = '000000000000000AAA';
        insert Account_3;
        accs.add(Account_3);

        // Provider Account
        Account Account_4 = new Account();
        Account_4.FirstName = 'Blue';
        Account_4.LastName = 'Practitioner';
        Account_4.ParentId = '000000000000000AAA';
        Account_4.IsActive = true;
        Account_4.OperatingHoursId = '000000000000000AAA';
        insert Account_4;
        accs.add(Account_4);

        // HealthcareFacility
        List<HealthcareFacility> hcf = new List<HealthcareFacility>();
        HealthcareFacility HealthcareFacility_1 = new HealthcareFacility();
        HealthcareFacility_1.Name = 'Washington, DC metro area';
        HealthcareFacility_1.AccountId = Account_3.Id;
        HealthcareFacility_1.IsAlwaysOpen = true;
        insert HealthcareFacility_1;
        hcf.add(HealthcareFacility_1);
        
        
        // HealthcareProvider
        List<HealthcareProvider> pros = new List<HealthcareProvider>();
        HealthcareProvider HealthcareProvider_1 = new HealthcareProvider();
        HealthcareProvider_1.Name = 'Cleveland Clinic';
        HealthcareProvider_1.AccountId = Account_3.Id;
        HealthcareProvider_1.IsNotSearchable = true;
        HealthcareProvider_1.HasCarrierContract = true;
        insert HealthcareProvider_1;
        pros.add(HealthcareProvider_1);

        HealthcareProvider HealthcareProvider_2 = new HealthcareProvider();
        HealthcareProvider_2.Name = 'Avivamax';
        HealthcareProvider_2.AccountId = Account_4.Id;
        HealthcareProvider_2.IsNotSearchable = true;
        HealthcareProvider_2.HasCarrierContract = true;
        insert HealthcareProvider_2;
        pros.add(HealthcareProvider_2);
        
        // Identifier
        // Provider Identifier
        List<Identifier> idfs = new List<Identifier>();
        Identifier Identifier_1 = new Identifier();
        Identifier_1.ParentRecordId = HealthcareProvider_1.Id;
        Identifier_1.SourceSystem = 'urn:oid:2.16.528.1.1007.3.1'; //
        Identifier_1.IdValue = '938273695';
        insert Identifier_1;
        idfs.add(Identifier_1);
        
        // Provider identifier
        Identifier Identifier_2 = new Identifier();
        Identifier_2.ParentRecordId = HealthcareProvider_1.Id;
        Identifier_2.SourceSystem = 'urn:oid:2.16.840.1.113883.2.4.6.3';
        Identifier_2.IdValue = '129IDH4OP733';
        insert Identifier_2;
        idfs.add(Identifier_2);

        Identifier Identifier_19 = new Identifier();
        Identifier_19.ParentRecordId = HealthcareProvider_2.Id;
        Identifier_19.SourceSystem = 'urn:oid:2.16.840.1.113883.2.4.6.3';
        Identifier_19.IdValue = '6737263GYST';
        insert Identifier_19;
        idfs.add(Identifier_19);
        
        // Patient 2 Identifier
        Identifier Identifier_3 = new Identifier();
        Identifier_3.ParentRecordId = Account_2.Id;
        Identifier_3.SourceSystem = 'urn:oid:2.16.840.1.113883.2.4.6.3';
        Identifier_3.IdValue = '738472983';
        Identifier_3.IdTypeId = CodeSet_MB.Id;
        insert Identifier_3;
        idfs.add(Identifier_3);

        // Patient 2 Identifier
        Identifier Identifier_4 = new Identifier();
        Identifier_4.ParentRecordId = Account_2.Id;
        Identifier_4.SourceSystem = 'bsc:oid:2.16.840.1.113883.2.4.6.3';
        Identifier_4.IdValue = 'bsc-0001245';
        Identifier_4.IdTypeId = CodeSet_MB.Id;
        insert Identifier_4;
        idfs.add(Identifier_4);
        
        // Facity Identifier
        Identifier Identifier_7 = new Identifier();
        Identifier_7.ParentRecordId = HealthcareFacility_1.Id;
        Identifier_7.IdValue = 'B1-S.F2';
        insert Identifier_7;
        idfs.add(Identifier_7);
        
        // Facility Identifier
        Identifier Identifier_8 = new Identifier();
        Identifier_8.ParentRecordId = HealthcareFacility_1.Id;
        Identifier_8.IdValue = 'B1-S.F2.1.00';
        insert Identifier_8;
        idfs.add(Identifier_8);

        // Optional, For Chekcing the Json Data we have created in the setup.
        Map<String, List<Object>> genericMap = new Map<String, List<Object>>();
        genericMap.put('codesets', lcs);
        genericMap.put('accounts', accs);
        genericMap.put('HealthcareProviders', pros);
        genericMap.put('HealthcareFacilities', hcf);
        genericMap.put('Identifiers', idfs);
        
        // Serialize the list to JSON format
        String jsonString = JSON.serialize(genericMap);

        // Display the serialized JSON string
        System.debug(jsonString);

        
        // delete lcsb;
        // delete lcs;
        // delete idfs;
        // delete hcf;
        // delete pros;
        // delete accs;
    }
}