UPDATE public.productos
	SET stock=0
	WHERE descripcion IS NULL;