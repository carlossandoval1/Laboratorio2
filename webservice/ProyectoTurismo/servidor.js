(function(){
	var express=require('express');
	var morgan=require('morgan');
	var mysql=require('mysql');
	var bodyParser=require('body-parser');
	var puerto=3010;
	var conf=require('./config');
	var modelo=require('./models');

	var app=express();

app.use(bodyParser.urlencoded({
		extended:false
	}));
	app.use(bodyParser.json());
	app.use(morgan('dev'));
	app.use('/api/v1',require('./rutas')(modelo));
	
	modelo.sequelize.sync().then(function(){
		app.listen(puerto,function(){
			console.log("Servidor iniciado en el puerto: "+puerto);
		});
	});
})();