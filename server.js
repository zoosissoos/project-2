const express = require("express");
const bodyParser = require("body-parser");
const reciperoutes = require('./controllers/recipecontrol');
const userroutes = require('./controllers/usercontrol');
const session = require("express-session");

const app = express();
const port = process.env.PORT ||3000;

app.use(express.static("public"));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

const exphbs = require("express-handlebars");

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

const mysql = require("mysql");

app.use(express.static("public"));

// const connection = require('./config/connection');


app.use(reciperoutes);
app.use(userroutes);


app.listen(port, function() {
  console.log("listening on port", port);
});