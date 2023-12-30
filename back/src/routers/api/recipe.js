const express = require('express');
const recipeController = require('../../controllers/recipeController');

const router = new express.Router()

router.get('/recipe',recipeController.findAll);
router.get('/recipe/:id', recipeController.findOne);
router.delete('/recipe/:id', recipeController.deleteOne)

module.exports = router