const express = require('express')
const path = require('path')
const app = express()
const mysql = require('mysql2')
require('dotenv').config()

const PORT = process.env.PORT || 3000

const envvarLookups = [
    'DATABASE_URL'
]

for (const neededEnvvar of envvarLookups) {
    if (!process.env[neededEnvvar]) {
        console.log(`${neededEnvvar} must be set`)
        process.exit(1)
    }
}

const connection = mysql.createConnection(process.env.DATABASE_URL)


connection.connect((err) => {
    if (err !== null) {
        console.error(err)
        process.exit(1)
    }
})

app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname, '/index.html'))
})

app.listen(PORT, () => console.info(`Application started running on port: ${PORT}`))
