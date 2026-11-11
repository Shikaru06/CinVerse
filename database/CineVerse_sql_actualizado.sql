-- Oracle. Ejecutar con el usuario de la práctica.
CREATE SEQUENCE seq_genero_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_pelicula_id START WITH 1 INCREMENT BY 1;

CREATE TABLE genero (
    id NUMBER,
    nombre VARCHAR2(120) NOT NULL,
    CONSTRAINT pk_genero PRIMARY KEY (id),
    CONSTRAINT uk_genero_nombre UNIQUE (nombre)
);

CREATE OR REPLACE TRIGGER seq_genero_id
BEFORE INSERT ON genero
FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        SELECT seq_genero_id.NEXTVAL INTO :NEW.id FROM DUAL;
    END IF;
END;
/

CREATE TABLE pelicula (
    id NUMBER,
    titulo VARCHAR2(180) NOT NULL,
    sinopsis VARCHAR2(1200),
    duracion NUMBER(4) NOT NULL,
    anio NUMBER(4) NOT NULL,
    clasificacion VARCHAR2(20) NOT NULL,
    imagen VARCHAR2(300) NOT NULL,
    genero_id NUMBER NOT NULL,
    CONSTRAINT pk_pelicula PRIMARY KEY (id),
    CONSTRAINT ck_pelicula_duracion CHECK (duracion >= 0),
    CONSTRAINT ck_pelicula_anio CHECK (anio >= 0),
    CONSTRAINT fk_pelicula_genero FOREIGN KEY (genero_id) REFERENCES genero(id)
);

CREATE OR REPLACE TRIGGER seq_pelicula_id
BEFORE INSERT ON pelicula
FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
        SELECT seq_pelicula_id.NEXTVAL INTO :NEW.id FROM DUAL;
    END IF;
END;
/
