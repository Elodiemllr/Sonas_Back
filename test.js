require('dotenv').config();

const {Article, Categorie} = require('./app/models');

Article.findAll().then(console.log);


Categorie.findByPk(1, {
    include: ['articles']
}).then(categorie => console.log(categorie.articles[0]));