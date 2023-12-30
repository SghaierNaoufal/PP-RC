const { Recipe } = require('../models')


const recipeController = {
    async findAll (req, res) {
        try {
            const categories = await Recipe.findAll();
            return res.json(categories);
        } catch (error) {
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async findOne (req, res) {
        try {
            const recipeId = req.params.id;
            const recipe = await Recipe.findByPk(recipeId);
            if(!recipe){
                return res.status(404).json({error : "recipe not found."})
            };
            return res.json(recipe);
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async deleteOne (req, res) {
        try{
            const recipeId = req.params.id;
            const selectedrecipe = await Recipe.findByPk(recipeId);
            if(!selectedrecipe){
                return res.status(404).json({error : "recipe not found."})
            };
            const deletedrecipe = await selectedrecipe.destroy();
            return res.status(204).end();
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    }
}

module.exports = recipeController