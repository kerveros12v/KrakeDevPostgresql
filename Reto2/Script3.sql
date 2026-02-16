create table estudiantes(
cedula char(10) NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
fecha_nacimiento date NOT NULL,
CONSTRAINT cedula_pk PRIMARY KEY (cedula)
)