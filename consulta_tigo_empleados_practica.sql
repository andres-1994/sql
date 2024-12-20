create table tigo_empleados (
	id 	SERIAL PRIMARY KEY,
	codigo_humano VARCHAR(50) UNIQUE,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	correo VARCHAR(50) UNIQUE,
	genero VARCHAR(50),
	estado_empleado VARCHAR(10),
	sueldo INT,
	antiguedad INT
);

--drop table tigo_empleados

select nombre, apellido from tigo_empleados where codigo_humano is NULL

select * from tigo_empleados

--delete from tigo_empleados where codigo_humano ='23-8289092'

--select * from tigo_empleados where codigo_humano ='23-8289092'

select * from tigo_empleados order by nombre asc

create view vista_empleados as select nombre, apellido, estado_empleado, antiguedad from tigo_empleados;

select * from vista_empleados

select count(nombre) as cantidad_empleados from vista_empleados;

select genero from tigo_empleados where genero='Male'

select * from tigo_empleados where genero in ('Female')

select * from tigo_empleados where antiguedad >=9

select nombre, apellido from tigo_empleados where genero = 'Male' and estado_empleado = 'activo'

--delete from tigo_empleados