create table transacciones(
codigo INT NOT NULL,
numero_cuenta CHAR(5) NOT NULL,
monto MONEY NOT NULL,
tipo CHAR(1) NOT NULL,
fecha DATE NOT NULL,
hora TIME NOT NULL,
CONSTRAINT codigo02_pk PRIMARY KEY (codigo)
)