const systemActions =  [
    {
        "resource": {
            "resourceType": "MedicationRequest",
            "id": "smart-MedicationRequest-103",
            "entryInfo": {
                "status": "draft",
                "effectiveDosePeriod": {
                    "end": "2024-07-10",
                    "start": "2024-07-06"
                },
                "intent": "order",
                "medicationCodeableConcept": {
                    "text": "Amoxicillin 120 MG/ML / clavulanate potassium 8.58 MG/ML Oral Suspension",
                    "coding": [
                        {
                            "display": "Amoxicillin 120 MG/ML / clavulanate potassium 8.58 MG/ML Oral Suspension",
                            "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                            "code": "617993"
                        }
                    ]
                },
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Amoxicillin 120 MG/ML / clavulanate potassium 8.58 MG/ML Oral Suspension (rxnorm: 617993)</div>"
                },
                "meta": {
                    "lastUpdated": "2018-04-30T13:25:40.845-04:00"
                },
                "subject": {
                    "reference": "Patient/1288992"
                },
                "dispenseRequest": {
                    "quantity": {
                        "value": 6,
                        "system": "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
                        "code": "TAB",
                        "unit": "TAB"
                    }
                }
            },
            "extension": {
                "pa-needed": {
                    "url": "pa-needed",
                    "value": "Prior Authorization Needed"
                },
                "url": "http://hl7.org/fhir/us/davinci-crd/StructureDefinition/ext-coverage-information",
                "coverage-assertion-id": {
                    "url": "coverage-assertion-id",
                    "valueString": "1MLSB0000002yw94AA"
                },
                "covered": {
                    "url": "covered",
                    "value": "conditional"
                },
                "contact": {
                    "url": "contact",
                    "valueContactPoint": "003SB00000K1H4vYAF"
                },
                "doc-needed": {
                    "url": "doc-needed",
                    "value": "Clinical Documentation"
                },
                "satisfied-pa-id": {
                    "url": "satisfied-pa-id",
                    "valueString": "1MLSB0000002yw94AA"
                },
                "coverage": {
                    "url": "coverage",
                    "valueReference": {
                        "beneficiary": "sdsdfcsd",
                        "payor": "sxcsdc"
                    }
                },
                "date": {
                    "url": "date",
                    "valueDate": "2024-08-21"
                }
            }
        },
        "type": "update",
        "description": "Coverage Information details for smart-MedicationRequest-103"
    },
    {
        "resource": {
            "resourceType": "ServiceRequest",
            "id": "MRI-59879846",
            "entryInfo": {
                "status": "draft",
                "intent": "plan",
                "reasonCode": [
                    {
                        "coding": [
                            {
                                "display": "Sprain of anterior cruciate ligament of right knee",
                                "system": "http://hl7.org/fhir/sid/icd-10",
                                "code": "S83.511"
                            }
                        ]
                    }
                ],
                "occurrence": {
                    "occurrenceTiming": "<>",
                    "occurrenceDateTime": "2024-07-15",
                    "occurrencePeriod": {
                        "end": "2024-07-15",
                        "start": "2024-07-15"
                    }
                },
                "subject": {
                    "reference": "Patient/MRI-59879846"
                },
                "code": {
                    "text": "MRA Knee Vessels Right",
                    "coding": [
                        {
                            "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                            "code": "617994"
                        }
                    ]
                },
                "quantity": {
                    "value": 1
                }
            },
            "extension": {
                "pa-needed": {
                    "url": "pa-needed",
                    "value": "Prior Authorization Needed"
                },
                "url": "http://hl7.org/fhir/us/davinci-crd/StructureDefinition/ext-coverage-information",
                "coverage-assertion-id": {
                    "url": "coverage-assertion-id",
                    "valueString": "1MLSB0000002ywA4AQ"
                },
                "covered": {
                    "url": "covered",
                    "value": "covered"
                },
                "contact": {
                    "url": "contact",
                    "valueContactPoint": "003SB00000K1H4vYAF"
                },
                "doc-needed": {
                    "url": "doc-needed",
                    "value": "Clinical Documentation"
                },
                "satisfied-pa-id": {
                    "url": "satisfied-pa-id",
                    "valueString": "1MLSB0000002ywA4AQ"
                },
                "coverage": {
                    "url": "coverage",
                    "valueReference": {
                        "beneficiary": "sdsdfcsd",
                        "payor": "sxcsdc"
                    }
                },
                "date": {
                    "url": "date",
                    "valueDate": "2024-08-21"
                }
            }
        },
        "type": "update",
        "description": "Coverage Information details for MRI-59879846"
    }
];

module.exports = systemActions;