	SELECT codigo, nombre, descripcion, valoracion
	FROM public.videojuegos
	WHERE nombre like '%C%' OR valoracion=7;

	SELECT codigo, nombre, descripcion, valoracion
	FROM public.videojuegos
	WHERE (codigo>3 AND codigo<7) OR valoracion=7;

	SELECT codigo, nombre, descripcion, valoracion
	FROM public.videojuegos
	WHERE  (valoracion>7 AND nombre LIKE 'C%') OR  (valoracion>8 AND nombre LIKE 'D%');

	