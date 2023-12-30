const express = require('express');
const preparationController = require('../../controllers/preparationController');

const router = new express.Router()

router.get('/preparation', preparationController.findAll);
router.get('/preparation/:id', preparationController.findOne);
router.delete('/preparation/:id', preparationController.deleteOne)

module.exports = router