// MOst Updated apex.

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
        
        
        List<CodeSetBundle> lcsb = new List<CodeSetBundle>();
        CodeSetBundle CodeSetBundle_1 = new CodeSetBundle();
        CodeSetBundle_1.Name = 'MRA Knee Vessele Right';
        CodeSetBundle_1.CodeSet1Id = CodeSet_1.Id;
        CodeSetBundle_1.CodeSet2Id = CodeSet_2.Id;
        CodeSetBundle_1.CodeSet3Id = CodeSet_3.Id;
        CodeSetBundle_1.CodeSet4Id = CodeSet_4.Id;
        insert CodeSetBundle_1;
        lcsb.add(CodeSetBundle_1);
        
        CodeSetBundle CodeSetBundle_2 = new CodeSetBundle();
        CodeSetBundle_2.Name = 'Augmentin';
        CodeSetBundle_2.CodeSet1Id = CodeSet_8.Id;
        CodeSetBundle_2.CodeSet2Id = CodeSet_6.Id;
        CodeSetBundle_2.CodeSet3Id = CodeSet_7.Id;
        CodeSetBundle_2.CodeSet4Id = CodeSet_5.Id;
        insert CodeSetBundle_2;
        lcsb.add(CodeSetBundle_2);

        CodeSetBundle CodeSetBundle_3 = new CodeSetBundle();
        CodeSetBundle_3.Name = 'Amoxycilin';
        CodeSetBundle_3.CodeSet1Id = CodeSet_12.Id;
        CodeSetBundle_3.CodeSet2Id = CodeSet_9.Id;
        CodeSetBundle_3.CodeSet3Id = CodeSet_10.Id;
        CodeSetBundle_3.CodeSet4Id = CodeSet_11.Id;
        insert CodeSetBundle_3;
        lcsb.add(CodeSetBundle_3);

        CodeSetBundle CodeSetBundle_4 = new CodeSetBundle();
        CodeSetBundle_4.Name = 'Left Knee Surgery';
        CodeSetBundle_4.CodeSet1Id = CodeSet_13.Id;
        CodeSetBundle_4.CodeSet2Id = CodeSet_14.Id;
        CodeSetBundle_4.CodeSet3Id = CodeSet_15.Id;
        CodeSetBundle_4.CodeSet4Id = CodeSet_16.Id;
        insert CodeSetBundle_4;
        lcsb.add(CodeSetBundle_4);
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
        Account_2.PersonBirthDate = Date.valueof('2000-12-23');
        Account_2.PersonGender = 'Female';
        insert Account_2;
        accs.add(Account_2);
        
        // Payer Account
        Account Account_3 = new Account();
        Account_3.Name = 'United Health Group';
        Account_3.ParentId = '000000000000000AAA';
        Account_3.IsActive = true;
        Account_3.OperatingHoursId = '000000000000000AAA';
        insert Account_3;
        accs.add(Account_3);
        
        // Provider Account
        Account Account_4 = new Account();
        Account_4.FirstName = 'William';
        Account_4.LastName = 'Practitioner';
        Account_4.ParentId = '000000000000000AAA';
        Account_4.IsActive = true;
        Account_4.OperatingHoursId = '000000000000000AAA';
        insert Account_4;
        accs.add(Account_4);

        // Provider Account
        Account Account_5 = new Account();
        Account_5.FirstName = 'Blue';
        Account_5.LastName = 'Practitioner';
        Account_5.ParentId = '000000000000000AAA';
        Account_5.IsActive = true;
        Account_5.OperatingHoursId = '000000000000000AAA';
        insert Account_5;
        accs.add(Account_5);

        // HealthcarePayerNetwork
        List<HealthcarePayerNetwork> pns = new List<HealthcarePayerNetwork>();
        
        HealthcarePayerNetwork HealthcarePayerNetwork_1 = new HealthcarePayerNetwork();
        HealthcarePayerNetwork_1.Name = 'United Health Dental';
        HealthcarePayerNetwork_1.PayerId = Account_3.Id;
        HealthcarePayerNetwork_1.NetworkType = 'HMO';
        HealthcarePayerNetwork_1.IsActive = true;
        insert HealthcarePayerNetwork_1;
        pns.add(HealthcarePayerNetwork_1);
        
        HealthcarePayerNetwork HealthcarePayerNetwork_2 = new HealthcarePayerNetwork();
        HealthcarePayerNetwork_2.Name = 'United Health Surgeon';
        HealthcarePayerNetwork_2.PayerId = Account_3.Id;
        HealthcarePayerNetwork_2.IsActive = true;
        insert HealthcarePayerNetwork_2;
        pns.add(HealthcarePayerNetwork_2);

        // HealthcareFacility
        List<HealthcareFacility> hcf = new List<HealthcareFacility>();
        HealthcareFacility HealthcareFacility_1 = new HealthcareFacility();
        HealthcareFacility_1.Name = 'Washington, DC metro area';
        HealthcareFacility_1.AccountId = Account_4.Id;
        HealthcareFacility_1.IsAlwaysOpen = true;
        insert HealthcareFacility_1;
        hcf.add(HealthcareFacility_1);
        
        
        // HealthcareProvider
        List<HealthcareProvider> pros = new List<HealthcareProvider>();
        
        HealthcareProvider HealthcareProvider_1 = new HealthcareProvider();
        HealthcareProvider_1.Name = 'Cleveland Clinic';
        HealthcareProvider_1.AccountId = Account_4.Id;
        HealthcareProvider_1.IsNotSearchable = true;
        HealthcareProvider_1.HasCarrierContract = true;
        insert HealthcareProvider_1;
        pros.add(HealthcareProvider_1);

        HealthcareProvider HealthcareProvider_2 = new HealthcareProvider();
        HealthcareProvider_2.Name = 'Avivamax';
        HealthcareProvider_2.AccountId = Account_5.Id;
        HealthcareProvider_2.IsNotSearchable = true;
        HealthcareProvider_2.HasCarrierContract = true;
        insert HealthcareProvider_2;
        pros.add(HealthcareProvider_2);
        
        // Payer Facility Network
        List<HealthcareFacilityNetwork> hfns = new List<HealthcareFacilityNetwork>();
        
        HealthcareFacilityNetwork HealthcareFacilityNetwork_1 = new HealthcareFacilityNetwork();
        HealthcareFacilityNetwork_1.Name = 'United Health-Cleveland Clinic Network';
        HealthcareFacilityNetwork_1.IsActive = true;
        HealthcareFacilityNetwork_1.PayerNetworkId = HealthcarePayerNetwork_1.Id;
        HealthcareFacilityNetwork_1.HealthcareFacilityId = HealthcareFacility_1.Id;
        HealthcareFacilityNetwork_1.HealthcareProviderId = HealthcareProvider_1.Id;
        insert HealthcareFacilityNetwork_1;
        hfns.add(HealthcareFacilityNetwork_1);

        HealthcareFacilityNetwork HealthcareFacilityNetwork_2 = new HealthcareFacilityNetwork();
        HealthcareFacilityNetwork_2.Name = 'United Health-Avivamax Network';
        HealthcareFacilityNetwork_2.IsActive = true;
        HealthcareFacilityNetwork_2.PayerNetworkId = HealthcarePayerNetwork_2.Id;
        HealthcareFacilityNetwork_2.HealthcareProviderId = HealthcareProvider_2.Id;
        insert HealthcareFacilityNetwork_2;
        hfns.add(HealthcareFacilityNetwork_2);

        // PurchaserPlan
        // For the patient 2
        
        List<PurchaserPlan> pls = new List<PurchaserPlan>();
        PurchaserPlan PurchaserPlan_1 = new PurchaserPlan();
        PurchaserPlan_1.Name = 'Family Plan';
        PurchaserPlan_1.PayerId = Account_3.Id;
        PurchaserPlan_1.PlanType = 'PPO';
        PurchaserPlan_1.EffectiveFrom = Date.valueOf('2025-01-01 00:00:00');
        PurchaserPlan_1.EffectiveTo = Date.valueOf('2035-06-30 00:00:00');
        PurchaserPlan_1.IsVerifiable = true;
        insert PurchaserPlan_1;
        pls.add(PurchaserPlan_1);
        
        PurchaserPlan PurchaserPlan_2 = new PurchaserPlan();
        PurchaserPlan_2.Name = 'Platinum Plan';
        PurchaserPlan_2.PayerId = Account_3.Id;
        PurchaserPlan_2.PlanType = 'PPO';
        PurchaserPlan_2.EffectiveFrom = Date.valueOf('2025-05-01 00:00:00');
        PurchaserPlan_2.EffectiveTo = Date.valueOf('2035-06-30 00:00:00');
        PurchaserPlan_2.IsVerifiable = true;
        insert PurchaserPlan_2;
        pls.add(PurchaserPlan_2);
        
        PurchaserPlan PurchaserPlan_3 = new PurchaserPlan();
        PurchaserPlan_3.Name = 'Gold Plan';
        PurchaserPlan_3.PayerId = Account_3.Id;
        PurchaserPlan_3.EffectiveFrom = Date.valueOf('2025-01-01 00:00:00');
        PurchaserPlan_3.EffectiveTo = Date.valueOf('2035-06-30 00:00:00');
        PurchaserPlan_3.IsVerifiable = true;
        PurchaserPlan_3.PlanType = 'PPO';
        insert PurchaserPlan_3;
        pls.add(PurchaserPlan_3);

        

        List<PlanBenefit> lpb = new List<PlanBenefit>();
        PlanBenefit pb_1 = new PlanBenefit();
        pb_1.Name = 'Family PlanBenefit 1';
        pb_1.PurchaserPlanId = PurchaserPlan_1.Id;
        pb_1.Status = 'Active';
        pb_1.EffectiveFrom = Date.valueOf('2024-07-01 00:00:00');
        pb_1.EffectiveTo = Date.valueOf('2025-06-30 00:00:00');
        insert pb_1;
        lpb.add(pb_1);

        PlanBenefit pb_2 = new PlanBenefit();
        pb_2.Name = 'Platinum PlanBenefit 1';
        pb_2.PurchaserPlanId = PurchaserPlan_2.Id;
        pb_2.EffectiveFrom = Date.valueOf('2024-07-01 00:00:00');
        pb_2.EffectiveTo = Date.valueOf('2025-06-30 00:00:00');
        pb_2.Status = 'Active';
        insert pb_2;
        lpb.add(pb_2);

        PlanBenefit pb_3 = new PlanBenefit();
        pb_3.Name = 'Gold PlanBenefit 1';
        pb_3.PurchaserPlanId = PurchaserPlan_3.Id;
        pb_3.EffectiveFrom = Date.valueOf('2024-07-01 00:00:00');
        pb_3.EffectiveTo = Date.valueOf('2025-06-30 00:00:00');
        pb_3.Status = 'Active';
        insert pb_3;
        lpb.add(pb_3);

        // Plan Benefit Item
        List<PlanBenefitItem> lpbi = new List<planBenefitItem>();

        PlanBenefitItem pbi1 = new PlanBenefitItem();
        pbi1.Name = 'Family PlanBenefitItem 1';
        pbi1.ItemCodeId = CodeSet_6.Id;
        pbi1.PreauthorizationTypeCodeId = paCodeSet2.Id;
        pbi1.PlanBenefitId = pb_1.Id;
        insert pbi1;
        lpbi.add(pbi1);

        PlanBenefitItem pbi2 = new PlanBenefitItem();
        pbi2.Name = 'Family PlanBenefitItem 2';
        pbi2.ItemCodeId = CodeSet_10.Id;
        pbi2.PreauthorizationTypeCodeId = paCodeSet3.Id;
        pbi2.PlanBenefitId = pb_1.Id;
        insert pbi2;
        lpbi.add(pbi2);

        PlanBenefitItem pbi3 = new PlanBenefitItem();
        pbi3.Name = 'Platinum PlanBenefitItem 1';
        pbi3.ItemCodeId = CodeSet_14.Id;
        pbi3.PreauthorizationTypeCodeId = paCodeSet4.Id;
        pbi3.PlanBenefitId = pb_2.Id;
        insert pbi3;
        lpbi.add(pbi3);

        PlanBenefitItem pbi4 = new PlanBenefitItem();
        pbi4.Name = 'Platinum PlanBenefitItem 2';
        pbi4.ItemCodeId = CodeSet_2.Id;
        pbi4.PreauthorizationTypeCodeId = paCodeSet1.Id;
        pbi4.PlanBenefitId = pb_2.Id;
        insert pbi4;
        lpbi.add(pbi4);

        PlanBenefitItem pbi5 = new PlanBenefitItem();
        pbi5.Name = 'Gold PlanBenefitItem 1';
        pbi5.PreauthorizationTypeCodeId = paCodeSet4.Id;
        pbi5.ItemCodeId = CodeSet_14.Id;
        pbi5.PlanBenefitId = pb_3.Id;
        insert pbi5;
        lpbi.add(pbi5);
        
        // MemberPlan
        // For the Sophia
        
        List<MemberPlan> mpl = new List<MemberPlan>();
        MemberPlan MemberPlan_1 = new MemberPlan();
        MemberPlan_1.Name = 'Sophia Family Plan';
        MemberPlan_1.MemberId = Account_2.Id;
        MemberPlan_1.EffectiveFrom = Date.valueOf('2024-07-01 00:00:00');
        MemberPlan_1.EffectiveTo = Date.valueOf('2035-06-30 00:00:00');
        MemberPlan_1.SubscriberId = Account_1.Id;
        MemberPlan_1.PayerId = Account_3.Id;
        MemberPlan_1.VerificationStatus = 'Not Checked';
        MemberPlan_1.PlanId = PurchaserPlan_1.Id;
        MemberPlan_1.PayerNetworkId = HealthcarePayerNetwork_1.Id;
        MemberPlan_1.PriorityOrder = 1;
        insert MemberPlan_1;
        mpl.add(MemberPlan_1);
        
        MemberPlan MemberPlan_2 = new MemberPlan();
        MemberPlan_2.Name = 'Sophia Platinum Plan';
        MemberPlan_2.MemberId = Account_2.Id;
        MemberPlan_2.EffectiveFrom = Date.valueOf('2024-07-01 00:00:00');
        MemberPlan_2.EffectiveTo = Date.valueOf('2035-06-30 00:00:00');
        MemberPlan_2.SubscriberId = Account_1.Id;
        MemberPlan_2.PayerId = Account_3.Id;
        MemberPlan_2.VerificationStatus = 'Not Checked';
        MemberPlan_2.PlanId = PurchaserPlan_2.Id;
        MemberPlan_2.PayerNetworkId = HealthcarePayerNetwork_2.Id;
        MemberPlan_2.PriorityOrder = 2;
        insert MemberPlan_2;
        mpl.add(MemberPlan_2);

        // For the Charles Green
        MemberPlan MemberPlan_3 = new MemberPlan();
        MemberPlan_3.Name = 'Charles Green Family Plan';
        MemberPlan_3.MemberId = Account_1.Id;
        MemberPlan_3.EffectiveFrom = Date.valueOf('2024-07-01 00:00:00');
        MemberPlan_3.EffectiveTo = Date.valueOf('2035-06-30 00:00:00');
        MemberPlan_3.SubscriberId = Account_1.Id;
        MemberPlan_3.PayerId = Account_3.Id;
        MemberPlan_3.VerificationStatus = 'Not Checked';
        MemberPlan_3.PlanId = PurchaserPlan_1.Id;
        MemberPlan_3.PayerNetworkId = HealthcarePayerNetwork_2.Id;
        MemberPlan_3.PriorityOrder = 2;
        insert MemberPlan_3;
        mpl.add(MemberPlan_3);
        
        MemberPlan MemberPlan_4 = new MemberPlan();
        MemberPlan_4.Name = 'Charles Green Gold Plan';
        MemberPlan_4.MemberId = Account_1.Id;
        MemberPlan_4.EffectiveFrom = Date.valueOf('2024-07-01 00:00:00');
        MemberPlan_4.EffectiveTo = Date.valueOf('2035-06-30 00:00:00');
        MemberPlan_4.PayerId = Account_3.Id;
        MemberPlan_4.VerificationStatus = 'Not Checked';
        MemberPlan_4.PlanId = PurchaserPlan_3.Id;
        MemberPlan_4.PayerNetworkId = HealthcarePayerNetwork_2.Id;
        MemberPlan_4.PriorityOrder = 2;
        insert MemberPlan_4;
        mpl.add(MemberPlan_4);

        // CoverageBenefit
        
        List<CoverageBenefit> lcb = new List<CoverageBenefit>();

        // For patient 2
        CoverageBenefit CoverageBenefit_1 = new CoverageBenefit();
        CoverageBenefit_1.Name = 'Sophia CB1';
        CoverageBenefit_1.MemberPlanId = MemberPlan_1.Id;
        CoverageBenefit_1.MemberId = Account_2.Id;
        CoverageBenefit_1.IsActive = true;
        CoverageBenefit_1.CoverageType = 'Pharmacy';
        CoverageBenefit_1.BenefitPeriodStartDate = MemberPlan_1.EffectiveFrom;
        CoverageBenefit_1.BenefitPeriodEndDate = MemberPlan_1.EffectiveTo;
        insert CoverageBenefit_1;
        lcb.add(CoverageBenefit_1);
        
        CoverageBenefit CoverageBenefit_2 = new CoverageBenefit();
        CoverageBenefit_2.Name = 'Sophia CB2';
        CoverageBenefit_2.MemberPlanId = MemberPlan_1.Id;
        CoverageBenefit_2.MemberId = Account_2.Id;
        CoverageBenefit_2.IsActive = true;
        CoverageBenefit_2.CoverageType = 'Pharmacy';
        CoverageBenefit_2.BenefitPeriodStartDate = MemberPlan_1.EffectiveFrom;
        CoverageBenefit_2.BenefitPeriodEndDate = MemberPlan_1.EffectiveTo;
        insert CoverageBenefit_2;
        lcb.add(CoverageBenefit_2);
        
        CoverageBenefit CoverageBenefit_3 = new CoverageBenefit();
        CoverageBenefit_3.Name = 'Sophia CB3';
        CoverageBenefit_3.MemberPlanId = MemberPlan_2.Id;
        CoverageBenefit_3.MemberId = Account_2.Id;
        CoverageBenefit_3.IsActive = true;
        CoverageBenefit_3.CoverageType = 'Pharmacy';
        CoverageBenefit_3.BenefitPeriodStartDate =MemberPlan_2.EffectiveFrom;
        CoverageBenefit_3.BenefitPeriodEndDate = MemberPlan_2.EffectiveTo;
        insert CoverageBenefit_3;
        lcb.add(CoverageBenefit_3);
        
        CoverageBenefit CoverageBenefit_4 = new CoverageBenefit();
        CoverageBenefit_4.Name = 'Sophia CB4';
        CoverageBenefit_4.MemberPlanId = MemberPlan_2.Id;
        CoverageBenefit_4.MemberId = Account_2.Id;
        CoverageBenefit_4.IsActive = true;
        CoverageBenefit_4.CoverageType = 'Pharmacy';
        CoverageBenefit_4.BenefitPeriodStartDate = MemberPlan_2.EffectiveFrom;
        CoverageBenefit_4.BenefitPeriodEndDate = MemberPlan_2.EffectiveTo;
        insert CoverageBenefit_4;
        lcb.add(CoverageBenefit_4);
        
        // For patient 1
        CoverageBenefit CoverageBenefit_5 = new CoverageBenefit();
        CoverageBenefit_5.Name = 'Charles Green CB1';
        CoverageBenefit_5.MemberPlanId = MemberPlan_3.Id;
        CoverageBenefit_5.MemberId = Account_1.Id;
        CoverageBenefit_5.IsActive = true;
        CoverageBenefit_5.CoverageType = 'Pharmacy';
        CoverageBenefit_5.BenefitPeriodStartDate = MemberPlan_3.EffectiveFrom;
        CoverageBenefit_5.BenefitPeriodEndDate =MemberPlan_3.EffectiveTo;
        insert CoverageBenefit_5;
        lcb.add(CoverageBenefit_5);
        
        CoverageBenefit CoverageBenefit_6 = new CoverageBenefit();
        CoverageBenefit_6.Name = 'Charles Green CB2';
        CoverageBenefit_6.MemberPlanId = MemberPlan_3.Id;
        CoverageBenefit_6.MemberId = Account_1.Id;
        CoverageBenefit_6.IsActive = true;
        CoverageBenefit_6.CoverageType = 'Pharmacy';
        CoverageBenefit_6.BenefitPeriodStartDate = MemberPlan_3.EffectiveFrom;
        CoverageBenefit_6.BenefitPeriodEndDate = MemberPlan_3.EffectiveTo;
        insert CoverageBenefit_6;
        lcb.add(CoverageBenefit_6);
        
        CoverageBenefit CoverageBenefit_7 = new CoverageBenefit();
        CoverageBenefit_7.Name = 'Charles Green CB3';
        CoverageBenefit_7.MemberPlanId = MemberPlan_4.Id;
        CoverageBenefit_7.MemberId = Account_1.Id;
        CoverageBenefit_7.IsActive = true;
        CoverageBenefit_7.CoverageType = 'Pharmacy';
        CoverageBenefit_7.BenefitPeriodStartDate = MemberPlan_4.EffectiveFrom;
        CoverageBenefit_7.BenefitPeriodEndDate = MemberPlan_4.EffectiveTo;
        insert CoverageBenefit_7;
        lcb.add(CoverageBenefit_7);

        // CoverageBenefitItems 
        // for patient 2
        
        List<CoverageBenefitItem> lcbi = new List<CoverageBenefitItem>();
        
        CoverageBenefitItem CoverageBenefitItem_1 = new CoverageBenefitItem();
        CoverageBenefitItem_1.Name = 'Sophia CBI1';
        CoverageBenefitItem_1.MemberId = Account_2.Id;
        CoverageBenefitItem_1.CoverageBenefitId = CoverageBenefit_1.Id;
        CoverageBenefitItem_1.IsInPlanNetwork = false;
        CoverageBenefitItem_1.DoesDeductibleApply = true;
        CoverageBenefitItem_1.IsPreauthorizationRequired = true;
        CoverageBenefitItem_1.IsActive = true;
        CoverageBenefitItem_1.CodeSetServiceTypeId = CodeSet_6.Id;
        insert CoverageBenefitItem_1;
        lcbi.add(CoverageBenefitItem_1);
        
        CoverageBenefitItem CoverageBenefitItem_2 = new CoverageBenefitItem();
        CoverageBenefitItem_2.Name = 'Sophia CBI2';
        CoverageBenefitItem_2.MemberId = Account_2.Id;
        CoverageBenefitItem_2.CoverageBenefitId = CoverageBenefit_2.Id;
        CoverageBenefitItem_2.IsInPlanNetwork = false;
        CoverageBenefitItem_2.DoesDeductibleApply = true;
        CoverageBenefitItem_2.IsPreauthorizationRequired = true;
        CoverageBenefitItem_2.IsActive = true;
        CoverageBenefitItem_2.CodeSetServiceTypeId = CodeSet_2.Id;
        insert CoverageBenefitItem_2;
        lcbi.add(CoverageBenefitItem_2);
        
        CoverageBenefitItem CoverageBenefitItem_3 = new CoverageBenefitItem();
        CoverageBenefitItem_3.Name = 'Sophia CBI3';
        CoverageBenefitItem_3.MemberId = Account_2.Id;
        CoverageBenefitItem_3.CoverageBenefitId = CoverageBenefit_3.Id;
        CoverageBenefitItem_3.IsInPlanNetwork = false;
        CoverageBenefitItem_3.DoesDeductibleApply = true;
        CoverageBenefitItem_3.IsPreauthorizationRequired = true;
        CoverageBenefitItem_3.IsActive = true;
        CoverageBenefitItem_3.CodeSetServiceTypeId = CodeSet_14.Id;
        insert CoverageBenefitItem_3;
        lcbi.add(CoverageBenefitItem_3);
        
        CoverageBenefitItem CoverageBenefitItem_4 = new CoverageBenefitItem();
        CoverageBenefitItem_4.Name = 'Sophia CBI4';
        CoverageBenefitItem_4.MemberId = Account_2.Id;
        CoverageBenefitItem_4.CoverageBenefitId = CoverageBenefit_4.Id;
        CoverageBenefitItem_4.IsInPlanNetwork = false;
        CoverageBenefitItem_4.DoesDeductibleApply = true;
        CoverageBenefitItem_4.IsPreauthorizationRequired = true;
        CoverageBenefitItem_4.IsActive = true;
        CoverageBenefitItem_4.CodeSetServiceTypeId = CodeSet_10.Id;
        insert CoverageBenefitItem_4;
        lcbi.add(CoverageBenefitItem_4);

        // For patient 1
        CoverageBenefitItem CoverageBenefitItem_5 = new CoverageBenefitItem();
        CoverageBenefitItem_5.Name = 'Charles Green CBI1';
        CoverageBenefitItem_5.MemberId = Account_1.Id;
        CoverageBenefitItem_5.CoverageBenefitId = CoverageBenefit_5.Id;
        CoverageBenefitItem_5.IsInPlanNetwork = false;
        CoverageBenefitItem_5.DoesDeductibleApply = true;
        CoverageBenefitItem_5.IsPreauthorizationRequired = true;
        CoverageBenefitItem_5.IsActive = true;
        CoverageBenefitItem_5.CodeSetServiceTypeId = CodeSet_6.Id;
        insert CoverageBenefitItem_5;
        lcbi.add(CoverageBenefitItem_5);
        
        CoverageBenefitItem CoverageBenefitItem_6 = new CoverageBenefitItem();
        CoverageBenefitItem_6.Name = 'Charles Green CBI2';
        CoverageBenefitItem_6.MemberId = Account_1.Id;
        CoverageBenefitItem_6.CoverageBenefitId = CoverageBenefit_6.Id;
        CoverageBenefitItem_6.IsInPlanNetwork = false;
        CoverageBenefitItem_6.DoesDeductibleApply = true;
        CoverageBenefitItem_6.IsPreauthorizationRequired = true;
        CoverageBenefitItem_6.IsActive = true;
        CoverageBenefitItem_6.CodeSetServiceTypeId = CodeSet_10.Id;
        insert CoverageBenefitItem_6;
        lcbi.add(CoverageBenefitItem_6);
        
        CoverageBenefitItem CoverageBenefitItem_7 = new CoverageBenefitItem();
        CoverageBenefitItem_7.Name = 'Charles Green CBI3';
        CoverageBenefitItem_7.MemberId = Account_1.Id;
        CoverageBenefitItem_7.CoverageBenefitId = CoverageBenefit_7.Id;
        CoverageBenefitItem_7.IsInPlanNetwork = false;
        CoverageBenefitItem_7.DoesDeductibleApply = true;
        CoverageBenefitItem_7.IsPreauthorizationRequired = true;
        CoverageBenefitItem_7.IsActive = true;
        CoverageBenefitItem_7.CodeSetServiceTypeId = CodeSet_14.Id;
        insert CoverageBenefitItem_7;
        lcbi.add(CoverageBenefitItem_7);
        
        
        // CoverageBenefitItemLimit
        // For patient 2
        List<CoverageBenefitItemLimit> lcbil = new List<CoverageBenefitItemLimit>();
        
        CoverageBenefitItemLimit CoverageBenefitItemLimit_1 = new CoverageBenefitItemLimit();
        CoverageBenefitItemLimit_1.Name = 'Sophia CBIL1';
        CoverageBenefitItemLimit_1.CoverageBenefitItemId = CoverageBenefitItem_1.Id;
        CoverageBenefitItemLimit_1.AllowedLimit = '100';
        CoverageBenefitItemLimit_1.AppliedLimit = '0';
        insert CoverageBenefitItemLimit_1;
        lcbil.add(CoverageBenefitItemLimit_1);
        
        CoverageBenefitItemLimit CoverageBenefitItemLimit_2 = new CoverageBenefitItemLimit();
        CoverageBenefitItemLimit_2.Name = 'Sophia CBIL2';
        CoverageBenefitItemLimit_2.CoverageBenefitItemId = CoverageBenefitItem_2.Id;
        CoverageBenefitItemLimit_2.AllowedLimit = '5';
        CoverageBenefitItemLimit_2.AppliedLimit = '0';
        insert CoverageBenefitItemLimit_2;
        lcbil.add(CoverageBenefitItemLimit_2);
        
        CoverageBenefitItemLimit CoverageBenefitItemLimit_3 = new CoverageBenefitItemLimit();
        CoverageBenefitItemLimit_3.Name = 'Sophia CBIL3';
        CoverageBenefitItemLimit_3.CoverageBenefitItemId = CoverageBenefitItem_3.Id;
        CoverageBenefitItemLimit_3.AllowedLimit = '5';
        CoverageBenefitItemLimit_3.AppliedLimit = '0';
        insert CoverageBenefitItemLimit_3;
        lcbil.add(CoverageBenefitItemLimit_3);
        
        CoverageBenefitItemLimit CoverageBenefitItemLimit_4 = new CoverageBenefitItemLimit();
        CoverageBenefitItemLimit_4.Name = 'Sophia CBIL4';
        CoverageBenefitItemLimit_4.CoverageBenefitItemId = CoverageBenefitItem_4.Id;
        CoverageBenefitItemLimit_4.AllowedLimit = '100';
        CoverageBenefitItemLimit_4.AppliedLimit = '0';
        insert CoverageBenefitItemLimit_4;
        lcbil.add(CoverageBenefitItemLimit_4);

        // for patient 1
        CoverageBenefitItemLimit CoverageBenefitItemLimit_5 = new CoverageBenefitItemLimit();
        CoverageBenefitItemLimit_5.Name = 'Charles Green CBIL1';
        CoverageBenefitItemLimit_5.CoverageBenefitItemId = CoverageBenefitItem_5.Id;
        CoverageBenefitItemLimit_5.AllowedLimit = '100';
        CoverageBenefitItemLimit_5.AppliedLimit = '0';
        insert CoverageBenefitItemLimit_5;
        lcbil.add(CoverageBenefitItemLimit_5);
        
        CoverageBenefitItemLimit CoverageBenefitItemLimit_6 = new CoverageBenefitItemLimit();
        CoverageBenefitItemLimit_6.Name = 'Charles Green CBIL2';
        CoverageBenefitItemLimit_6.CoverageBenefitItemId = CoverageBenefitItem_6.Id;
        CoverageBenefitItemLimit_6.AllowedLimit = '100';
        CoverageBenefitItemLimit_6.AppliedLimit = '0';
        insert CoverageBenefitItemLimit_6;
        lcbil.add(CoverageBenefitItemLimit_6);
        
        CoverageBenefitItemLimit CoverageBenefitItemLimit_7 = new CoverageBenefitItemLimit();
        CoverageBenefitItemLimit_7.Name = 'Charles Green CBIL3';
        CoverageBenefitItemLimit_7.CoverageBenefitItemId = CoverageBenefitItem_7.Id;
        CoverageBenefitItemLimit_7.AllowedLimit = '3';
        CoverageBenefitItemLimit_7.AppliedLimit = '0';
        insert CoverageBenefitItemLimit_7;
        lcbil.add(CoverageBenefitItemLimit_7);
        
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
        
        // Payer Identifier 
        Identifier Identifier_11 = new Identifier();
        Identifier_11.ParentRecordId = Account_3.Id;
        Identifier_11.IdValue = '123';
        insert Identifier_11;
        idfs.add(Identifier_11);

        Map<String, List<Object>> genericMap = new Map<String, List<Object>>();
        genericMap.put('codesets', lcs);
        genericMap.put('codesetbundles', lcsb);
        genericMap.put('accounts', accs);
        genericMap.put('HealthcarePayerNetworks', pns);
        genericMap.put('HealthcareProviders', pros);
        genericMap.put('HealthcareFacilities', hcf);
        genericMap.put('HealthcareFacilityNetworks', hfns);
        genericMap.put('PurchaserPlans', pls);
        genericMap.put('PlanBenefits', lpb);
        genericMap.put('PlanBenefitItems', lpbi);
        genericMap.put('MemberPlan', mpl);
        genericMap.put('CoverageBenefit', lcb);
        genericMap.put('CoverageBenefitItem', lcbi);
        genericMap.put('CoverageBenefitItemLimt', lcbil);
        genericMap.put('Identifiers', idfs);
        
        // Serialize the list to JSON format
        String jsonString = JSON.serialize(genericMap);

        // Display the serialized JSON string
        System.debug(jsonString);

        // delete lcbil;
        // delete lcbi;
        // delete lcb;
        // delete lcsb;
        // delete lcs;
        // delete idfs;
        // delete hcf;
        // delete pros;
        // delete hfns;
        // delete pns;
        // delete mpl;
        // delete pls;
        // delete accs;

    }
}