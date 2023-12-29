const { DataTypes, Model } = require('sequelize');
const sequelize = require('./sequelize');

class Ingredients extends Model {}

Ingredients.init({
    name : DataTypes.TEXT,
    quantity : DataTypes.INTEGER,
    unity_type : DataTypes.TEXT,
    recipe_id : DataTypes.INTEGER
},{
    sequelize,
    tableName : 'ingredient'
});

module.exports = Ingredients