	SELECT cedula_empleado, fecha, hora
	FROM public.registros_entrada;
	
	SELECT *
	FROM public.registros_entrada
	WHERE hora>='07:00' AND hora<='14:00';

	SELECT *
	FROM public.registros_entrada
	WHERE hora>='08:00' ;