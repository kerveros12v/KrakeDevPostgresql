create table cuentas(
numero_cuenta char(5) NOT NULL,
cedula_propietario char(5) NOT NULL,
fecha_creacion date NOT NULL,
saldo money NOT NULL,
CONSTRAINT numero_cuenta_pk PRIMARY KEY (numero_cuenta)
)