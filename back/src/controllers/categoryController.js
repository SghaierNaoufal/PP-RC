const { Category } = require('../models')

const categoryController = {
    async findAll (req, res) {
        try {
            const categories = await Category.findAll();
            return res.json(categories);
        } catch (error) {
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async findOne (req, res) {
        try {
            const categoryId = req.params.id;
            const category = await Category.findByPk(categoryId);
            if(!category){
                return res.status(404).json({error : "category not found."})
            };
            return res.json(category);
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async deleteOne (req, res) {
        try{
            const categoryId = req.params.id;
            const selectedcategory = await Category.findByPk(categoryId);
            if(!selectedcategory){
                return res.status(404).json({error : "category not found."})
            };
            const deletedcategory = await selectedcategory.destroy();
            return res.status(204).end();
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    }
}

module.exports = categoryController