CREATE TABLE public.usuarios
(
    id integer NOT NULL,
    nombre varchar(25) NOT NULL,
    apellido varchar(25) NOT NULL,
    fecha_nacimiento date,
    PRIMARY KEY (id)
);
CREATE TABLE public.grupo
(
    id integer NOT NULL,
    nombre varchar(25) NOT NULL,
    descripcion varchar(75),
    fecha_creacion date,
    PRIMARY KEY (id)
);

CREATE TABLE public.usuario_grupo
(
    us_id integer NOT NULL,
    gr_id integer NOT NULL,
    PRIMARY KEY (us_id, gr_id),
    CONSTRAINT us_id_fk FOREIGN KEY (us_id)
        REFERENCES public.usuarios (id),
       
    CONSTRAINT gr_id_fk FOREIGN KEY (gr_id)
        REFERENCES public.grupo (id) 
);
CREATE TABLE public.habitaciones
(
    habitacion_numero integer NOT NULL,
   	precio_por_noche decimal NOT NULL,
    piso integer NOT NULL,
    max_personas integer,
    PRIMARY KEY (habitacion_numero)
);
CREATE TABLE public.huespedes
(
    id integer NOT NULL,
    nombres varchar(45) NOT NULL,
    apellidos varchar(45) NOT NULL,
    telefono char(10),
    correo varchar(45),
    direccon varchar(45),
    ciudad varchar(45),
    pais varchar(45),
    PRIMARY KEY (id)
);

CREATE TABLE public.reservas
(
    inicio_fecha date,
    fin_fecha date,
    habitacion integer NOT NULL,
    huesped_id integer NOT NULL,
    PRIMARY KEY (habitacion, huesped_id),
    CONSTRAINT habitacion_id_fk FOREIGN KEY (habitacion)
        REFERENCES public.habitaciones (habitacion_numero),
    CONSTRAINT huesped_id_fk FOREIGN KEY (huesped_id)
        REFERENCES public.huespedes (id)
);
CREATE TABLE public.ciudad
(
    "id " integer NOT NULL,
    nombre varchar(45) NOT NULL,
    PRIMARY KEY ("id ")
);
CREATE TABLE public.municipio
(
    id integer NOT NULL,
    nombre character varying(45),
    ciudad_id integer NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT ciudad_id_fk FOREIGN KEY (ciudad_id)
        REFERENCES public.ciudad ("id ")
);

CREATE TABLE public.proyecto
(
    id integer NOT NULL,
    proyecto character varying(50) NOT NULL,
    monto money NOT NULL,
    fecha_inicio date,
    fecha_entrega date,
    PRIMARY KEY (id)
);
CREATE TABLE public.proyecto_municipio
(
    municipio_id integer NOT NULL,
    proyecto_id integer NOT NULL,
    PRIMARY KEY (municipio_id, proyecto_id),
    CONSTRAINT municipio_id_fk FOREIGN KEY (municipio_id)
        REFERENCES public.municipio (id) ,
    CONSTRAINT proyecto_id_fk FOREIGN KEY (proyecto_id)
        REFERENCES public.proyecto (id)
);