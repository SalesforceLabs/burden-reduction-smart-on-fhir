class utils {

    static sleep(milliseconds) {
        return new Promise(resolve => setTimeout(resolve, milliseconds));
    }

    static makeSoslQuery(input){
        const queryString = input.queryString;
        const entityName = input.entityName;
        const fieldsList = input.fields.toString();
        const condition = input.condition;

        if(condition !== undefined){
            return  `FIND {${queryString}*} IN ALL FIELDS RETURNING ${entityName} (${fieldsList} ${condition})`;
        } else {
            return `FIND {${queryString}*} IN ALL FIELDS RETURNING ${entityName} (${fieldsList})`;
        }
    }
}

module.exports = utils;