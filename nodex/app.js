
const fs = require('fs');

fs.readFile("cust.json",function(err,data){
    if(err) throw err;
    const users = JSON.parse(data);
    console.log(users);

});

const users = require("./Customer.json");
console.log(users);

let user=[
    { 
        "name": "ananta",
        "age": "15",
        "country": "Atlanta"
    }
];


user.push({"name": "Tony","age":78});

fs.writeFile ('./Customer.json',JSON.stringify(user,null,2),err=>{
    if(err){
        console.log(err);
    }else{
        console.log('File success written');
    }
});

//routing feature
var http = require('http');

// Create a server object
http.createServer(function (req, res) {

    // http header
    res.writeHead(200, { 'Content-Type': 'text/html' });

    var url = req.url;

    if (url === '/about') {
        res.write(' Welcome to the about us page. This is Rohit here,the Founder and CEO of royalaviation');
        res.end();
    }
    else if (url === '/contact') {
        res.write('Thank you for showing interest in us. For contacting us drop a mail at rohitp2203@gmail.com, or leave a text at 6355380271');
        res.end();
    }
    else {
        res.write('Hello World!. Welcome to Royalaviation. A Flight Booking Web Application. We offer discounts for our soldiers and their families');
        res.end();
    }
}).listen(3000, function () {

    // The server object listens on port 3000
    console.log("Server started at port 3000");
});