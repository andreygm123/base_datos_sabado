CREATE DATABASE bd_tienda;
USE bd_tienda;

CREATE TABLE tbl_venta(
    id_venta INT NOT NULL AUTO_INCREMENT,
    fecha_venta INT(20) NOT NULL,
    id_cliente INT NOT NULL,
    id_pago INT(20) NOT NULL,
    cantidad_vendida INT NOT NULL,
    id_vendedor INT (20) NOT NULL,
    id_producto INT (20) NOT NULL,
    id_sede INT (20) NOT NULL,
    id_servicio INT (20) NOT NULL,
    valor_total INT (20) NOT NULL,
    PRIMARY KEY(id_venta),
    FOREIGN KEY(id_cliente) REFERENCES tbl_cliente(id_cliente),
    FOREIGN KEY(id_vendedor) REFERENCES tbl_vendedor(id_vendedor),
    FOREIGN KEY(id_producto) REFERENCES tbl_producto(id_producto),
    FOREIGN KEY(id_sede) REFERENCES tbl_sede(id_sede),
    FOREIGN KEY(id_pago) REFERENCES tbl_pago(id_pago),
    FOREIGN KEY(id_servicio) REFERENCES tbl_servicio(id_servicio)
);

CREATE TABLE tbl_departamento(
    id_departamento INT(20) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    PRIMARY KEY (id_departamento)
);
 
 CREATE TABLE tbl_ciudad(
    id_ciudad INT (20) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    id_departamento INT (20)NOT NULL,
    PRIMARY KEY(id_ciudad)
    FOREIGN KEY (id_departamento) REFERENCES tbl_departamento (id_departamento)
 );

CREATE TABLE tbl_categoria(
    id_categoria INT (20) NOT NULL,
    nombre_categoria VARCHAR (50) NOT NULL,
    PRIMARY KEY(id_categoria)
);

CREATE TABLE tbl_subcategoria(
    id_subcategoria INT (20) NOT NULL,
    nombre_subcategoria VARCHAR (50) NOT NULL,
    id_categoria INT (20) NOT NULL,
    PRIMARY KEY(id_subcategoria),
    FOREIGN KEY (id_categoria) REFERENCES tbl_categoria(id_categoria)
);

 CREATE TABLE tbl_sede(
    id_sede INT(20) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    id_ciudad INT (20) NOT NULL,
    PRIMARY KEY(id_sede),
    FOREIGN KEY(id_ciudad) REFERENCES tbl_ciudad(id_ciudad)
);

CREATE TABLE tbl_genero(
    id_genero INT(20) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NULL,
    PRIMARY KEY(id_genero)
);

CREATE TABLE tbl_pago(
    id_pago INT (20) NOT NULL,
    nombre VARCHAR (50) NULL,
    PRIMARY KEY (id_pago)
);

CREATE TABLE tbl_servicio(
    id_servicio INT (20) NOT NULL,
    nombre_servicio VARCHAR (50) NOT NULL,
    PRIMARY KEY (id_servicio)
);

CREATE TABLE tbl_cargo(
    id_cargo  INT (20) NOT NULL,
    nombre_cargo VARCHAR (50) NOT NULL,
    salario INT (20) NULL,
    id_genero INT (20) NOT NULL,
    PRIMARY KEY(id_cargo),
    FOREIGN KEY (id_genero) REFERENCES tbl_genero(id_genero)
);

CREATE TABLE tbl_vendedor(
    id_vendedor INT (20) NOT NULL,
    nombre_vendedor VARCHAR (50) NOT NULL,
    id_sede INT (20) NOT NULL,
    telefono INT (10) NULL,
    direccion INT (10) NULL,
    email INT (10) NULL,
    id_cargo INT (20) NOT NULL,
    id_genero INT (20) NOT NULL,
    PRIMARY KEY (id_vendedor).
    FOREIGN KEY (id_cargo) REFERENCES tbl_cargo(id_cargo),
    FOREIGN KEY (id_genero) REFERENCES tbl_genero(id_genero)
);

CREATE TABLE  tbl_cliente(
    id_cliente INT (20) NOT NULL,
    nombre_cliente VARCHAR (50) NOT NULL,
    apellidos VARCHAR (50) NOT NULL,
    direccion INT (20) NOT NULL,
    id_sede int (20) NOT NULL,
    email VARCHAR (50) NOT NULL,
    telefono INT (10) NOT NULL,
    id_genero INT (20) NOT NULL,
    PRIMARY KEY(id_cliente),
    FOREIGN KEY (id_genero) REFERENCES tbl_genero(id_genero),
    FOREIGN KEY(id_sede) REFERENCES tbl_sede (id_sede)
);

CREATE TABLE tbl_producto(
    id_producto INT (20) NOT NULL AUTO_INCREMENT,
    id_subcategoria INT (20) NOT NULL,
    nombre_producto VARCHAR(50) NOT NULL,
    cantidad_producto VARCHAR (50) NOT NULL,
    valor_venta DECIMAL (10,2) NOT NULL,
    id_proveedor INT (20) NOT NULL,
    PRIMARY KEY(id_producto),
    FOREIGN KEY (id_subcategoria) REFERENCES tbl_subcategoria(id_subcategoria),
    FOREIGN KEY (id_proveedor) REFERENCES tbl_proveedor (id_proveedor)
);

CREATE TABLE tbl_proveedor(
    id_proveedor INT (20) NOT NULL,
    nombre_proveedor VARCHAR (50) NOT NULL,
    id_ciudad INT (20) NOT NULL,
    valor_compra INT (20) NOT NULL,
    fehca_compra DATE,
    cantidad_comprada INT (20),
    PRIMARY KEY (id_proveedor),
    FOREIGN KEY (id_ciudad) REFERENCES tbl_ciudad(id_ciudad)
);
