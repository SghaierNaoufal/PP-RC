const express = require('express');
const ingredientController = require('../../controllers/ingredientController');

const router = new express.Router()

router.get('/ingredient',ingredientController.findAll);
router.get('/ingredient/:id', ingredientController.findOne);
router.delete('/ingredient/:id', ingredientController.deleteOne)

module.exports = router
