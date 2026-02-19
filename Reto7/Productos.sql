	SELECT codigo, nombre, descripcion, precio, stock
	FROM public.productos WHERE stock=10 AND precio<MONEY(10);

		SELECT  nombre, stock
	FROM public.productos WHERE nombre LIKE '%m%' OR descripcion LIKE '% %';

			SELECT  nombre
	FROM public.productos WHERE descripcion IS NULL OR stock =0;
