// create a connection
const mysql = require("mysql");

require('dotenv').config();

// pool connection
const connection = mysql.createPool({
    connectionLimit:40,
    host:process.env.HOST,
    user:process.env.DB_USER,
    password:process.env.DB_PASSWORD,
    database:process.env.DB_NAME
});


module.exports = connection;