const Joi = require('joi');

const createImageSchema = Joi.object({
    source : Joi.string()
        .min(3)
        .max(1924)
        .required(),
    recipe_id : Joi.number()
        .integer()
        .min(1)
        .required()
})