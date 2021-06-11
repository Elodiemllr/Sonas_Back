const { DataTypes, Model } = require('sequelize');
const sequelize = require('../database');

class Categorie extends Model {};

Categorie.init({
    name : DataTypes.TEXT,
}, {
    sequelize,
    tableName: "categorie"
});

module.exports = Categorie;