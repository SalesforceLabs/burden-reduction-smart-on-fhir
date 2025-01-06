public class CRDSampleData {
    public void createData() {
        List<PurchaserPlan> purchaserPlansToInsert = new List<PurchaserPlan>(); 
        List<MemberPlan> memberPlansToInsert = new List<MemberPlan>();
        List<Identifier> identifierToInsert = new List<Identifier>();
        List<CoverageBenefit> coverageBenefitsToInsert = new List<CoverageBenefit>();
        List<CoverageBenefitItem> coverageBenefitItemsToInsert = new List<CoverageBenefitItem>();
        List<CoverageBenefitItemLimit> coverageBenefitItemLimitsToInsert = new List<CoverageBenefitItemLimit>();

        //Person accounts 
        Account doctor = new Account(Name = 'Practitioner van de Heuvel', Type = 'Person', IsActive=true);
        insert(doctor);
        Contact doctorContact = new Contact(Salutation='Mr.', FirstName = 'Practitioner', LastName='van de Heuvel' ,AccountId=doctor.Id);
        insert(doctorContact);

        Account subscriber = new Account(Name = 'Pieter van de Heuvel Subscriber', Type = 'Person', SourceSystemIdentifier='1288992', IsActive=true);
        insert(subscriber);
        Contact subscriberContact = new Contact(FirstName = 'Pieter van de Heuvel', LastName='Subscriber' ,AccountId=subscriber.Id);
        insert(subscriberContact);

        Account familyMember = new Account(Name = 'Pieter van de Heuvel', Type = 'Person', IsActive=true);
        insert(familyMember);
        Contact familyMemberContact = new Contact(FirstName = 'Pieter', LastName='van de Heuvel' , Birthdate=Date.newInstance(1990, 1, 15), AccountId=familyMember.Id);
        insert(familyMemberContact);

        //Business accounts
        Account payerAccount = new Account(Name = 'Payer Account', Type = 'Business', IsActive=true);
        insert(payerAccount);

        //Purchaser Plans
        purchaserPlansToInsert.add(new PurchaserPlan(Name = 'Family Plan', PayerId = payerAccount.Id, EffectiveFrom = getEffectiveFrom(), EffectiveTo = getEffectiveTo()));
        purchaserPlansToInsert.add(new PurchaserPlan(Name = 'Platinum Future Plan', PayerId = payerAccount.Id, EffectiveFrom = getEffectiveFrom(), EffectiveTo = getEffectiveTo()));
        purchaserPlansToInsert.add(new PurchaserPlan(Name = 'Platinum Plan', PayerId = payerAccount.Id, EffectiveFrom = getEffectiveFrom(), EffectiveTo = getEffectiveTo()));
        purchaserPlansToInsert.add(new PurchaserPlan(Name = 'Platinum Plan -- Discontinued', PayerId = payerAccount.Id, EffectiveFrom = getEffectiveFrom(), EffectiveTo = Date.today().addMonths(-1)));
        insert purchaserPlansToInsert;

        //Member Plans
        memberPlansToInsert.add(new MemberPlan(Name = 'Pieter van de Heuvel Parent Plan', MemberId = subscriber.Id, SubscriberId = subscriber.Id, PlanId = purchaserPlansToInsert[0].Id, PayerId = payerAccount.Id, EffectiveFrom = getEffectiveFrom(), EffectiveTo = getEffectiveTo()));
        memberPlansToInsert.add(new MemberPlan(Name = 'Pieter van de Heuvel Family Plan', MemberId = familyMember.Id, SubscriberId = subscriber.Id, PlanId = purchaserPlansToInsert[0].Id, PayerId = payerAccount.Id, EffectiveFrom = getEffectiveFrom(),EffectiveTo = getEffectiveTo()));
        memberPlansToInsert.add(new MemberPlan(Name = 'Pieter van de Heuvel Platinum Plan', MemberId = familyMember.Id, SubscriberId = subscriber.Id, PlanId = purchaserPlansToInsert[2].Id, PayerId = payerAccount.Id, EffectiveFrom = getEffectiveFrom(), EffectiveTo = getEffectiveTo()));
        memberPlansToInsert.add(new MemberPlan(Name = 'Pieter van de Heuvel Platinum Plan -- Individual', MemberId = familyMember.Id, PlanId = purchaserPlansToInsert[2].Id, PayerId = payerAccount.Id, EffectiveFrom = getEffectiveFrom(),EffectiveTo = getEffectiveTo()));
        memberPlansToInsert.add(new MemberPlan(Name = 'Pieter van de Heuvel Inactive Plan', MemberId = familyMember.Id, SubscriberId = subscriber.Id, PlanId = purchaserPlansToInsert[3].Id, PayerId = payerAccount.Id, EffectiveFrom = getEffectiveFrom(),EffectiveTo = Date.today().addMonths(-1)));
        insert(memberPlansToInsert);

        HealthcareFacility healthcareFacility = new HealthcareFacility(Name = 'Washington, DC metro area', AccountId = doctor.Id);
        insert(healthcareFacility);

        HealthcareProvider healthcareProvider = new HealthcareProvider(Name = 'Cleveland Clinic', AccountId = doctor.Id);
        insert(HealthcareProvider);

        identifierToInsert.add(new Identifier(ParentRecordId = healthcareProvider.Id, IdValue='938273695'));
        identifierToInsert.add(new Identifier(ParentRecordId = healthcareProvider.Id, IdValue='129IDH4OP733'));
        identifierToInsert.add(new Identifier(ParentRecordId = healthcareFacility.Id, IdValue='B1-S.F2'));
        identifierToInsert.add(new Identifier(ParentRecordId = healthcareFacility.Id, IdValue='B1-S.F2.1.00'));
        insert(identifierToInsert);

        //todo: picklist
        CodeSet codeSet = new CodeSet(Name = 'CB1-RxNorm',SourceSystem='http://www.nlm.nih.gov/research/umls/cpt', Code = '617993', IsActive=true);
        insert(codeSet);

        // Create Coverage Benefits
        coverageBenefitsToInsert.add(new CoverageBenefit(Name = 'Pieter CB1', MemberPlanId = memberPlansToInsert[1].Id, MemberId = familyMember.Id, BenefitPeriodStartDate = getEffectiveFrom(), BenefitPeriodEndDate = getEffectiveTo(), IsActive=true));
        coverageBenefitsToInsert.add(new CoverageBenefit(Name = 'Pieter CB2', MemberPlanId = memberPlansToInsert[1].Id, MemberId = familyMember.Id, BenefitPeriodStartDate = getEffectiveFrom(), BenefitPeriodEndDate = getEffectiveTo(), IsActive=true));
        coverageBenefitsToInsert.add(new CoverageBenefit(Name = 'Pieter CB3', MemberPlanId = memberPlansToInsert[2].Id, MemberId = familyMember.Id, BenefitPeriodStartDate = getEffectiveFrom(), BenefitPeriodEndDate = getEffectiveTo(), IsActive=true));
        coverageBenefitsToInsert.add(new CoverageBenefit(Name = 'Pieter CB4', MemberPlanId = memberPlansToInsert[1].Id, MemberId = familyMember.Id, BenefitPeriodStartDate = getEffectiveFrom(), BenefitPeriodEndDate = getEffectiveTo(), IsActive=true));
        insert coverageBenefitsToInsert;

        // Create Coverage Benefit Items
        coverageBenefitItemsToInsert.add(new CoverageBenefitItem(Name = 'Pieter CBI1', CoverageBenefitId = coverageBenefitsToInsert[0].Id, CodeSetServiceTypeId = codeSet.Id, MemberId=familyMember.Id, IsInPlanNetwork=true));
        coverageBenefitItemsToInsert.add(new CoverageBenefitItem(Name = 'Pieter CBI2', CoverageBenefitId = coverageBenefitsToInsert[0].Id, CodeSetServiceTypeId = codeSet.Id, MemberId=familyMember.Id, IsInPlanNetwork=true));
        coverageBenefitItemsToInsert.add(new CoverageBenefitItem(Name = 'Pieter CBI3', CoverageBenefitId = coverageBenefitsToInsert[2].Id, CodeSetServiceTypeId = codeSet.Id, MemberId=familyMember.Id, IsInPlanNetwork=true));
        coverageBenefitItemsToInsert.add(new CoverageBenefitItem(Name = 'Pieter CBI4', CoverageBenefitId = coverageBenefitsToInsert[1].Id, CodeSetServiceTypeId = codeSet.Id, MemberId=familyMember.Id));
        insert coverageBenefitItemsToInsert;

        // Create Coverage Benefit Item Limits
        coverageBenefitItemLimitsToInsert.add(new CoverageBenefitItemLimit(Name = 'Pieter CBI1', CoverageBenefitItemId = coverageBenefitItemsToInsert[0].Id, AllowedLimit = '2', AppliedLimit = '0'));
        coverageBenefitItemLimitsToInsert.add(new CoverageBenefitItemLimit(Name = 'Pieter CBIL2', CoverageBenefitItemId = coverageBenefitItemsToInsert[1].Id, AllowedLimit = '10', AppliedLimit = '0'));
        coverageBenefitItemLimitsToInsert.add(new CoverageBenefitItemLimit(Name = 'Pieter CBI3', CoverageBenefitItemId = coverageBenefitItemsToInsert[2].Id, AllowedLimit = '10', AppliedLimit = '0'));
        coverageBenefitItemLimitsToInsert.add(new CoverageBenefitItemLimit(Name = 'Pieter CBI4', CoverageBenefitItemId = coverageBenefitItemsToInsert[3].Id, AllowedLimit = '4', AppliedLimit = '0'));
        insert coverageBenefitItemLimitsToInsert;

    }

    private Date getEffectiveFrom() {
        return Date.today().addYears(-1);
    }

    private Date getEffectiveTo() {
        return Date.today().addYears(1);
    }

}
CRDSampleData cRDSampleData = new CRDSampleData();
cRDSampleData.createData();