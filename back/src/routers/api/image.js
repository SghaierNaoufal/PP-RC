const express = require('express');
const imageController = require('../../controllers/imageController');

const router = new express.Router()

router.get('/image',imageController.findAll);
router.get('/image/:id', imageController.findOne);
router.delete('/image/:id', imageController.deleteOne)

module.exports = router