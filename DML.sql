Para insertar carreras

USE bd_estudiantes;
INSERT INTO tbl_carrera
(id_carrera,nombre,id_facultad) VALUES (NULL,'Diseño de Moda',4),(NULL,'Fotografía',4),(NULL,'Teatro',4),(NULL,'Musica',4);

Para insertar un estudiante

USE bd_estudiantes;
INSERT INTO tbl_estudiante
(id_estudiante,nombre,apellido,fecha_de_ingreso,id_carrera,id_genero,saldo_deuda,semestre,telefono_celular,telefono_fijo)VALUES
(1000,'Jose','Acosta','2024-09-14',16,2,20000,6,12312,1212);

Para un listado de un genero en especifico

USE bd_estudiantes;

SELECT tbl_estudiante.nombre, tbl_estudiante.apellido, tbl_estudiante.semestre, tbl_genero.nombre,tbl_carrera.nombre,tbl_facultad.nombre,tbl_estudiante.saldo_deuda
FROM tbl_estudiante
JOIN tbl_genero
ON tbl_estudiante.id_genero = tbl_genero.id_genero
JOIN tbl_carrera
ON tbl_estudiante.id_carrera = tbl_carrera.id_carrera
JOIN tbl_facultad
ON tbl_carrera.id_facultad = tbl_facultad.id_facultad
WHERE tbl_genero.id_genero = 2;



insert   insert into valves
delete  delete from where
selet selet,compost campos,.. from nombretabla
updatea  where(condicion)


ejemplo
SELECT nombre,apellido,semestre
FROM tbl_estudiante
WHERE tbl_estudiante.semestre >=3 AND tbl_estudiante.id_estudiante =    


2 ejemplo conectar a tbl_genero

USE bd_estudiantes;

SELECT tbl_estudiante.nombre, tbl_estudiante.apellido, tbl_estudiante.semestre, tbl_genero.nombre
FROM tbl_estudiante
JOIN tbl_genero
ON tbl_estudiante.id_genero = tbl_genero.id_genero
WHERE tbl_estudiante.nombre = 'Ferney';

3 ejemplo relacion carrera y facultad

USE bd_estudiantes;
SELECT tbl_estudiante.nombre AS 'Nombre estudiante',tbl_estudiante.apellido AS 'Apellido estudiante', tbl_estudiante.semestre AS 'Semestre estudiante',tbl_carrera.nombre AS 'Nombre carrera',tbl_facultad.nombre AS 'Nombre facultad'
FROM tbl_estudiante
JOIN tbl_carrera
ON tbl_estudiante.id_carrera = tbl_carrera.id_carrera
JOIN tbl_facultad
ON tbl_carrera.id_facultad = tbl_facultad.id_facultad
WHERE tbl_estudiante.saldo_deuda < 10000000;

la misma con otra condicion misma
USE bd_estudiantes;

SELECT tbl_estudiante.nombre AS 'Nombre estudiante',tbl_estudiante.apellido AS 'Apellido estudiante', tbl_estudiante.semestre AS 'Semestre estudiante',tbl_carrera.nombre AS 'Nombre carrera',tbl_facultad.nombre AS 'Nombre facultad', tbl_genero.nombre AS 'Genero estudiante' 
FROM tbl_estudiante 
JOIN tbl_carrera
ON tbl_estudiante.id_carrera = tbl_carrera.id_carrera 
JOIN tbl_facultad 
ON tbl_carrera.id_facultad = tbl_facultad.id_facultad 
JOIN tbl_genero 
ON tbl_estudiante.id_genero = tbl_genero.id_genero
WHERE tbl_estudiante.saldo_deuda < 10000000 and tbl_estudiante.semestre >2;


funcion de orden facultades y carreras

USE bd_estudiantes;
SELECT tbl_estudiante.nombre AS 'Nombre estudiante',tbl_estudiante.apellido AS 'Apellido estudiante', tbl_estudiante.semestre AS 'Semestre estudiante',tbl_carrera.nombre AS 'Nombre carrera',tbl_facultad.nombre AS 'Nombre facultad'
FROM tbl_estudiante
JOIN tbl_carrera
ON tbl_estudiante.id_carrera = tbl_carrera.id_carrera
JOIN tbl_facultad
ON tbl_carrera.id_facultad = tbl_facultad.id_facultad
ORDER BY tbl_carrera.id_carrera, tbl_facultad.id_facultad;