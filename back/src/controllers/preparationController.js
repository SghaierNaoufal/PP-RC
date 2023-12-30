const { Preparation } = require('../models')

const preparationController = {
    async findAll (req, res) {
        try {
            const preparations = await Preparation.findAll();
            return res.json(preparations);
        } catch (error) {
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async findOne (req, res) {
        try {
            const preparationId = req.params.id;
            const preparation = await Preparation.findByPk(preparationId);
            if(!preparation){
                return res.status(404).json({error : "preparation not found."})
            };
            return res.json(preparation);
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async deleteOne (req, res) {
        try{
            const preparationId = req.params.id;
            const selectedpreparation = await Preparation.findByPk(preparationId);
            if(!selectedpreparation){
                return res.status(404).json({error : "preparation not found."})
            };
            const deletedpreparation = await selectedpreparation.destroy();
            return res.status(204).end();
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    }
}

module.exports = preparationController