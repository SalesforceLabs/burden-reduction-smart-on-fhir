$(document).ready(function () {
    let formCount = 0;
    function createFormDiv() {
        formCount++;
        const formHTML = 
            `<div class="form-container pb-3" id="form-${formCount}">
                <hr style="width: 30%; margin: 0 auto;">
                <div class="row pb-1">
                    <div class="col">
                        <div class="btn-right-align">
                            <button data-id="form-${formCount}"="removeForm-${formCount}" class=" removeForm btn btn-danger btn-sm" type="button" title="Click to remove this form">
                                <i class="fas fa-trash btn-icon"></i>
                                Remove
                            </button>
                        </div>
                    </div>
                    <div class="row pb-4">
                    <div class="col">
                        <span>RequestType</span>
                        <select class="form-control" name="requestType" id='request-type-select-${formCount}' onchange="handleRequestType(${formCount})" required>
                            <option selected>Choose...</option>
                            <option value="medication">Medication</option>
                            <option value="service">Service</option>
                        </select>
                    </div>
                    <div class="col">
                        <span>Service</span>
                        <select class="form-control" name="service" id='service-select-${formCount}' onchange="handleServiceRequest(${formCount})" disabled="disabled" required>
                            <option selected>Choose...</option>
                            <option value="617994">MRA Knee Vessels Right</option>
                            <option value="617995">MRA Knee Vessels Left</option>
                        </select>
                    </div>
                    <div class="col">
                        <span>Medication</span>
                        <select class="form-control" name="medication" id='medication-select-${formCount}' onchange="handleMedicationRequest(${formCount})" disabled="disabled" required>
                            <option selected>Choose...</option>
                            <option value="617993">Amoxicillin 120 MG/ML</option>
                            <option value="617999">Paracetmol 650MG</option>
                        </select>
                    </div>
                    </div>

                    <div class="row pb-2">
                    <div class="col">
                        <span>StartDate</span>
                        <input class="form-control" type="date" id='startDate-${formCount}' onchange="handleStartDate(${formCount})" disabled="disabled">
                    </div>
                    <div class="col">
                        <span>EndDate</span>
                        <input class="form-control" type="date" id='endDate-${formCount}' onchange="handleEndDate(${formCount})" disabled="disabled">            
                    </div>
                    <div class="col">
                        <span>Quantity</span>
                        <input class="form-control" type="text" id='quantity-${formCount}' name="quantity" oninput="handleQuantity(${formCount})" disabled="disabled">
                    </div>
                </div>
            </div>`;

return formHTML;
    }

    // Add the first form div by default
    $('#dynamicRequestForms').append(createFormDiv());

    // Handle "Add" button click
    $('#addForm').on('click', function () {
        $('#dynamicRequestForms').append(createFormDiv());
    });

    $('#dynamicRequestForms').on('click', `.removeForm`, function () {
        const formId = $(this).data('id');
        if ($('.form-container').length > 1) {
            $(`#${formId}`).remove();
            delete requestForms[formId];
        } else {
            alert('At least one form must remain.');
        }
    });
});