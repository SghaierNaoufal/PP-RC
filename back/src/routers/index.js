const express = require('express');
const apiRouter = require('./api')

const router = new express.Router()

router.use('api', apiRouter);

router.use((req, res) => {
    res.status(404).json({ error: 'Not found' });
  });

  module.exports = router