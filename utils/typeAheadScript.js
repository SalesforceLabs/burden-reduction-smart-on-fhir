async function  fetchData(input) {

    const query = input.query;
    const elementSourceMethod = input.elementSourceMethod;
    const entityName = input.entityName;
    const fields = input.fields;
    const condition = input.condition;
    const isSosl = input.isSosl;

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
            fields: fields,
            condition: condition,
            isSosl: isSosl
        })
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            const records = (isSosl == true ? data.data.searchRecords : data.data.records); 
            records.forEach(record => {
                output.push(record);
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
