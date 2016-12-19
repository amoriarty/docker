var http = require("http");
var express = require("express");
var app = express();
var mongodb = require("mongodb").MongoClient;

var url = 'mongodb://db:27017/app'

mongodb.connect(url, function(err, db) {
	if (err) console.log("Error ", err);
	else {
		console.log("MongoDB is connecting !");
  		db.close();
	}		
});

app.get('/', function (req, res) {
	res.end("Hello World");
});

http.createServer(app).listen(80, function (){
	console.log("Server listing");
});
