CREATE DATABASE bd_empleados;
USE bd_empleados;
CREATE TABLE tbl_empleado(
    id_cedula INT NOT NULL,
    nombres VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    direccion VARCHAR(30) NOT NULL,
    id_ciudad INT NOT NULL,
    correo_personal VARCHAR(100) NULL,
    correo_corporativo VARCHAR(100) NOT NULL,
    id_cargo INT NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    telefono_opcional VARCHAR(15) NULL,
    id_genero INT NOT NULL,
    PRIMARY KEY(id_cedula),
    FOREIGN KEY(id_genero) REFERENCES tbl_genero(id_genero),
    FOREIGN KEY(id_cargo) REFERENCES tbl_cargo(id_cargo),
    FOREIGN KEY(id_ciudad) REFERENCES tbl_ciudad(id_ciudad)
)
CREATE TABLE tbl_departamento(
    id_departamento INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_departamento)
)

CREATE TABLE tbl_ciudad(
    id_ciudad INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    id_departamento INT NOT NULL,
    PRIMARY KEY(id_ciudad),
    FOREIGN KEY(id_departamento) REFERENCES tbl_departamento(id_departamento)
)
CREATE TABLE tbl_genero(
    id_genero INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(10) NOT NULL,
    PRIMARY KEY(id_genero)
)
CREATE TABLE tbl_cargo(
    id_cargo INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    id_area INT NOT NULL,
    PRIMARY KEY(id_cargo),
    FOREIGN KEY(id_area) REFERENCES tbl_area(id_area)
)
CREATE TABLE tbl_area(
    id_area INT NOT NULL AUTO_INCREMENT,
    nobre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_area)
)


