const express = require("express");
const bodyParser = require("body-parser");
require('dotenv').config();

const { display_map, commit_address } = require("./controller/controller");

const app = express();

// middleware
app.use(bodyParser.json());
app.use("/static", express.static("public"))

// routes
app.get("/", display_map);
app.post("/add_address", commit_address);

// create the server
app.listen(process.env.PORT, function() {
    console.log("Listening on Port: " + process.env.PORT);
});