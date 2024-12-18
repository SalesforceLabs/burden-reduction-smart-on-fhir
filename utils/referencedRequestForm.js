$(document).ready(function () {
    let formCount = 0;

    function createFormDiv() {
        formCount++;
        const isDefaultRequester = formCount === 1 ? 'selected' : ''; // Default "Requester" for the first form
        const isDefaultChoose = formCount === 1 ? '' : 'selected'; // Default "Choose..." for others
        
        const formHTML = `
            <div class="form-container pb-3" id="form-referencedRequest-${formCount}">
                <hr style="width: 30%; margin: 0 auto;">
                <div class="row pb-1">
                    <div class="col">
                        <div class="btn-right-align">
                            <button id="remove-btn-referencedRequest-${formCount}" data-id="form-referencedRequest-${formCount}" class="removeForm btn btn-danger btn-sm" type="button" title="Click to remove this form" ${formCount === 1 ? 'disabled' : ''}>
                                <i class="fas fa-trash btn-icon"></i>
                                Remove
                            </button>
                        </div>
                    </div>
                </div>
                
                <div class="row pb-2">
                    <div class="col">
                        <span>Resource Type</span>
                        <select class="form-control" name="resourceType" id="resource-type-referencedRequest-${formCount}" onchange="handleReferencedResourceType(${formCount})" required ${formCount === 1 ? 'disabled' : ''}>
                            <option value="" ${isDefaultChoose}>Choose...</option>
                            <option value="requester" ${isDefaultRequester}>Requester</option>
                            <option value="Patient">Patient</option>
                            <option value="performer">Performer</option>
                        </select>
                    </div>
                    <div class="col">
                        <span>Identifier Code</span>
                        <input class="form-control" type="text" id="identifier-code-referencedRequest-${formCount}" name="identifierCode" onchange="handleIdentifierCode(${formCount})" required>
                    </div>
                    <div class="col">
                        <span>Identifier System</span>
                        <input class="form-control" type="text" id="identifier-system-referencedRequest-${formCount}" name="identifierSystem" onchange="handleIdentifierSystem(${formCount})" required>
                    </div>
                </div>
            </div>
        `;
        return formHTML;
    }

    // Add the first form div by default
    $('#dynamicReferenceForms').append(createFormDiv());

    // Handle "Add" button click
    $('#addReferenedItem').on('click', function () {
        $('#dynamicReferenceForms').append(createFormDiv());
    });

    // Handle remove form button
    $('#dynamicReferenceForms').on('click', '.removeForm', function () {
        const formId = $(this).data('id');
        if ($('#dynamicReferenceForms .form-container').length > 1) {
            $(`#${formId}`).remove();
            delete referencedForms[formId];
        } else {
            alert('At least one form must remain.');
        }
    });
});