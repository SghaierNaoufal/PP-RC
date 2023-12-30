const { DataTypes, Model } = require("sequelize");
const sequelize = require("./sequelize");

class Image extends Model {}

Image.init({
    source : DataTypes.TEXT
},{
    sequelize,
    tableName : 'image'
});

module.exports = Image