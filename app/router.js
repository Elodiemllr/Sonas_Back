//Require router from express
const { Router } = require('express');
const router = Router();

//import controllers
const articleController = require ('./controllers/articleController');
const categorieController = require('./controllers/categorieController');


router.get('/', (req, res) => {
    res.send('It\'s working');
});

// Article //
router.get('/categories/:id/articles', articleController.getArticlesInCategorie);
router.get ('/articles/:id', articleController.getOneArticle);

// Categorie //
router.get('/categories', categorieController.getAllCategories);
router.get('/categories/:id', categorieController.getOneCategorie);

router.use((req, res) => {
    res.status(404).send('Service does not exists\nSee : https://doc.localhost.api');
});


 module.exports = router;