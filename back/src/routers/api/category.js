const express = require('express');
const categoryController = require('../../controllers/categoryController');

const router = new express.Router()

router.get('/category',categoryController.findAll);
router.get('/category/:id', categoryController.findOne);
router.delete('/category/:id', categoryController.deleteOne)

module.exports = router