const express = require('express');
const reviewController = require('../../controllers/reviewController');

const router = new express.Router()

router.get('/review',reviewController.findAll);
router.get('/review/:id', reviewController.findOne);
router.delete('/review/:id', reviewController.deleteOne)

module.exports = router