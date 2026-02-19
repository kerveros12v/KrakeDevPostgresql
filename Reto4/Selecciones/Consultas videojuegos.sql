	SELECT codigo, nombre, descripcion, valoracion
	FROM public.videojuegos
	WHERE nombre LIKE 'C%';

	SELECT codigo, nombre, descripcion, valoracion
	FROM public.videojuegos
	WHERE valoracion>=9 AND valoracion<=10;

	SELECT codigo, nombre, descripcion, valoracion
	FROM public.videojuegos
	WHERE descripcion IS NULL;