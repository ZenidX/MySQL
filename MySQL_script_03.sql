SHOW VARIABLES LIKE 'max_allowed_packet';
SELECT @@global.max_allowed_packet;
SET @@global.max_allowed_packet = 67108864;
SELECT @@global.max_allowed_packet;

SELECT * FROM discography_db.personajes;
SELECT nombre, residencia FROM discography_db.personajes;
SELECT * FROM discography_db.personajes WHERE residencia = 'EEUU';
SELECT idpersonaje AS ID, nombre AS 'NAME', apellidos as SURNAME from discography_db.personajes;
DELETE FROM discography_db.personajes WHERE idpersonaje=5;
SELECT * FROM discography_db.personajes;
-- DROP TABLE IF EXISTS discography_db.personajes;
SELECT * FROM discography_db.personajes;
TRUNCATE TABLE personajes;
DROP TABLE personajes;