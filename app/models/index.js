const Article = require ('./article');
const Categorie = require ('./categorie');


// 11 : hasOne, belongsTo 
// 1N : belongsTo, hasMany 
// NN : belongsToMany x 2

Categorie.hasMany(Article, {
    as: 'articles',
    foreignKey: 'categorie_id',
});

Article.belongsTo(Categorie, {
    as: 'categorie',
    foreignKey: 'categorie_id',
});

module.exports = {Categorie, Article};