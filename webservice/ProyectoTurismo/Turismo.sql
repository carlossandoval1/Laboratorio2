CREATE DATABASE `Turismo`;
USE Turismo;


CREATE TABLE `Rol` (
	`idRol` INT(10) NOT NULL AUTO_INCREMENT,
	`nombre` VARCHAR(50) NOT NULL,
	`descripcion` VARCHAR(50) NOT NULL,
	PRIMARY KEY(`idRol`)
	
);

CREATE TABLE  `Usuario` (
	`idUsuario` INT(10) NOT NULL AUTO_INCREMENT,
	`idRol` INT(10) NOT NULL,
	`nombre` VARCHAR (50) NOT NULL,
	`correo` VARCHAR (50) NOT NULL,
	`contrasena` VARCHAR(110) NOT NULL,
	PRIMARY KEY(`idUsuario`),
	FOREIGN KEY(`idRol`) REFERENCES Rol(`idRol`)

);

CREATE TABLE `Departamento` ( 
	`idDepartamento` INT(10) NOT NULL AUTO_INCREMENT,
	`nombre` VARCHAR (50) NOT NULL,
	PRIMARY KEY(`idDepartamento`)

);

CREATE TABLE `Lugar` (
	`idLugar` INT(10) NOT NULL AUTO_INCREMENT,
	`nombre` VARCHAR(50) NOT NULL,
	`idDepartamento` INT(10) NOT NULL,
	PRIMARY KEY(`idLugar`),
	FOREIGN KEY(`idDepartamento`) REFERENCES Departamento(`idDepartamento`)
	
);

CREATE TABLE `Categoria` (
	`idCategoria` INT(10) NOT NULL AUTO_INCREMENT,
	`idLugar` INT(10) NOT NULL,
	`nombre` VARCHAR(50) NOT NULL,
	PRIMARY KEY(`idCategoria`),
	FOREIGN KEY(`idLugar`) REFERENCES Lugar(`idLugar`)
	
);

