/* jshint indent: 1 */

module.exports = function(sequelize, DataTypes) {
	return sequelize.define('lugar', {
		idLugar: {
			type: DataTypes.INTEGER(10),
			allowNull: false,
			primaryKey: true,
			autoIncrement: true
		},
		nombre: {
			type: DataTypes.STRING,
			allowNull: true
		},
		idDepartamento: {
			type: DataTypes.INTEGER(10),
			allowNull: true,
			references: {
				model: 'departamento',
				key: 'idDepartamento'
			}
		}
	}, {
		tableName: 'lugar',
		timestamps:false
	});
};
