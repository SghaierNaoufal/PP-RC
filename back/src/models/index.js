const Category = require('./category');
const Image = require('./image');
const Ingredients = require('./ingredient');
const Preparation = require('./preparation');
const Recipe = require('./recipe');
const Review = require('./review')

Category.hasMany(Recipe, {
    as : 'recipes',
    foreignKey : 'category_id'
});

Recipe.belongsTo(Category, {
    as : 'category',
    foreignKey : 'category_id'
});

Image.belongsTo(Recipe, {
    as : 'recipe',
    foreignKey : 'recipe_id'
});

Recipe.hasMany(Image, {
    as : 'images',
    foreignKey : 'recipe_id'
});

Ingredients.belongsTo(Recipe, {
    as : 'recipe',
    foreignKey : 'recipe_id'
});

Recipe.hasMany(Ingredients, {
    as : 'ingredients',
    foreignKey : 'recipe_id'
});

Preparation.belongsTo(Recipe, {
    as : 'recipe',
    foreignKey : 'recipe_id'
});

Recipe.hasMany(Preparation, {
    as : 'preparations',
    foreignKey : 'recipe_id'
});

Review.belongsTo(Recipe, {
    as : 'recipe',
    foreignKey : 'recipe_id'
});

Recipe.hasMany(Review, {
    as : 'reviews',
    foreignKey : 'recipe_id'
});
