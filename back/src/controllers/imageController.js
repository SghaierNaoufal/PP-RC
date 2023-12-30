const { Image } = require('../models')

const imageController = {
    async findAll (req, res) {
        try {
            const images = await Image.findAll();
            return res.json(images);
        } catch (error) {
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async findOne (req, res) {
        try {
            const imageId = req.params.id;
            const image = await Image.findByPk(imageId);
            if(!image){
                return res.status(404).json({error : "Image not found."})
            };
            return res.json(image);
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async deleteOne (req, res) {
        try{
            const imageId = req.params.id;
            const selectedImage = await Image.findByPk(imageId);
            if(!selectedImage){
                return res.status(404).json({error : "Image not found."})
            };
            const deletedImage = await selectedImage.destroy();
            return res.status(204).end();
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    }
}

module.exports = imageController