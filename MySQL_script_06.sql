DROP DATABASE IF EXISTS nmexample_db;
CREATE DATABASE IF NOT EXISTS nmexample_db;
USE nmexample_db;

CREATE TABLE artistas(
	id INT PRIMARY KEY,
    nombre VARCHAR(255)
);

CREATE TABLE canciones(
	id INT PRIMARY KEY,
    nombre VARCHAR(255)
);
CREATE TABLE artista_canciones(
	id INT PRIMARY KEY,
    canciones_id INT,
    artistas_id INT,
    FOREIGN KEY (canciones_id)
		REFERENCES canciones(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	FOREIGN KEY (artistas_id)
		REFERENCES artistas(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);