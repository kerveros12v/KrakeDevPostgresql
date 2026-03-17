CREATE TABLE  public.cliente
(
    cedula char(10)  NOT NULL,
    nombre varchar(50)  NOT NULL,
    apellido varchar(50)  NOT NULL,
    CONSTRAINT cliente_pkey PRIMARY KEY (cedula)
);

CREATE TABLE  public.compras
(
    id_compras integer NOT NULL,
    cedula varchar(10)  NOT NULL,
    fecha_compra date NOT NULL,
    monto numeric NOT NULL,
    CONSTRAINT compras_pkey PRIMARY KEY (id_compras)
);

ALTER TABLE  public.compras
    ADD CONSTRAINT cedula FOREIGN KEY (cedula)
    REFERENCES public.cliente (cedula) ;
	
	
CREATE TABLE  public.usuario
(
    cedula char(5)  NOT NULL,
    nombre varchar(25)  NOT NULL,
    apellido varchar(25)  NOT NULL,
    tipo_cuenta varchar(20),
    limite_credito numeric,
    CONSTRAINT usuario_pkey PRIMARY KEY (cedula)
);

CREATE TABLE  public.cuentas
(
    numero_cuenta char(5)   NOT NULL,
    cedula_propietario varchar(5)  NOT NULL,
    fecha_creacion date NOT NULL,
    saldo money NOT NULL,
    CONSTRAINT cuentas_pkey PRIMARY KEY (numero_cuenta)
);

ALTER TABLE public.cuentas
    ADD CONSTRAINT cedula_propietario FOREIGN KEY (cedula_propietario)
    REFERENCES public.usuario (cedula) ;

CREATE TABLE public.productos
(
    codigo integer NOT NULL,
    nombre varchar(50) NOT NULL,
    descripcion varchar(200),
    precio money NOT NULL,
    stock integer NOT NULL,
    PRIMARY KEY (codigo)
);
CREATE TABLE public.ventas
(
    id_venta integer NOT NULL,
    codigo_producto integer NOT NULL,
    fecha_venta date NOT NULL,
    cantidad integer,
    PRIMARY KEY (id_venta),
    CONSTRAINT codigo_producto_fk FOREIGN KEY (codigo_producto)
        REFERENCES public.productos (codigo)
);


CREATE TABLE public.videojuegos
(
    codigo integer NOT NULL,
    nombre varchar(100) NOT NULL,
    descripcion varchar(300),
    valoracion integer NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE public.plataformas
(
    id_plataforma integer NOT NULL,
    nombre_plataforma varchar(50) NOT NULL,
    codigo_videojuego integer NOT NULL,
    PRIMARY KEY (id_plataforma),
    CONSTRAINT codigo_videojuego_fk FOREIGN KEY (codigo_videojuego)
        REFERENCES public.videojuegos (codigo)
);
CREATE TABLE public.profesores
(
    codigo integer NOT NULL,
    nombre varchar(50) NOT NULL,
    PRIMARY KEY (codigo)
);
CREATE TABLE public.estudiantes
(
    cedula char(10) NOT NULL,
    nombre varchar(50) NOT NULL,
    apellido varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
    fecha_nacimiento date,
    codigo_profesor integer,
    PRIMARY KEY (cedula),
    CONSTRAINT codigo_profesor_fk FOREIGN KEY (codigo_profesor)
        REFERENCES public.profesores (codigo) 
);

CREATE TABLE public.empleado
(
    codigo_empleado integer NOT NULL,
    nombre varchar(25) NOT NULL,
    fecha date NOT NULL,
    hora time  NOT NULL,
    PRIMARY KEY (codigo_empleado)
);

CREATE TABLE public.registros_entrada
(
    codigo_registro integer NOT NULL,
    cedula_empleado char(10) NOT NULL,
    fecha date NOT NULL,
    hora time NOT NULL,
    codigo_empleado integer NOT NULL,
    PRIMARY KEY (codigo_registro),
	    CONSTRAINT codigo_empleado_fk FOREIGN KEY (codigo_empleado)
        REFERENCES public.empleado (codigo_empleado) 
);

CREATE TABLE public.persona
(
    cedula char(10) NOT NULL,
    nombre varchar(50) NOT NULL,
    apellido varchar(50) NOT NULL,
    estatura decimal(10,2),
    fecha_nacimiento date NOT NULL,
    hora_nacimiento time ,
    cantidad_ahorrada money,
    numero_hijos integer,
    PRIMARY KEY (cedula)
);
CREATE TABLE public.prestamo
(
    cedula char(10) NOT NULL,
    monto money,
    fecha_prestamo date,
    hora_prestamo time ,
    garante varchar(40),
    CONSTRAINT cedula_fk FOREIGN KEY (cedula)
        REFERENCES public.persona (cedula) 
);
CREATE TABLE public.transacciones
(
    codigo integer NOT NULL,
    numero_cuenta char(5) NOT NULL,
    monto money NOT NULL,
    tipo char(1) NOT NULL,
    fecha date,
    hora time ,
    PRIMARY KEY (codigo)
);

CREATE TABLE public.banco
(
    codigo_banco integer NOT NULL,
    codigo_transaccion integer,
    detalle varchar(100),
    PRIMARY KEY (codigo_banco),
    CONSTRAINT codigo_transaccion_fk FOREIGN KEY (codigo_transaccion)
        REFERENCES public.transacciones (codigo)
);