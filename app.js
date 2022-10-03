const express = require('express')
const path = require('path')
const app = express()
const mysql = require('mysql2')
require('dotenv').config()

const PORT = process.env.PORT || 3000

const envvarLoopups = [
    'DATABASE_HOST',
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

const connection = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USERNAME,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_DATABASE
})

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
