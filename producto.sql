CREATE DATABASE bd_productos;
USE bd_productos;
CREATE TABLE tbl_producto(
    id_producto INT NOT NULL AUTO_INCREMENT,
    nombre_producto VARCHAR(30) NOT NULL,
    existencia INT(20) NOT NULL,
    id_medida INT NOT NULL,
    id_vendedor INT(10) NOT NULL,
    valor_venta INT (20) NOT NULL,
    fecha_ulti_venta INT(10) NOT NULL,
    PRIMARY KEY(id_producto),
    FOREIGN KEY(id_medida) REFERENCES tbl_medida(id_medida),
    FOREIGN KEY(id_vendedor) REFERENCES tbl_vendedor(id_vendedor),
)
CREATE TABLE tbl_vendedor(
    id_vendedor INT(10) NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    telefono INT(10) NOT NULL,
    id_genero INT(10) NULL,
    id_sede INT NOT NULL,
    PRIMARY KEY(id_vendedor),
    FOREIGN KEY(id_genero) REFERENCES tbl_genero(id_genero),
    FOREIGN KEY (id_sede) REFERENCES tbl_sede(id_sede)
)
CREATE TABLE tbl_categoria(
    id_categoria INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_categoria)
)
CREATE TABLE tbl_subcategoria(
    id_sub_categoria INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY(id_sub_categoria),
    FOREIGN KEY(id_categoria) REFERENCES tbl_categoria(id_categoria)
)
CREATE TABLE tbl_medida(
    id_medida INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    id_sub_categoria INT NOT NULL,
    PRIMARY KEY(id_medida),
    FOREIGN KEY(id_sub_categoria) REFERENCES tbl_subcategoria(id_sub_categoria)
)
CREATE TABLE tbl_sede(
    id_sede INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    id_ciudad INT (11) NOT NULL,
    PRIMARY KEY(id_sede),
    FOREIGN KEY(id_ciudad) REFERENCES tbl_ciudad(id_ciudad)
)
CREATE TABLE tbl_genero(
    id_genero INT(10) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NULL,
    PRIMARY KEY(id_genero)
)

CREATE TABLE tbl_ciudad(
    id_ciudad INT (11) NOT NULL,
    nombre VARCHAR (30),
    id_departamento INT (11) NOT NULL,
    PRIMARY KEY(id_ciudad)
    FOREIGN KEY(id_departamento) REFERENCES tbl_departamento(id_departamento)
)

CREATE TABLE tbl_departamento(
    id_departamento int(11) not NULL,
    nombre VARCHAR(30),
    PRIMARY KEY (id_departamento)
)