CREATE DATABASE bd_productos;
USE bd_productos;
CREATE TABLE tbl_producto(
    codigo_de_barras INT NOT NULL AUTO_INCREMENT,
    nombre_producto VARCHAR(30) NOT NULL,
    precio_compra INT (20) NOT NULL,
    existencia INT(20) NOT NULL,
    id_medida INT NOT NULL,
    id_vendedor INT(10) NOT NULL,
    id_sub_categoria INT NOT NULL,
    valor_venta INT (20) NOT NULL,
    fecha_ulti_venta INT(10) NOT NULL,
    PRIMARY KEY(codigo_de_barras),
    FOREIGN KEY(id_medida) REFERENCES tbl_medida(id_medida),
    FOREIGN KEY(id_vendedor) REFERENCES tbl_vendedor(id_vendedor),
    FOREIGN KEY(id_sub_categoria) REFERENCES tbl_subcategoria(id_sub_categoria)
)
CREATE TABLE tbl_vendedor(
    id_vendedor INT(10) NOT NULL,
    nombre VARCHAR(15) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    correo VARCHAR(30) NOT NULL,
    telefono INT(10) NOT NULL,
    genero VARCHAR(10) NULL,
    id_sede INT NOT NULL,
    PRIMARY KEY(id_vendedor),
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
    PRIMARY KEY(id_medida)
)
CREATE TABLE tbl_sede(
    id_sede INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    departamento VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    direccion VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_sede)
)