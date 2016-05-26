DELIMITER $$

USE `db_agenda`$$

DROP PROCEDURE IF EXISTS `sp_registroUsuario`$$

CREATE DEFINER= `root`@`localhost` PROCEDURE `sp_registroUsuario` (IN _nombre VARCHAR(100),IN _usuario VARCHAR(50),IN _correo VARCHAR(50),IN _password VARCHAR(255))
BEGIN	
	INSERT INTO usuario VALUES(NULL,_nombre,_usuario,_correo,MD5(_password));
END$$

DELIMITER ;