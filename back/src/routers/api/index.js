const express = require('express');
const categoryRouter = require('./category');
const imageRouter = require('./image');
const ingredientRouter = require('./ingredient');
const preparationRouter = require('./preparation');
const recipeRouter = require('./recipe');
const reviewRouter = require('./review');

const router = new express.Router;

router.use('/category', categoryRouter);
router.use('/image', imageRouter);
router.use('/ingredient', ingredientRouter);
router.use('/preparation', preparationRouter);
router.use('/recipe', recipeRouter);
router.use('/review', reviewRouter);

module.exports = router