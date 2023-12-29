const { Datatypes, Model } = require("sequelize");
const sequelize = require("./sequelize");

class Category extends Model {}

Category.init({
    name : Datatypes.TEXT
}, {
    sequelize,
    tableName :'category'
});

module.exports = Category;