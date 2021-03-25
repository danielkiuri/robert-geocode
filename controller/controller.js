const connection = require("../config/db");
const path = require("path");

// table instance
const recordTable = function(record) {
    this.id	= record.id;
    this.wikidata = record.wikidata;
    this.short_code	= record.short_code;
    this.text_en_US	= record.text_en_US;
    this.language_en_US	= record.language_en_US;
    this.text = record.text;
    this.language = record.language;						
}

exports.display_map = function(req, res) {
    console.log("Rendering file");
    res.sendFile(path.join(__dirname, "../public/index.html"))
}

exports.commit_address = function(req, res) {
    console.log(req.body);
    
    // post the content to the database
    let record = new recordTable(req.body);

    connection.query("INSERT INTO robert SET ?", record, function(err, result) {
        if(err) {
            res.status(500).send(err);

            return;
        } 

        res.status(200).send({message:"Successfully Commited"});
    });

}


// {
//     "id":"place.14018334812122320",
//     "text_en_US": "Florida",
//     "language_en_US": "en",
//     "place_name_en-US": "Miami, Florida, United States",
//     "wikidata": "Q8652",
//     "short_code": "US-FL",
//     "text": "Florida",
//     "language": "en"
// }