const  Categorie = require ('../models/categorie');

const categorieController = {
    getAllCategories: async (req, res) => {
        try {
            const categories = await Categorie.findAll ({
                include: {
                    association: 'articles'
                },
                order: [
                    ['position', 'ASC'],
                    ['cards', 'position', 'ASC'],
                ],
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
                include: {
                    association: 'article'
                },
                order: [['position', 'ASC']],
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
