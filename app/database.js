const { Sequelize } = require('sequelize');

const sequelize = new Sequelize(process.env.PG_URL, {
    define: {
        underscored: true, // faire correspondre automatiquement camelCase <-> snake_case
    
    }
});

module.exports = sequelize;