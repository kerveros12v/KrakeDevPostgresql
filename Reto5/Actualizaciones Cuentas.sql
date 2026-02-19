UPDATE public.cuentas
	SET  saldo=MONEY(10)
	WHERE  cedula_propietario like '17%';