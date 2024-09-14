CREATE DATABASE bd_prueba;
USE bd_prueba;

CREATE TABLE tbl_producto(
id_prueba INT NOT NULL,
id_codigo INT NOT NULL,
nombre INT NOT NULL,
apellidos INT(25) NULL,
id_existencia INT(50) NOT NULL,
id_sub_categoria INT NOT NULL,
fecha VARCHAR,
precio INT NOT NULL,
PRIMARY KEY(id_prueba)
FOREIGN KEY(id_sub_categoria) REFERENCES tbl_subcategoria(id_sub_categoria),
FOREIGN KEY (id_existencia) REFERENCES  tbl_existencia(id_existencia)
)

CREATE TABLE tbl_categoria(
    id_categoria INT NOT NULL,
    nombre VARCHAR(50),
    PRIMARY KEY(id_categoria)
)

CREATE TABlE tbl_subcategoria(
    id_sub_categoria INT NOT NULL,
    nombre VARCHAR(50),
    id_categoria INT NOT NULL,
    PRIMARY KEY(id_sub_categoria),
    FOREIGN KEY(id_categoria) REFERENCES tbl_categoria(id_categoria)
)

CREATE TABLE tbl_existencia(
    id_existencia INT(50) NOT NULL,
    nombre VARCHAR(50),
    PRIMARY KEY(id_existencia)
)




CREATE DATABASE bd_restaurant;
USE bd_restaurant;

CREATE TABLE tbl_reservas(
    id_reserva INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    id_mesa INT NOT NULL,
    hora TIME,
    fecha DATE,
    id_persona
    celular INT (10) NOT NULL,
    PRIMARY KEY (id_reserva),
    FOREIGN KEY (id_mesa) REFERENCES tbl_mesa (id_mesa),
    FOREIGN KEY (id_persona) REFERENCES tbl_cliente(id_persona)
)

CREATE TABLE tbl_cliente(
    id_persona INT (10) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    celular INT(10) NOT NULL,
    PRIMARY KEY(id_persona)
)

CREATE TABLE tbl_mesa(
    id_mesa INT NOT NULL,
    numero_personas INT NOT NULL,
    cliente VARCHAR NOT NULL,
    id_persona INT (10) NOT NULL,
    PRIMARY KEY(id_mesa),
    FOREIGN KEY(id_persona) REFERENCES tbl_cliente(id_persona)
)



--CREAR UNA TABLA DE CATEGORIA CON CODIGO Y NOMBRE, CREARLE LA RELACION, CREAR SUB CATERGORIA Y CREARLE LA RELACION, CREAR UNA TABLA EXISTENCIA Y CREARLE LA RELACION COMO CLAVE FORANEA, ELIMINA LA RELACION Y ELIMINA LA TABLA 
--(ANTES DE CADA CODIGO UTILIZAR EL USE)

