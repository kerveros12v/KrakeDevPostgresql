	SELECT cedula, nombre, apellido, email, fecha_nacimiento
	FROM public.estudiantes
	WHERE nombre LIKE 'M%' OR apellido LIKE '%z';

	SELECT cedula, nombre, apellido, email, fecha_nacimiento
	FROM public.estudiantes
	WHERE cedula LIKE '18%32%';

	SELECT  nombre, apellido
	FROM public.estudiantes
	WHERE cedula LIKE '17%' OR cedula LIKE '%06';