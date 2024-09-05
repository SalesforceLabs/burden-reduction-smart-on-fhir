const fs = require('fs');
const path = require('path');
const axios = require('axios');

const configFilePaths = [
    path.join(__dirname, '../config/payerConfig.json'),
    path.join(__dirname, '../config/providerConfig.json')
];

class InitializeApp {

    static async initialize(){
        configFilePaths.forEach(async(filePath) => {
            try {
                const data =  await fs.promises.readFile(filePath, 'utf8');
                let jsonData = JSON.parse(data);

                if(jsonData.accessToken !=null && jsonData.instanceUrl !=null) {

                    const isActive = await InitializeApp.isAccessTokenActive({accessToken:jsonData.accessToken, instanceUrl:jsonData.instanceUrl});

                    if(!isActive){
                        for (const key in jsonData) {
                            jsonData[key] = null;
                        }
                        await fs.promises.writeFile(filePath, JSON.stringify(jsonData, null, 2), 'utf8');
                    } else {
                        console.log('Access Token is Active');
                    }
                    
                    
                } else{
                    for (const key in jsonData) {
                        jsonData[key] = null;
                    }
                    await fs.promises.writeFile(filePath, JSON.stringify(jsonData, null, 2), 'utf8');
                }
            } catch (error) {
                console.error('Error cleaning file:', error);
                throw error;
            }
        })
    }

    static async isAccessTokenActive(input){
       
        const accessToken = input.accessToken;
        const instanceUrl = input.instanceUrl;

        const apiUrl = path.join(instanceUrl, 'services/data/v62.0/sobjects/Account');

        try {
            const response = await axios.get(apiUrl, {
                headers: {
                    'Authorization': `Bearer ${accessToken}`,
                    'Content-Type': 'application/json'
                }
            });
            
            return response.status === 200;
        } catch (error) {
            console.error('Access Token Expired');
            false;
        }
    }


    static async clearConfigs() {
        configFilePaths.forEach(async(filePath) => {
            try {
                const data =  await fs.promises.readFile(filePath, 'utf8');

                let jsonData = JSON.parse(data);

                for (const key in jsonData) {
                    jsonData[key] = null;
                }
                await fs.promises.writeFile(filePath, JSON.stringify(jsonData, null, 2), 'utf8');
            } catch (error) {
                console.error('Error cleaning file:', error);
                throw error;
            }
        })
    }
}

module.exports = InitializeApp;