
-- TABLA PARROQUIA
INSERT INTO public.parroquia VALUES (1, 'Yanuncay');
INSERT INTO public.parroquia VALUES (2, 'Ba;os');
INSERT INTO public.parroquia VALUES (3, 'Chiquintad');
INSERT INTO public.parroquia VALUES (4, 'Sayausí');
INSERT INTO public.parroquia VALUES (5, 'Ricaurte');
INSERT INTO public.parroquia VALUES (6, 'Turi');
INSERT INTO public.parroquia VALUES (7, 'San Sebastián');
INSERT INTO public.parroquia VALUES (8, 'El Batán');
INSERT INTO public.parroquia VALUES (9, 'Bellavista');
INSERT INTO public.parroquia VALUES (10, 'Gil Ramírez Dávalos');
INSERT INTO public.parroquia VALUES (11, 'El Sagrario');
INSERT INTO public.parroquia VALUES (12, 'San Blas');
INSERT INTO public.parroquia VALUES (13, 'Cañaribamba');
INSERT INTO public.parroquia VALUES (14, 'Sucre');
INSERT INTO public.parroquia VALUES (15, 'Huayna Cápac');
INSERT INTO public.parroquia VALUES (16, 'Hermano Miguel');
INSERT INTO public.parroquia VALUES (17, 'El Vecino');
INSERT INTO public.parroquia VALUES (18, 'Totoracocha');
INSERT INTO public.parroquia VALUES (19, 'Monay');
INSERT INTO public.parroquia VALUES (20, 'Machángara');
-- TABLA EMPRESA DE empresa_de_envios
INSERT INTO public.empresa_de_envios
    (id_empresa, costo_kg_extra, costo_km_extra, min_paquetes_por_viaje, maximo_peso_paquete, razon_social)
	VALUES (1, 0.25, 0.50, 3, 300, 'Servientrega S.A.');
INSERT INTO public.empresa_de_envios VALUES (2, 0.1, 0.20, 1, 80, 'Glovo');
INSERT INTO public.empresa_de_envios VALUES (3, 0.2, 0.30, 1, 00, 'Uber');
INSERT INTO public.empresa_de_envios VALUES (4, 0.15, 0.25, 1, 200, 'Taxi Amigo');
