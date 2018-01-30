const express = require("express");
const bodyParser = require("body-parser");
const routes = require('./controllers/beer_controller');
const session = require("express-session");

const app = express();
const port = 3000;

app.use(express.static("public"));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

const exphbs = require("express-handlebars");

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

const mysql = require("mysql");

app.use(express.static("public"));

// const connection = require('./config/connection');


app.use(routes)


app.listen(port, function() {
  console.log("listening on port", port);
});