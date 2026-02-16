create table registros_entrada(
codigo_registro int NOT NULL,
cedula_empleado CHAR(10) NOT NULL,
fecha date NOT NULL,
hora TIME NOT NULL,
CONSTRAINT codigo_registro_pk PRIMARY KEY (codigo_registro)
)