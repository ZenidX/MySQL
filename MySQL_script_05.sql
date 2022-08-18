DROP DATABASE IF EXISTS discography_db;
CREATE DATABASE IF NOT EXISTS discography_db;
USE discography_db;
CREATE TABLE asignatura(
	id_asignatura INT,
    nombre VARCHAR(255),
    PRIMARY KEY (id_asignatura)
);

CREATE TABLE unidad_formativa(
	id_uf INT,
    nombre VARCHAR(255),
    fk_campo_id_asignatura_tabla_asignatura INT NOT NULL,
    PRIMARY KEY (id_uf, fk_campo_id_asignatura_tabla_asignatura),
    FOREIGN KEY (fk_campo_id_asignatura_tabla_asignatura)
    REFERENCES discography_db.asignatura(id_asignatura)
);