var http = require('http');
var express = require('express');
var mongoose = require('mongoose');
var app = express();

app.get('/', (req, res) => {
    res.end("Hello World");
});

mongoose.connect("mongodb://app:app@mongo:27017/app", (err) => {
    if (err) console.error('Error while connected mongodb', err);
    else console.log('MongoDB connected');
});

http.createServer(app).listen(80, () => {
    console.log("Server listening");
});