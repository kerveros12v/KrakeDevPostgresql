SELECT numero_cuenta,cedula_propietario,fecha_creacion,saldo
	FROM public.cuentas;
SELECT * 
	FROM public.cuentas 
	WHERE fecha_creacion >= CURRENT_DATE - INTERVAL '2 months' and fecha_creacion <= CURRENT_DATE;
SELECT numero_cuenta,saldo
	FROM public.cuentas 
	WHERE fecha_creacion >= CURRENT_DATE - INTERVAL '2 months' and fecha_creacion <= CURRENT_DATE;