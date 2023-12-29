const { Datatypes, Model } = require("sequelize");
const sequelize = require("./sequelize");

class Image extends Model {}

Image.init({
    source : Datatypes.TEXT
},{
    sequelize,
    tableName : 'image'
});

module.exports = Image