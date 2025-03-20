$(document).ready(function () {
    let formCount = 0;

    function createCoverageForm() {
        const formHTML = `
            <div class="form-container pb-3" id="coverage-form-${formCount}">
                <hr style="width: 30%; margin: 0 auto;">
                <div class="row mt-5"></div>

                <div class="row pb-2">
                    <div class="col">
                        <span>Identifier System</span>
                        <input class="form-control" type="text" id="identifier-system-${formCount}" name="identifierSystem" 
                            placeholder="Identifier System" readonly 
                            onchange="handleCoverageIdentifierSystemChange(${formCount})">
                    </div>
                    <div class="col">
                        <span>Identifier Value</span>
                        <input class="form-control" type="text" id="identifier-value-${formCount}" name="identifierValue" 
                            placeholder="Identifier Value" readonly 
                            onchange="handleCoverageIdentifierValueChange(${formCount})">
                    </div>
                </div>

                <div class="row pb-2">
                    <div class="col">
                        <span>Subscriber Reference</span>
                        <input class="form-control" type="text" id="subscriber-${formCount}" name="subscriber" 
                            placeholder="Subscriber Reference" readonly 
                            onchange="handleCoverageSubscriberReferenceChange(${formCount})">
                    </div>
                    <div class="col">
                        <span>Beneficiary Reference</span>
                        <input class="form-control" type="text" id="beneficiary-${formCount}" name="beneficiary" 
                            placeholder="Beneficiary Reference" readonly 
                            onchange="handleCoverageBeneficiaryReferenceChange(${formCount})">
                    </div>
                </div>

                <div class="row pb-2">
                    <div class="col">
                        <span>Period Start</span>
                        <input class="form-control" type="date" id="period-start-${formCount}" name="periodStart" 
                            onchange="handleCoveragePeriodStartChange(${formCount})">
                    </div>
                    <div class="col">
                        <span>Period End</span>
                        <input class="form-control" type="date" id="period-end-${formCount}" name="periodEnd" 
                            onchange="handleCoveragePeriodEndChange(${formCount})">
                    </div>
                </div>
            </div>
        `;
        return formHTML;
    }

    // Add the first form div by default
    $('#dynamicCoverageForms').append(createCoverageForm());

    // Handle "Add" button click
    $('#addCoverageItem').on('click', function () {
        formCount++;
        $('#dynamicCoverageForms').append(createCoverageForm());
    });

    // Handle remove form button
    $('#dynamicCoverageForms').on('click', '.removeCoverageForm', function () {
        const formId = $(this).data('id');
        if ($('#dynamicCoverageForms .form-container').length > 1) {
            $(`#${formId}`).remove();
        } else {
            alert('At least one form must remain.');
        }
    });
});