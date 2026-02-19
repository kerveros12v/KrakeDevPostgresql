	SELECT nombre,cedula
	FROM public.estudiantes;

	SELECT nombre,cedula
	FROM public.estudiantes
	WHERE cedula LIKE '17%';

	SELECT nombre,apellido
	FROM public.estudiantes
	WHERE nombre LIKE 'A%';