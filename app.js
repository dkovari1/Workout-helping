const express = require('express')
const path = require('path')
const app = express()


const port = process.env.PORT || 3000

const envvarLoopups = [
    'DATABASE_URL',
    'DATABASE_PASSWORD',
    'DATABASE_USERNAME',
    'DATABASE_DATABASE',
]

for (const neededEnvvar of envvarLoopups) {
    if (!process.env[neededEnvvar]) {
        console.log(`${neededEnvvar} must be set`)
        process.exit(1)
    }
}

app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname, '/index.html'));
});

app.listen(port)