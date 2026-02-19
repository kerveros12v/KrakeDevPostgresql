	SELECT codigo_registro, cedula_empleado, fecha, hora
	FROM public.registros_entrada
	WHERE EXTRACT(MONTH FROM fecha)=9 AND cedula_empleado LIKE '17%';

	SELECT codigo_registro, cedula_empleado, fecha, hora
	FROM public.registros_entrada
	WHERE 
		(EXTRACT(MONTH FROM fecha)=9 
		OR cedula_empleado LIKE '17%' 
		AND hora>'08:00' 
		AND hora<'12:00');

	SELECT codigo_registro, cedula_empleado, fecha, hora
	FROM public.registros_entrada
	WHERE 
		(EXTRACT(MONTH FROM fecha)=9 
		AND cedula_empleado LIKE '17%' 
		AND hora>'08:00' 
		AND hora<'12:00')
		OR (cedula_empleado LIKE '08%' 
		AND hora>'09:00' 
		AND hora<'13:00');

	