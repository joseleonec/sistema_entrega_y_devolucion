
-- TABLA PARROQUIA
INSERT INTO public.parroquia VALUES (1, 'Yanuncay');
INSERT INTO public.parroquia VALUES (2, 'Baños');
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
-- TABLA TARIFA RELACION N a N etnre paroquia y empresa
INSERT INTO public.tarifa(
	id_tarifa, costo, id_empresa, id_parroquia, minutos_estimados)
	VALUES (1, 5, 1, 1, 30);
INSERT INTO public.tarifa VALUES (2, 7, 1, 2, 50);
INSERT INTO public.tarifa VALUES (3, 3, 2, 2, 40);
-- Tabla entrega_a_domicilio
INSERT INTO public.entrega_a_domicilio(
	id_entrega_domicilio, estado, id_empresa, id_factura, id_ubicacion, peso_kg, prioridad)
	VALUES (1, 'entregado', 1, 1, 1, 30, 3);
INSERT INTO public.entrega_a_domicilio VALUES (2, 'pendiente', 1, 2, 1, 30, 2);
INSERT INTO public.entrega_a_domicilio VALUES (3, 'pendiente', 3, 3, 2, 10, 1);
INSERT INTO public.entrega_a_domicilio VALUES (4, 'entregado', 1, 4, 5, 50, 2);
INSERT INTO public.entrega_a_domicilio VALUES (5, 'pendiente', 3, 5, 3, 20, 3);
INSERT INTO public.entrega_a_domicilio VALUES (6, 'entregado', 2, 6, 9, 80, 21);
-- Tabla entrega_en_bodega
INSERT INTO public.entrega_en_bodega(
	id_entrega_bodega, estado, id_despachador, id_factura, id_ubicacion, peso_kg, prioridad)
	VALUES (1, 'entregado', 1, 1, 1, 30, 3);
INSERT INTO public.entrega_en_bodega VALUES (2, 'pendiente', 4, 2, 1, 30, 2);
INSERT INTO public.entrega_en_bodega VALUES (3, 'pendiente', 1, 3, 2, 10, 1);
INSERT INTO public.entrega_en_bodega VALUES (4, 'entregado', 3, 4, 5, 50, 2);
INSERT INTO public.entrega_en_bodega VALUES (5, 'pendiente', 1, 5, 3, 20, 3);
INSERT INTO public.entrega_en_bodega VALUES (6, 'entregado', 2, 6, 9, 80, 21);
-- Tabla solicitud_devolucion
INSERT INTO public.solicitud_devolucion(
	id_solicitud, estado_aprobacion, fecha_de_registro, id_cliente, id_factura, id_producto, motivo_devolucion)
	VALUES (1, 'rechazado',  '2016-06-01 00:00', 1, 1, 1, 'Producto roto');
INSERT INTO public.solicitud_devolucion	
VALUES (2, 'rechazado', '2020-07-06 00:00', 1, 1, 1, 'Producto roto');
INSERT INTO public.solicitud_devolucion	
VALUES (3, 'aprobado', TO_TIMESTAMP(To_char(now(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 1, 2, 3, 'Producto EQUIVOCADO');
INSERT INTO public.solicitud_devolucion	
VALUES (4, 'aprobado', TO_TIMESTAMP(To_char(now(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 3, 3, 4, 'Producto EQUIVOCADO');
INSERT INTO public.solicitud_devolucion	
VALUES (5, 'aprobado', TO_TIMESTAMP(To_char(now(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 4, 4, 2, 'Producto Roto');

INSERT INTO public.solicitud_devolucion	
VALUES (6, 'aprobado', TO_TIMESTAMP(To_char(now(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 5, 5, 5, 'Producto EQUIVOCADO');
INSERT INTO public.solicitud_devolucion	
VALUES (7, 'aprobado', TO_TIMESTAMP(To_char(now(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 6, 6, 6, 'Producto Roto');
INSERT INTO public.solicitud_devolucion	
VALUES (8, 'aprobado', TO_TIMESTAMP(To_char(now(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 7, 7, 7, 'Producto Roto');

-- Tabla nota_de_credito
INSERT INTO public.nota_de_credito(
	id_nota, autorizacion_sri, id_solicitud, monto)
	VALUES (1, 2, 4, 20);
INSERT INTO public.nota_de_credito VALUES (2, 3, 5, 100);
INSERT INTO public.nota_de_credito VALUES (3, 1, 3, 30);

-- Tabla sustitucion
INSERT INTO public.sustitucion(
	id_sustitucion, id_producto_sustituto, id_solicitud, monto)
	VALUES (1, 11, 6, 52);
INSERT INTO public.sustitucion VALUES (2, 12, 7, 32);
INSERT INTO public.sustitucion VALUES (3, 13, 8, 28);
