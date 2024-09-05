
async function  fetchData(input) {

    const query = input.query;
    const elementSourceMethod = input.elementSourceMethod;
    const entityName = input.entityName;
    const fields = input.fields;

    return new Promise((resolve) => {
        setTimeout(() => {
            const output = [];
    fetch(elementSourceMethod, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body : JSON.stringify({
            queryString : query,
            entityName: entityName,
            fields: fields
        })
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            const records = data.data.searchRecords;
            records.forEach(record => {
                output.push(record.Name);
            });
            resolve(output);
        } else {
            
        }
    })
    .catch(error => {
        console.error('Error:', error);
    });
        }, 1000); // Simulates a 1-second delay
    });
}
