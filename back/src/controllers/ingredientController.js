const { Ingredient } = require('../models')

const ingredientController = {
    async findAll (req, res) {
        try {
            const ingredients = await Ingredient.findAll();
            return res.json(ingredients);
        } catch (error) {
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async findOne (req, res) {
        try {
            const ingredientId = req.params.id;
            const ingredient = await Ingredient.findByPk(ingredientId);
            if(!ingredient){
                return res.status(404).json({error : "ingredient not found."})
            };
            return res.json(ingredient);
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async deleteOne (req, res) {
        try{
            const ingredientId = req.params.id;
            const selectedingredient = await Ingredient.findByPk(ingredientId);
            if(!selectedingredient){
                return res.status(404).json({error : "ingredient not found."})
            };
            const deletedingredient = await selectedingredient.destroy();
            return res.status(204).end();
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    }
}

module.exports = ingredientController