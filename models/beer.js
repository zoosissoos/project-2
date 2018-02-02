var orm = require("../config/orm.js");

var beer = {
  selectAll: function(cb) {
    orm.all("beers", function(res) {
      cb(res);
    });
  },

  selectAllIngredients: function(cb) {
    orm.all("ingredients", function(res) {
      cb(res);
    });
  },

  selectOneBeer: function(id, cb) {
    orm.oneRecipe(id, function(res) {
      cb(res);
    });
  }, 
  
  selectAllStyle: function(cb) {
    orm.all("recipe_style", function(res) {
      cb(res);
    });
  },  

  selectAllUsers: function(cb) {
    orm.all("user_info", function(res) {
      cb(res);
    });
  },
  selectOneUser: function(userName, cb) {
    orm.oneUser(userName, function(res) {
      cb(res);
    });
  },
  oneUserAllRecipes: function(userId, cb) {
    orm.oneUserAllRecipes(userId, function(res) {
      cb(res);
    });
  },
  // The variables cols and vals are arrays.
  insertOne: function(cols, vals, cb) {
    orm.create("recipe_ingredients", cols, vals, function(res) {
      cb(res);
    });
  },
  
  //used for updating upvotes
  updateOne: function(objColVals, condition, cb) {
    orm.update("recipe", objColVals, condition, function(res) {
      cb(res);
    });
  },

  deleteOne: function(conditionVal, cb){
    orm.delete('beers', 'recipeId', conditionVal, function(res){
      cb(res);
    });
  },
  // The variables cols and vals are arrays.
  getAllBeers: function(vals, cb) {
    orm.callSP("getAllRecipes", vals, function(res) {
      cb(res);
    });
  },

  // The variables cols and vals are arrays.
  callInsertSP: function(vals, cb) {
    orm.callInsertSP("insertRecipe", vals, function(res) {
      cb(res);
    });
  }    
};


  
// Export 
module.exports = beer;