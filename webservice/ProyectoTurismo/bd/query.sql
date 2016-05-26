
CALL sp_registroUsuario('Jefrien','jeff','correo','123');

CALL loginUsuario('jeff','123');

SELECT * FROM usuario;
SELECT * FROM contacto;

INSERT INTO contacto VALUES(NULL,'Jefrien',23456789,98765543,'jeff@gmail.com','22Av guatemala');
UPDATE contacto SET nombre='Hola',telCasa=12345678,telMovil=12345678,email='hola@gmail.com',direccion='Hola Av' WHERE id=1;