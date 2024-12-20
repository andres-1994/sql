create table nsa_empleados (
	id SERIAL PRIMARY KEY,codigo_humano VARCHAR(50) UNIQUE,nombre VARCHAR(50),apellido VARCHAR(50),
	fecha_nacimiento DATE,correo VARCHAR(50),genero VARCHAR(50),estado_empleado VARCHAR(10),
	sueldo INT,antiguedad INT
);

select * from nsa_empleados

select codigo_humano, nombre, apellido from nsa_empleados where codigo_humano is NULL

select nombre, apellido from nsa_empleados where fecha_nacimiento='1958-04-21'

select codigo_humano, nombre, apellido from vista_empleados limit 10

select distinct estado_empleado from vista_empleados

SELECT AVG(nsa_empleados.sueldo)
AS Promedio_Sueldo
FROM nsa_empleados

--ver los detalles de cada columna en PostgreSql
SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'nsa_empleados';

select * from nsa_empleados where fecha_nacimiento 
between '1990-01-01' and '1999-01-01' 
order by fecha_nacimiento

--consultas con vistas
create view vista_empleados as select * from nsa_empleados

select count(nombre) as Total_empleados from vista_empleados

select * from vista_empleados where fecha_nacimiento='1958-04-21'