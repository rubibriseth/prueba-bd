/*
drop database bdprueba;
*/

create database bdprueba;
use bdprueba;

CREATE TABLE HISTORIAL_VACUNAS (
	id_historial INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_mascota INT NOT NULL,
	tipo_vacuna VARCHAR(255) NOT NULL,
	fecha DATE NOT NULL,
    observacion VARCHAR(255) NOT NULL,
    estado VARCHAR(100) NOT NULL
);


CREATE TABLE MASCOTA (
    id_mascota INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_mas VARCHAR(255) NOT NULL,
    raza_mas VARCHAR(100) NOT NULL,
    edad_mas VARCHAR(50) NOT NULL,
    peso_mas VARCHAR(50) NOT NULL,
    ind_eliminado_mas INT NOT NULL
);

ALTER TABLE HISTORIAL_VACUNAS
ADD CONSTRAINT FK_HISTORIAL_VACUNAS_MASCOTA
FOREIGN KEY (id_mascota) REFERENCES MASCOTA (id_mascota);
