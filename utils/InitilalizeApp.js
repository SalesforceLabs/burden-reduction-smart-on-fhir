const fs = require('fs');
const path = require('path');

const configFilePaths = [
    path.join(__dirname, '../config/payerConfig.json'),
    path.join(__dirname, '../config/providerConfig.json')
];

class InitializeApp {
    static async clearConfigs() {
        configFilePaths.forEach(async(filePath) => {
            try {
                console.log(filePath);
                const data =  await fs.promises.readFile(filePath, 'utf8');

                let jsonData = JSON.parse(data);

                for (const key in jsonData) {
                    jsonData[key] = null;
                }
                await fs.promises.writeFile(filePath, JSON.stringify(jsonData, null, 2), 'utf8');
                
                console.log('File has been cleaned successfully');
            } catch (error) {
                console.error('Error cleaning file:', error);
                throw error;
            }
        })
    }
}

module.exports = InitializeApp;