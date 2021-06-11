const { DataTypes, Model } = require('sequelize');
const sequelize = require('../database');

class Article extends Model {};

Article.init({
    title : DataTypes.TEXT,
    color1 : DataTypes.TEXT,
    color2 : DataTypes.TEXT,
    image1 : DataTypes.TEXT,
    image2 : DataTypes.TEXT,
    image3 : DataTypes.TEXT,
    image4 : DataTypes.TEXT,
    image5 : DataTypes.TEXT,
    reference : DataTypes.TEXT,
    description :  DataTypes.TEXT,
    detail :  DataTypes.TEXT, 
}, {
    sequelize,
    tableName: "article"
});

module.exports = Article;