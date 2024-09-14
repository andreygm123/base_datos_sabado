--MOdficar tabalas--

--agregar una columna a una tabla--
ALTER TABLE nombre_tabla
ADD nombre_columna tipo_dato;

--modificar una columna de una tabla--
ALTER TABLE nombre_tabla
MODIFY nombre_columna nuevo_tipo_dato;

--renombrar una columna de una tabla--
ALTER TABLE nombre_tabla
CHANGE nombre_columna_antiguo nombre_columna_nuevo tipo_dato;

--elimnar una columna de una tabla 
ALTER nombre_tabla
DROP nombre_columna;

--Tablas 
--elimina una tabla-
DROP TABLE nombre_tabla;

--elimnar una tabla solo si esxite--
DROP TABLE IF EXISTS nombre_tabla;

--Renombrar una tabla 
--RENAME TABLE nombre_tabla_a_renombrar_ TO nombre_tabla_nueva;
ALTER TABLE nombre_columna_antiguo;
RENAME TO nombre_tabla_nuevo;


--claves foraneas--
--agregar claves foraneas
ALTER TABLE nombre_tabla
ADD CONSTRAINT nombre_clave_foranea
FOREIGN KEY (nombre_columna)
REFERENCES  tabla_references(nombre_columna_referenciada);

--Eliminar claves foraneas
ALTER TABLE nombre_tabla
DROP FOREIGN KEY nombre_clave_foranea;


