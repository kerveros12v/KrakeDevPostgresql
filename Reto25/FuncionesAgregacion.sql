--- Relación cuentas con usuario
	SELECT cast(AVG(CAST(c.saldo AS  numeric)) AS money)
	FROM cuentas c
	WHERE c.cedula_propietario='00001';

	SELECT c.tipo_cuenta, COUNT (c.tipo_cuenta) 
	FROM usuario c
	GROUP by (c.tipo_cuenta);

---Relación de clientes con compras
	SELECT  c.cedula ,CAST(SUM(v.monto) AS  money)
	FROM clientes c
	INNER JOIN compras v
	ON c.cedula = v.cedula
	GROUP BY (c.cedula);

	SELECT fecha_compra, COUNT(fecha_compra)
	FROM compras
	WHERE fecha_compra='2026-01-01'
	GROUP BY fecha_compra;

---Relación entre estudiantes y profesores
	SELECT e.codigo_profesor, COUNT ( e.codigo_profesor) as total_estudiantes
	FROM estudiantes e
	GROUP BY e.codigo_profesor;

	SELECT ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento) )) AS edad_promedio
	FROM estudiantes;

---Relación entre persona y préstamo

	SELECT cedula,CAST(SUM(CAST(monto as numeric)) AS money) AS monto_total_prestamos
	FROM prestamo
	GROUP BY cedula;

	SELECT COUNT (numero_hijos) AS total_hijos
	FROM persona
	WHERE numero_hijos>1;

---Relación entre Productos y Ventas

	SELECT MAX(precio) AS precio_maximo
	FROM productos;

	SELECT SUM(cantidad) AS cantidad_total_ventas
	from ventas;

---Relación entre Transacciones y Banco

	SELECT COUNT (tipo) AS total_transacciones_creditos
	FROM transacciones
	WHERE tipo='C';
	
	SELECT numero_cuenta  ,ROUND(AVG(CAST(monto AS DECIMAL(12,2))), 2) AS monto_promedio
	FROM transacciones
	GROUP BY numero_cuenta;

---Relación entre Videojuegos y Plataformas

	SELECT codigo_videojuego , count(nombre_plataforma)
	FROM plataformas
	GROUP BY codigo_videojuego;

	SELECT  AVG(valoracion)
	FROM  videojuegos;

---Relación entre registros_entrada y empleado

	SELECT cedula_empleado , COUNT(cedula_empleado)
	FROM registros_entrada
	GROUP BY cedula_empleado;

	SELECT MIN(fecha) AS fecha_minima,MAX(fecha) AS fecha_maxima
	FROM registros_entrada;