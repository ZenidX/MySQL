CREATE TABLE IF NOT EXISTS asignatura(
	id_asignatura INT,
	nombre VARCHAR(255),
	PRIMARY KEY (id_asignatura)
);

CREATE TABLE IF NOT EXISTS unidad_formativa(
	id_uf INT,
    nombre VARCHAR(255),
    fk_campo_id_asignatura_tabla_asignatura INT,
    PRIMARY KEY (id_uf),
    FOREIGN KEY (fk_campo_id_asignatura_tabla_asignatura)
    REFERENCES discography_db.asignatura(id_asignatura)
);
DESCRIBE discography_db.asignatura;
DESCRIBE discography_db.unidad_formativa;

SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME,
	referenced_table_name, referenced_column_name 
    FROM information_schema.key_column_usage 
    WHERE referenced_table_schema = 'discography_db' AND referenced_table_name = 'ASIGNATURA'
