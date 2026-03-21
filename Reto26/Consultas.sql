SELECT usuarios.nombre , grupo.nombre
FROM usuarios 
INNER JOIN usuario_grupo
ON usuario_grupo.us_id = usuarios.id
INNER JOIN grupo
ON  usuario_grupo.gr_id = grupo.id;

SELECT (SELECT nombre FROM usuarios WHERE usuarios.id=usuario_grupo.us_id )
FROM usuario_grupo;

SELECT grupo.nombre,COUNT (usuario_grupo.us_id)
FROM usuario_grupo
INNER JOIN grupo
ON grupo.id = usuario_grupo.gr_id
GROUP BY grupo.nombre;

SELECT usuarios.nombre , grupo.nombre
FROM usuario_grupo
INNER JOIN grupo
ON grupo.id = usuario_grupo.gr_id
INNER JOIN usuarios
ON usuarios.id = usuario_grupo.us_id
WHERE grupo.nombre LIKE '%intensivo%';

SELECT usuarios.nombre
FROM usuarios
INNER JOIN usuario_grupo 
ON usuario_grupo.us_id = usuarios.id
WHERE usuario_grupo.gr_id=2;

SELECT grupo.nombre,MAX(usuario_grupo.us_id),MIN(usuario_grupo.us_id)
FROM grupo
INNER JOIN usuario_grupo 
ON usuario_grupo.gr_id = grupo.id
GROUP BY grupo.nombre;

SELECT usuarios.nombre,grupo.fecha_creacion
FROM usuario_grupo
INNER JOIN usuarios 
ON usuarios.id = usuario_grupo.us_id
INNER JOIN grupo 
ON grupo.id = usuario_grupo.gr_id
WHERE grupo.fecha_creacion BETWEEN '2020-03-08' AND '2022-03-08';

SELECT usuarios.nombre
FROM usuarios
INNER JOIN usuario_grupo 
ON usuario_grupo.us_id = usuarios.id
WHERE usuario_grupo.gr_id=3; 

SELECT grupo.descripcion,COUNT(usuario_grupo.us_id)
FROM grupo
INNER JOIN usuario_grupo 
ON usuario_grupo.gr_id = grupo.id
WHERE grupo.descripcion LIKE '%matutino%'
GROUP BY grupo.descripcion;

SELECT habitacion_numero,nombres,apellidos
FROM public.reservas
INNER JOIN public.habitaciones 
ON habitaciones.habitacion_numero = reservas.habitacion
INNER JOIN public.huespedes 
ON huespedes.id = reservas.huesped_id;

SELECT nombres,apellidos
FROM public.huespedes
INNER JOIN public.reservas 
ON reservas.huesped_id = huespedes.id
INNER JOIN public.habitaciones 
ON habitaciones.habitacion_numero = reservas.habitacion
WHERE habitaciones.habitacion_numero=2;

SELECT habitacion_numero,COUNT(huesped_id)
FROM public.reservas
INNER JOIN public.habitaciones 
ON habitaciones.habitacion_numero = reservas.habitacion
GROUP BY habitacion_numero;

SELECT habitacion_numero,piso,nombres,apellidos
FROM reservas
INNER JOIN public.habitaciones 
ON habitaciones.habitacion_numero = reservas.habitacion
INNER JOIN public.huespedes 
ON huespedes.id = reservas.huesped_id
WHERE piso=4;

---no existen datos en la habitacion 3 
--- por lo que esta probado con la habitacion 1
SELECT nombres,apellidos
FROM public.huespedes
INNER JOIN public.reservas 
ON reservas.huesped_id = huespedes.id
WHERE habitacion=1;

SELECT habitacion_numero,AVG(huesped_id)
FROM public.reservas
INNER JOIN public.habitaciones 
ON habitaciones.habitacion_numero = reservas.habitacion
GROUP BY habitacion_numero;

SELECT habitacion_numero,nombres,apellidos
FROM reservas
INNER JOIN huespedes 
ON huespedes.id = reservas.huesped_id
INNER JOIN habitaciones 
ON habitaciones.habitacion_numero = reservas.habitacion;

---no existen datos en la habitacion 4
--- por lo que esta probado con la habitacion 1
SELECT nombres,apellidos
FROM public.reservas
INNER JOIN public.huespedes
ON huespedes.id = reservas.huesped_id
WHERE habitacion=1;

SELECT habitacion_numero,SUM(precio_por_noche)
FROM habitaciones
INNER JOIN reservas 
ON reservas.habitacion = habitaciones.habitacion_numero
GROUP BY habitacion_numero;

SELECT nombre,proyecto
FROM public.proyecto_municipio
INNER JOIN public.proyecto 
ON proyecto.id = proyecto_municipio.proyecto_id
INNER JOIN public.municipio 
ON municipio.id = proyecto_municipio.municipio_id;

SELECT proyecto
FROM public.proyecto
INNER JOIN public.proyecto_municipio 
ON proyecto_municipio.proyecto_id = proyecto.id
WHERE municipio_id=1;

SELECT nombre,COUNT(proyecto_id)
FROM public.proyecto_municipio
INNER JOIN public.municipio ON municipio.id = proyecto_municipio.municipio_id
GROUP BY nombre;

SELECT nombre,proyecto
FROM public.proyecto_municipio
INNER JOIN public.municipio 
ON municipio.id = proyecto_municipio.municipio_id
INNER JOIN public.proyecto 
ON proyecto.id = proyecto_municipio.proyecto_id
WHERE municipio.nombre LIKE '%GAD%';

SELECT nombre,MIN (proyecto_id)
FROM public.proyecto_municipio
INNER JOIN public.municipio 
ON municipio.id = proyecto_municipio.municipio_id
GROUP BY nombre;

SELECT public.municipio.nombre,public.ciudad.nombre
FROM public.municipio
INNER JOIN public.ciudad ON ciudad."id " = municipio.ciudad_id;
---no existen datos en la monucipio 3
--- por lo que esta probado con la habitacion 1
SELECT proyecto
FROM public.proyecto_municipio
INNER JOIN public.proyecto 
ON proyecto.id = proyecto_municipio.proyecto_id
WHERE municipio_id=1;

SELECT nombre,MAX(proyecto_id)
FROM public.proyecto_municipio
INNER JOIN public.municipio 
ON municipio.id = proyecto_municipio.municipio_id
GROUP BY nombre;