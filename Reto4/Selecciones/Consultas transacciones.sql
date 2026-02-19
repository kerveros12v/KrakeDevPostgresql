	SELECT codigo, numero_cuenta, monto, tipo, fecha, hora
	FROM public.transacciones
	WHERE tipo='D';

	SELECT codigo, numero_cuenta, monto, tipo, fecha, hora
	FROM public.transacciones
	WHERE monto>=MONEY(200) AND monto<=MONEY(2000);
	
	SELECT codigo,  monto, tipo, fecha
	FROM public.transacciones
	WHERE fecha IS NOT NULL;