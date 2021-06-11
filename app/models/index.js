const Article = require ('./article');
const Categorie = require ('./categorie');


// 11 : hasOne, belongsTo 
// 1N : belongsTo, hasMany 
// NN : belongsToMany x 2

Categorie.hasMany(Article, {
    as: 'articles',
    through: 'categorie_has_article',
    foreignKey: 'categorie_id',
    otheryKey: 'article_id',
});

Article.belongsto(Categorie, {
    as: 'categorie',
    foreignKey: 'categorie_id',
});

module.exports = {Categorie, Article};