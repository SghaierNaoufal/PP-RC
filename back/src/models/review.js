const {DataTypes, Model} = require('sequelize');
const sequelize = require('./sequelize')

class Review extends Model {}

Review.init({
    description : DataTypes.TEXT,
    grade : DataTypes.INTEGER,
    recipe_id : DataTypes.INTEGER
}, {
    sequelize,
    tableName : 'review'
});

module.exports = Review