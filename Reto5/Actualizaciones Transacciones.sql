UPDATE public.transacciones
	SET tipo='T'
	WHERE monto>MONEY(100) AND monto<MONEY(500) AND EXTRACT(MONTH FROM fecha)=9 AND hora>='14:00' AND hora<='20:00';