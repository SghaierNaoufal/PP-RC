const {DataTypes, Model} = require('sequelize');
const sequelize = require('./sequelize')

class Recipe extends Model {}

Recipe.init({
    name : DataTypes.TEXT,
    description : DataTypes.TEXT,
    difficulty : DataTypes.TEXT,
    preparation_time : DataTypes.TEXT,
    cooking_time : DataTypes.TEXT,
    serving_number : DataTypes.INTEGER
}, {
    sequelize,
    tableName : 'recipe'
});

module.exports = Recipe