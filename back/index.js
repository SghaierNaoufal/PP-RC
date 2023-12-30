require('dotenv').config();
const express = require('express');
const router = require('./src/routers');

const app = express()

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(router)

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Server listening at http://localhost:${PORT}`)
});