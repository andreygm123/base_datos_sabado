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


--Funciones matematicas
------------------------------------------------------------------------------------------------------------------
--Obtiene el numero de registro de una tabla
SELECT COUNT(*) FROM empleados;
--obtiene la suma de los salarios de los empleados
SELECT SUM(salario) FROM empleados;
--Obtiene el promedio de los salarios de los empleados
SELECT AVG(salario) FROM empleados;
--obtiene el minimo de los salarios de los empleados
SELECT MIN(salario) FROM empleados;
--Obtiene el maximo de los salarios de los empleados 
SELECT MAX(salario) FROM empleados;
--REdondea un numero de una cantidad especifica de decimales
SELECT ROUND (salario,2) FROM empleados;
--Redondea un numero hacia arriba al entero mas cercano 
SELECT CEIL(salario) FROM empleados;
--Redondea un numero hacia abajo al entero mas cercano
SELECT FLOOR(salario) FROM empleados;

---------------------------------------------------------------------------------------------------------------------------------------
--Funciones de cadena
--obtiene el nombre completo de un empleado
SELECT CONCAT(nombre, '', apellido) AS nombre_completo FROM empleados;
--obtiene la abreviatura de una cadena
SELECT SUBSTRING(nombre, 1, 3) AS abreviatura FROM empleados,
--Obtiene la longitud de una cadena 
SELECT LENGTH (nombre) FROM empleado;
--Convierte una cadena a mayuscula
SELECT UPPER (nombre) FROM empleados;
--Convierte una cadena a miniscula 
SELECT LOWER(nombre) FROM empleados;
--------------------------------------------------------------------------------------------------

--Funciones de fehca y hora

--Obtiene la fecha y hora actual
SELECT NOW();
--obtiene la fecha actual
Select CURDATE();
--Calcula la diferencia entre dos fechas
SELECT DATEDIFF('2024-10-15' ,'2024-10-01') AS diferencia_dias;
--EXtraes el año de una fecha
SELECT YEAR(fecha_nacimiento) FROM empleados;
--Funciones de control flujos
SELECT nombre, IF(salario > 3000, 'Alta' , 'Baja') AS nivel_salarial FROM empleados;