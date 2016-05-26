DELIMITER $$
USE `db_agenda`$$

DROP PROCEDURE IF EXISTS `loginUsuario`$$

CREATE DEFINER= `root`@`localhost` PROCEDURE `loginUsuario`(IN _usuario VARCHAR(50),IN _password VARCHAR(255))
   BEGIN
	SELECT usuario,nombre,correo FROM usuario WHERE usuario.`usuario`=_usuario AND usuario.`password`=MD5(_password);
    END$$

DELIMITER ;