CREATE DATABASE bd_ventas;
USE bd_ventas;
CREATE TABLE tbl_ventas(
    id_codigo_factura INT NOT NULL AUTO_INCREMENT,
    fecha INT(20) NOT NULL,
    id_nombre_cliente INT NOT NULL,
    direccion INT(20) NOT NULL,
    id_pago INT NOT NULL,
    id_vendedor INT NOT NULL,
    servicio VARCHAR(20) NOT NULL,
    precio_unitario INT(20) NOT NULL,
    cantidad VARCHAR(20) NOT NULL,
    total VARCHAR(20) NOT NULL,
    id_producto INT NOT NULL,
    id_ciudad INT NOT NULL,
    precio_mayor VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_codigo_factura),
    FOREIGN KEY(id_vendedor) REFERENCES tbl_vendedor(id_vendedor),
    FOREIGN KEY(id_nombre_cliente) REFERENCES tbl_cliente(id_cliente),
    FOREIGN KEY(id_producto) REFERENCES tbl_producto (id_producto),
    FOREIGN KEY(id_pago) REFERENCES tbl_pago (id_pago),
    FOREIGN KEY(id_ciudad) REFERENCES tbl_ciudad (id_ciudad)
)
CREATE TABLE tbl_departamento(
    id_codigo INT NOT NULL,
    nobre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_codigo)
)
CREATE TABLE tbl_ciudad(
    id_ciudad INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    id_departamento INT NOT NULL,
    direccion INT(20) NOT NULL,
    PRIMARY KEY(id_ciudad),
    FOREIGN KEY(id_departamento) REFERENCES tbl_departamento(id_codigo)
)
CREATE TABLE tbl_cliente(
    id_cliente INT NOT NULL,
    sede VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    direccion INT(20) NOT NULL,
    correo VARCHAR(30) NOT NULL,
    PRIMARY KEY(id_cliente)
)
CREATE TABLE tbl_vendedor(
    id_vendedor INT NOT NULL,
    correo VARCHAR(20) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    direccion VARCHAR(20) NOT NULL,
    id_sede INT NOT NULL,
    PRIMARY KEY(id_vendedor),
    FOREIGN KEY(id_sede) REFERENCES tbl_sede (id_sede)
)
CREATE TABLE tbl_producto(
    id_producto INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    id_categoria INT NOT NULL,
    id_subcategoria INT NOT NULL,
    PRIMARY KEY(id_producto),
    FOREIGN KEY(id_categoria) REFERENCES tbl_categoria(id_categoria),
    FOREIGN KEY(id_subcategoria) REFERENCES tbl_subcategoria(id_subcategoria)
)
CREATE TABLE tbl_sede(
    id_sede INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    direccion VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    departamento VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_sede)
)
CREATE TABLE tbl_pago(
    id_pago INT NOT NULL,
    forma_pago VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_pago)
)

CREATE TABLE tbl_categoria(
    id_categoria INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_categoria)
)

CREATE TABLE tbl_subcategoria(
    id_subcategoria INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_subcategoria)
)
