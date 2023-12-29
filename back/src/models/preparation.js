const { DataTypes, Model, DATE } = require('sequelize');
const sequelize = require('./sequelize');

class Preparation extends Model {}

Preparation.init({
    description : DataTypes.TEXT,
    position : DataTypes.INTEGER,
    recipe_id : DataTypes.INTEGER
}, {
    sequelize,
    tableName : 'ingredient'
})

module.exports = Preparation