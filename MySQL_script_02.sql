DROP DATABASE IF EXISTS discography_db;
CREATE DATABASE IF NOT EXISTS discography_db;
use discography_db;
CREATE TABLE IF NOT EXISTS personajes (
	idpersonaje INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255), -- Este campo por defecto puede ser nulo
    fecha_nacimiento DATE,
    residencia VARCHAR(255) DEFAULT 'EEUU' -- Por defecto el valor definido si no define otro es EEUU
);

INSERT INTO discography_db.personajes VALUES (NULL, 'Batman', NULL, '1999-01-01', 'Manhattan');
INSERT INTO discography_db.personajes(idpersonaje, nombre, apellidos, fecha_nacimiento, residencia) VALUES (NULL, 'Jocker', NULL,'2001-01-01','Gotham city');
INSERT INTO discography_db.personajes(nombre,apellidos,fecha_nacimiento) VALUES('Hulk', NULL, '2018-01-01');
INSERT INTO `discography_db`.`personajes` (`idpersonaje`, `nombre`, `fecha_nacimiento`, `residencia`) VALUES ('4', 'Iron Man', '2022-12-25', 'Los Angeles');
SELECT * FROM discography_db.personajes;
-- también se puede hacer lo siguiente.
-- INSERT INTO discography_db.personajes(idpersonaje, nombre, apellidos, fecha_nacimiento, residencia) VALUES
-- (NULL, 'Batman', NULL, '199-01-01', 'Manhattan'),
-- (NULL, 'Jocker', NULL, '2001-01-01', 'Gotham City'),
-- (NULL, 'Hulk', NULL, '2018-01-01', 'EEUU'),
-- ('4', 'Iron Man', '2022-12-25', 'Los Angeles');
-- SELECT * FROM discography_db.personajes;


