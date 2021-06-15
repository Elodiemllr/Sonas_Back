const {Categorie, Article} = require ('../models');

const articleController = {

    getArticlesInCategorie: async (req, res) => {
        try {
            const categorieId = req.params.id;
            const articles = await Article.findAll(
                { 
                    where: {
                        categorie_id: categorieId
                    },
                    order: [
                        ['position', 'ASC']
                    ]
                });
                if(!articles) {
                    res.status(404).json('Cant find articles with categorie_id' + categorieId);
                } else {
                    res.json(articles);
                }
        } catch (error) {
            console.trace(error);
            res.status(500).json(error);
        }
    },

    getOneArticle: async (req, res) => {
        try {
            const articleId = req.params.id;
            const article = await Article.findByPk(articleId, {
                order: [
                    ['position', 'ASC']
                ]
            });
            if (!article) {
                res.status(404).json ('Cant find article with id' + articleId);
            } else {
                res.json(article);
            }
        } catch (error) {
            res.status(500).json(error);
        }
    }
};