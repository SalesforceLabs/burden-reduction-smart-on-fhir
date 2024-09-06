const fs = require('fs');
const InitializeApp = require('./InitilalizeApp');

class FileUpdater {
    static async updateFile(filePath, updates) {
        try {
            // Read the existing file data
            console.log(filePath);
            const data = await fs.promises.readFile(filePath, 'utf8');

            // Parse the data as JSON
            let jsonData = JSON.parse(data);

            // Update the JSON data with the values from the updates object
            for (const key in updates) {
                if (updates.hasOwnProperty(key) && jsonData.hasOwnProperty(key)) {
                    jsonData[key] = updates[key];
                }
            }

            // Write the updated data back to the file
            await fs.promises.writeFile(filePath, JSON.stringify(jsonData, null, 2), 'utf8');
            
            console.log('File has been updated successfully');
        } catch (error) {
            console.error('Error updating file:', error);
            throw error;
        }
    }

    static async isConfigured(filePath, keys){
        try {
            // Read the existing file data
            //console.log(filePath);
            const data = fs.readFileSync(filePath, 'utf8');

            // Parse the data as JSON
            let jsonData = JSON.parse(data);

            // Update the JSON data with the values from the updates object
            for (const key of keys) {
                if (jsonData.hasOwnProperty(key) && jsonData[key] == null) {
                    return false;
                }
            }

            if(keys.includes('accessToken') && keys.includes('instanceUrl')) {
                const isActive = await InitializeApp.isAccessTokenActive({accessToken:jsonData.accessToken, instanceUrl:jsonData.instanceUrl});
                if(!isActive) return false;
            }

            return true;
        } catch (error) {
            console.error('Error reading file:', error);
            throw error;
        }
    }

    static getFile(filePath, keys){
        try {
            // Read the existing file data
            const data = fs.readFileSync(filePath, 'utf8');

            // Parse the data as JSON
            let jsonData = JSON.parse(data);
            let output = {};

            // Update the JSON data with the values from the updates object
            for (const key of keys) {
                if (jsonData.hasOwnProperty(key)) {
                    output[key] = jsonData[key];
                }
            }

            return output;
        } catch (error) {
            console.error('Error reading file:', error);
            throw error;
        }
    }

    static getFile(filePath){
        try {
            // Read the existing file data
            const data = fs.readFileSync(filePath, 'utf8');
            // Parse the data as JSON
            return JSON.parse(data);
        } catch (error) {
            console.error('Error reading file:', error);
            throw error;
        }
    }
}

module.exports = FileUpdater;