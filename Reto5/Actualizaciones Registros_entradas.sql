	UPDATE public.registros_entrada
	SET  cedula_empleado='082345679'
	WHERE EXTRACT(MONTH FROM fecha)=8;