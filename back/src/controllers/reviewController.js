const { Review } = require('../models')

const reviewController = {
    async findAll (req, res) {
        try {
            const reviews = await Review.findAll();
            return res.json(reviews);
        } catch (error) {
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async findOne (req, res) {
        try {
            const reviewId = req.params.id;
            const review = await Review.findByPk(reviewId);
            if(!review){
                return res.status(404).json({error : "review not found."})
            };
            return res.json(review);
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    },

    async deleteOne (req, res) {
        try{
            const reviewId = req.params.id;
            const selectedreview = await Review.findByPk(reviewId);
            if(!selectedreview){
                return res.status(404).json({error : "review not found."})
            };
            const deletedreview = await selectedreview.destroy();
            return res.status(204).end();
        } catch (error){
            console.log(error);
            return res.status(500).json({error : "Internal server error"});
        }
    }
}

module.exports = reviewController