	SELECT numero_cuenta, saldo
	FROM public.cuentas
	WHERE saldo>MONEY(100) AND saldo< MONEY(1000);
	
	SELECT *
	FROM public.cuentas
	WHERE fecha_creacion>=  CURRENT_DATE- INTERVAL '1 YEAR';
		
	SELECT *
	FROM public.cuentas
	WHERE saldo=MONEY(0) OR cedula_propietario LIKE '%2';