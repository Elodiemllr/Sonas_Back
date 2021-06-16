const  Categorie = require ('../models/categorie');

const categorieController = {
    getAllCategories: async (req, res) => {
        try {
            const categories = await Categorie.findAll ({
              
            });
            res.json(categories);
        } catch (error) {
            console.trace(error);
            res.status(500).json(error.toString());
        }
    },

    getOneCategorie: async (req, res) => {
        try {
            const categorieId = req.params.id;
            const categorie = await Categorie.findByPk( categorieId, {
               
            });
            if (categorie) {
                res.json(categorie);
            } else {
               res.status(404).json('Can\'t find categorie with id' + categorieId);
            }
            } catch (error) {
                console.trace(error);
                res.status(500).json(error.toString());
            }
        }
    }

    module.exports = categorieController;