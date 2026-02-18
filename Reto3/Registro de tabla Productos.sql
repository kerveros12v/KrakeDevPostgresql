--Todos los campos 
	INSERT INTO public.productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (1, 'arroz', 'granos', 0.75, 5);
	INSERT INTO public.productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (2, 'azucar', 'endulsante', 0.50, 5);
	INSERT INTO public.productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (3, 'sal', 'cloruro de sodio', 0.35, 5);
	INSERT INTO public.productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (4, 'arina', 'maiz en polvo', 0.45, 5);
	INSERT INTO public.productos(
	codigo, nombre, descripcion, precio, stock)
	VALUES (5, 'aceite', 'peroducto extraido de un vegetal', 1.00, 5);

--Solo los campos obligatorios

	INSERT INTO public.productos(
	codigo, nombre,  precio, stock)
	VALUES (6, 'mani', 0.75, 5);
	INSERT INTO public.productos(
	codigo, nombre,  precio, stock)
	VALUES (7, 'vinagre',  0.50, 5);
	INSERT INTO public.productos(
	codigo, nombre,  precio, stock)
	VALUES (8, 'miel',  0.35, 5);