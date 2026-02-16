create table productos(
codigo int NOT NULL,
nombre varchar(50) NOT NULL,
descripcion varchar(200) ,
precio money NOT NULL,
stock int NOT NULL,
CONSTRAINT codigo_pk PRIMARY KEY (codigo)
)