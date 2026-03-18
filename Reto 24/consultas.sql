--- Usuarios Cuentas

SELECT numero_cuenta, nombre
	FROM cuentas 
	INNER JOIN usuario
	ON cuentas.cedula_propietario=usuario.cedula
	WHERE cuentas.saldo>=money(100) AND cuentas.saldo<=money(1000);

	SELECT numero_cuenta,fecha_creacion, nombre,saldo,cedula
	FROM cuentas 
	INNER JOIN usuario
	ON cuentas.cedula_propietario=usuario.cedula
	WHERE cuentas.fecha_creacion BETWEEN '2022-09-21' AND '2023-09-21' ;

--- Clientes Compras

SELECT nombre,apellido
FROM clientes
WHERE cedula LIKE '%7%';

SELECT clientes.cedula,nombre,apellido
FROM clientes
INNER JOIN compras
ON clientes.cedula=compras.cedula
WHERE clientes.nombre ='Monica';

-- Estudiantes  Profesores

SELECT nombre,apellido
FROM estudiantes
WHERE apellido LIKE '%n%';

SELECT estudiantes.cedula, estudiantes.nombre , estudiantes.apellido , estudiantes.email , estudiantes.fecha_nacimiento,profesores.nombre
FROM estudiantes 
INNER JOIN profesores
ON estudiantes.codigo_profesor = profesores.codigo
WHERE profesores.nombre LIKE '%Francisco%';

--- Persona Prestamo
SELECT cantidad_ahorrada,monto,garante
FROM persona
INNER JOIN prestamo
ON persona.cedula = prestamo.cedula
WHERE monto BETWEEN money('100') AND money('1000');

SELECT * 
FROM persona
WHERE nombre LIKE '%Sean%';

--- Productos Ventas
SELECT nombre,stock,cantidad
FROM productos
INNER JOIN ventas
ON productos.codigo = ventas.codigo_producto
WHERE productos.nombre LIKE '%m%' OR productos.descripcion ='0';

SELECT nombre,stock
FROM productos
INNER JOIN ventas
ON productos.codigo = ventas.codigo_producto
WHERE ventas.cantidad=5;

---Transacciones y Banco

SELECT transacciones.*,banco.*
FROM transacciones
INNER JOIN banco
ON transacciones.codigo = banco.codigo_transaccion
WHERE transacciones.tipo='C' AND transacciones.numero_cuenta BETWEEN '22001' AND '22004';


SELECT transacciones.*
FROM transacciones
INNER JOIN banco
ON transacciones.codigo = banco.codigo_transaccion
WHERE banco.codigo_banco=1;

--- Videojuegos y Plataformas
SELECT nombre,descripcion,valoracion,nombre_plataforma
FROM videojuegos
INNER JOIN plataformas
ON videojuegos.codigo = plataformas.codigo_videojuego
WHERE videojuegos.descripcion LIKE '%Guerra%';																																																																																																																																																																																																																																																																								

SELECT plataformas.id_plataforma,plataformas.nombre_plataforma,videojuegos.codigo
FROM plataformas 
INNER JOIN videojuegos
ON videojuegos.codigo = plataformas.codigo_videojuego
WHERE videojuegos.nombre LIKE '%God of war%';

---Registros de Entrada y Empleado

SELECT r.cedula_empleado,r.fecha,e.nombre
FROM registros_entrada r
INNER JOIN empleado e
ON r.codigo_empleado=e.codigo_empleado
WHERE (r.fecha BETWEEN '2023-08-01' AND '2023-08-31' 
OR r.cedula_empleado LIKE '%17%')
AND (r.hora BETWEEN '08:00:00' AND '12:00:00'
OR r.fecha BETWEEN '2023-10-06' AND '2023-10-20')
AND (r.cedula_empleado LIKE '%08%' AND r.hora BETWEEN '09:00:00' AND '13:00:00');

SELECT e.codigo_empleado,e.nombre,e.fecha,e.hora
FROM empleado e 
INNER JOIN registros_entrada r
ON r.codigo_empleado=e.codigo_empleado
WHERE r.cedula_empleado ='2201';

