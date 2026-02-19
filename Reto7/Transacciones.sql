	SELECT codigo, numero_cuenta, monto, tipo, fecha, hora
	FROM public.transacciones
	WHERE tipo='C' AND numero_cuenta::INTEGER>2204 AND numero_cuenta::INTEGER<222001;

	SELECT codigo, numero_cuenta, monto, tipo, fecha, hora
	FROM public.transacciones
	WHERE tipo='D' AND EXTRACT(DAY FROM fecha)=15 AND EXTRACT (MONTH FROM fecha)=5 AND numero_cuenta::INTEGER>22007 AND numero_cuenta::INTEGER<22010;

	SELECT codigo, numero_cuenta, monto, tipo, fecha, hora
	FROM public.transacciones
	WHERE 
	(codigo>=1 AND codigo<=5 )
	AND (EXTRACT(DAY FROM fecha)=26 OR EXTRACT(DAY FROM fecha)=29 ) 
	AND EXTRACT (MONTH FROM fecha)=5 
	AND numero_cuenta::INTEGER>22002 
	AND numero_cuenta::INTEGER<22004;