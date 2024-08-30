const fs = require('fs');

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
}

module.exports = FileUpdater;