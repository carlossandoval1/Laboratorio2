/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('categoria', {
		idCategoria: {
			type: DataTypes.INTEGER(10),
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		nombre: {
			type: DataTypes.STRING,
			allowNull: true
		},
		idLugar: {
			type: DataTypes.INTEGER(10),
			allowNull: true,
			references: {
				model: 'lugar',
				key: 'idLugar'
			}
		}
	}, {
		tableName: 'contacto',
		timestamps:false
	});
};
