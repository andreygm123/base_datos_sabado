--creacion de base de datos 
CREATE DATABASE bd_lenguajeSabadoProductos;
--usar la base de datos 
USE bd_lenguajeSabadoProductos;
--crear una tabla 
CREATE TABLE tbl_Producto(
    idProducto INT NOT NULL AUTO_INCREMENT,
    nobre VARCHAR(25) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    fechas DATE NOT NULL,
    categoria VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL,
    PRIMARY KEY(idProducto)
)
--Base de datos para el lenguaje sabado 

