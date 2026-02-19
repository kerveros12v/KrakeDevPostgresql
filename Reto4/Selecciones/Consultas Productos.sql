-- 1)

SELECT codigo, nombre, descripcion, precio, stock
	FROM public.productos WHERE nombre  LIKE 'Q%';

-- 2)

SELECT codigo, nombre, descripcion, precio, stock
	FROM public.productos WHERE descripcion  IS NULL;
	
--3)

SELECT codigo, nombre, descripcion, precio, stock
	FROM public.productos WHERE stock>=2 AND stock<=3;