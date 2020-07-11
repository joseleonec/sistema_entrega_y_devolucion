
-- TABLA PARROQUIA
INSERT INTO PUBLIC.PARROQUIA VALUES (1, 'YANUNCAY');
INSERT INTO PUBLIC.PARROQUIA VALUES (2, 'BAÑOS');
INSERT INTO PUBLIC.PARROQUIA VALUES (3, 'CHIQUINTAD');
INSERT INTO PUBLIC.PARROQUIA VALUES (4, 'SAYAUSÍ');
INSERT INTO PUBLIC.PARROQUIA VALUES (5, 'RICAURTE');
INSERT INTO PUBLIC.PARROQUIA VALUES (6, 'TURI');
INSERT INTO PUBLIC.PARROQUIA VALUES (7, 'SAN SEBASTIÁN');
INSERT INTO PUBLIC.PARROQUIA VALUES (8, 'EL BATÁN');
INSERT INTO PUBLIC.PARROQUIA VALUES (9, 'BELLAVISTA');
INSERT INTO PUBLIC.PARROQUIA VALUES (10, 'GIL RAMÍREZ DÁVALOS');
INSERT INTO PUBLIC.PARROQUIA VALUES (11, 'EL SAGRARIO');
INSERT INTO PUBLIC.PARROQUIA VALUES (12, 'SAN BLAS');
INSERT INTO PUBLIC.PARROQUIA VALUES (13, 'CAÑARIBAMBA');
INSERT INTO PUBLIC.PARROQUIA VALUES (14, 'SUCRE');
INSERT INTO PUBLIC.PARROQUIA VALUES (15, 'HUAYNA CÁPAC');
INSERT INTO PUBLIC.PARROQUIA VALUES (16, 'HERMANO MIGUEL');
INSERT INTO PUBLIC.PARROQUIA VALUES (17, 'EL VECINO');
INSERT INTO PUBLIC.PARROQUIA VALUES (18, 'TOTORACOCHA');
INSERT INTO PUBLIC.PARROQUIA VALUES (19, 'MONAY');
INSERT INTO PUBLIC.PARROQUIA VALUES (20, 'MACHÁNGARA');

-- TABLA EMPRESA DE EMPRESA_DE_ENVIOS
INSERT INTO PUBLIC.EMPRESA_DE_ENVIOS
    (ID_EMPRESA, COSTO_KG_EXTRA, COSTO_KM_EXTRA, MIN_PAQUETES_POR_VIAJE, MAXIMO_PESO_PAQUETE, RAZON_SOCIAL)
	VALUES (1, 0.25, 0.50, 3, 300, 'SERVIENTREGA S.A.');
INSERT INTO PUBLIC.EMPRESA_DE_ENVIOS VALUES (2, 0.1, 0.20, 1, 80, 'GLOVO');
INSERT INTO PUBLIC.EMPRESA_DE_ENVIOS VALUES (3, 0.2, 0.30, 1, 00, 'UBER');
INSERT INTO PUBLIC.EMPRESA_DE_ENVIOS VALUES (4, 0.15, 0.25, 1, 200, 'TAXI AMIGO');

-- TABLA TARIFA RELACION N A N ETNRE PAROQUIA Y EMPRESA
INSERT INTO PUBLIC.TARIFA(
	ID_TARIFA, COSTO, ID_EMPRESA, ID_PARROQUIA, MINUTOS_ESTIMADOS)
	VALUES (1, 5, 1, 1, 30);
INSERT INTO PUBLIC.TARIFA(
	ID_TARIFA, COSTO, ID_EMPRESA, ID_PARROQUIA, MINUTOS_ESTIMADOS) VALUES (2, 7, 1, 2, 50);
INSERT INTO PUBLIC.TARIFA(
	ID_TARIFA, COSTO, ID_EMPRESA, ID_PARROQUIA, MINUTOS_ESTIMADOS) VALUES (3, 3, 2, 2, 40);

-- TABLA ENTREGA_A_DOMICILIO
INSERT INTO PUBLIC.ENTREGA_A_DOMICILIO(
	ID_ENTREGA_DOMICILIO, ESTADO, ID_EMPRESA, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD)
	VALUES (1, 'ENTREGADO', 1, 1, 1, 30, 3);
INSERT INTO PUBLIC.ENTREGA_A_DOMICILIO(
	ID_ENTREGA_DOMICILIO, ESTADO, ID_EMPRESA, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD) VALUES (2, 'PENDIENTE', 1, 2, 1, 30, 2);
INSERT INTO PUBLIC.ENTREGA_A_DOMICILIO(
	ID_ENTREGA_DOMICILIO, ESTADO, ID_EMPRESA, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD) VALUES (3, 'PENDIENTE', 3, 3, 2, 10, 1);
INSERT INTO PUBLIC.ENTREGA_A_DOMICILIO(
	ID_ENTREGA_DOMICILIO, ESTADO, ID_EMPRESA, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD) VALUES (4, 'ENTREGADO', 1, 4, 5, 50, 2);
INSERT INTO PUBLIC.ENTREGA_A_DOMICILIO(
	ID_ENTREGA_DOMICILIO, ESTADO, ID_EMPRESA, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD) VALUES (5, 'PENDIENTE', 3, 5, 3, 20, 3);
INSERT INTO PUBLIC.ENTREGA_A_DOMICILIO(
	ID_ENTREGA_DOMICILIO, ESTADO, ID_EMPRESA, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD) VALUES (6, 'ENTREGADO', 2, 6, 9, 80, 21);

-- TABLA ENTREGA_EN_BODEGA
INSERT INTO PUBLIC.ENTREGA_EN_BODEGA(
	ID_ENTREGA_BODEGA, ESTADO, ID_DESPACHADOR, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD)
	VALUES (1, 'ENTREGADO', 1, 1, 1, 30, 3);
INSERT INTO PUBLIC.ENTREGA_EN_BODEGA(
	ID_ENTREGA_BODEGA, ESTADO, ID_DESPACHADOR, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD) VALUES (2, 'PENDIENTE', 4, 2, 1, 30, 2);
INSERT INTO PUBLIC.ENTREGA_EN_BODEGA(
	ID_ENTREGA_BODEGA, ESTADO, ID_DESPACHADOR, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD) VALUES (3, 'PENDIENTE', 1, 3, 2, 10, 1);
INSERT INTO PUBLIC.ENTREGA_EN_BODEGA(
	ID_ENTREGA_BODEGA, ESTADO, ID_DESPACHADOR, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD) VALUES (4, 'ENTREGADO', 3, 4, 5, 50, 2);
INSERT INTO PUBLIC.ENTREGA_EN_BODEGA(
	ID_ENTREGA_BODEGA, ESTADO, ID_DESPACHADOR, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD) VALUES (5, 'PENDIENTE', 1, 5, 3, 20, 3);
INSERT INTO PUBLIC.ENTREGA_EN_BODEGA(
	ID_ENTREGA_BODEGA, ESTADO, ID_DESPACHADOR, ID_FACTURA, ID_UBICACION, PESO_KG, PRIORIDAD) VALUES (6, 'ENTREGADO', 2, 6, 9, 80, 21);

-- TABLA SOLICITUD_DEVOLUCION
INSERT INTO PUBLIC.SOLICITUD_DEVOLUCION(
	ID_SOLICITUD, ESTADO_APROBACION, FECHA_DE_REGISTRO, ID_CLIENTE, ID_FACTURA, ID_PRODUCTO, MOTIVO_DEVOLUCION)
	VALUES (1, 'RECHAZADO',  '2016-06-01 00:00', 1, 1, 1, 'PRODUCTO ROTO');
INSERT INTO PUBLIC.SOLICITUD_DEVOLUCION	
VALUES (2, 'RECHAZADO', '2020-07-06 00:00', 1, 1, 1, 'PRODUCTO ROTO');

INSERT INTO PUBLIC.SOLICITUD_DEVOLUCION	(
	ID_SOLICITUD, ESTADO_APROBACION, FECHA_DE_REGISTRO, ID_CLIENTE, ID_FACTURA, ID_PRODUCTO, MOTIVO_DEVOLUCION)
	VALUES (3, 'APROBADO', TO_TIMESTAMP(TO_CHAR(NOW(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 1, 2, 3, 'PRODUCTO EQUIVOCADO');
INSERT INTO PUBLIC.SOLICITUD_DEVOLUCION(
	ID_SOLICITUD, ESTADO_APROBACION, FECHA_DE_REGISTRO, ID_CLIENTE, ID_FACTURA, ID_PRODUCTO, MOTIVO_DEVOLUCION)		
	VALUES (4, 'APROBADO', TO_TIMESTAMP(TO_CHAR(NOW(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 3, 3, 4, 'PRODUCTO EQUIVOCADO');
INSERT INTO PUBLIC.SOLICITUD_DEVOLUCION(
	ID_SOLICITUD, ESTADO_APROBACION, FECHA_DE_REGISTRO, ID_CLIENTE, ID_FACTURA, ID_PRODUCTO, MOTIVO_DEVOLUCION)		
	VALUES (5, 'APROBADO', TO_TIMESTAMP(TO_CHAR(NOW(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 4, 4, 2, 'PRODUCTO ROTO');
INSERT INTO PUBLIC.SOLICITUD_DEVOLUCION	(
	ID_SOLICITUD, ESTADO_APROBACION, FECHA_DE_REGISTRO, ID_CLIENTE, ID_FACTURA, ID_PRODUCTO, MOTIVO_DEVOLUCION)
	VALUES (6, 'APROBADO', TO_TIMESTAMP(TO_CHAR(NOW(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 5, 5, 5, 'PRODUCTO EQUIVOCADO');
INSERT INTO PUBLIC.SOLICITUD_DEVOLUCION(
	ID_SOLICITUD, ESTADO_APROBACION, FECHA_DE_REGISTRO, ID_CLIENTE, ID_FACTURA, ID_PRODUCTO, MOTIVO_DEVOLUCION)		
	VALUES (7, 'APROBADO', TO_TIMESTAMP(TO_CHAR(NOW(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 6, 6, 6, 'PRODUCTO ROTO');
INSERT INTO PUBLIC.SOLICITUD_DEVOLUCION	(
	ID_SOLICITUD, ESTADO_APROBACION, FECHA_DE_REGISTRO, ID_CLIENTE, ID_FACTURA, ID_PRODUCTO, MOTIVO_DEVOLUCION)	
	VALUES (8, 'APROBADO', TO_TIMESTAMP(TO_CHAR(NOW(), 'YYYY-MM-DD HH24:MI:SS'),'YYYY-MM-DD HH24:MI:SS'), 7, 7, 7, 'PRODUCTO ROTO');

-- TABLA SOLICITUD APROBADA
INSERT INTO public.solicitud_aprobada(id_solicitud_aprobada, id_solicitud) VALUES (1, 6);
INSERT INTO public.solicitud_aprobada(id_solicitud_aprobada, id_solicitud) VALUES (2, 7);
INSERT INTO public.solicitud_aprobada(id_solicitud_aprobada, id_solicitud) VALUES (3, 8);
INSERT INTO public.solicitud_aprobada(id_solicitud_aprobada, id_solicitud) VALUES (4, 3);
INSERT INTO public.solicitud_aprobada(id_solicitud_aprobada, id_solicitud) VALUES (5, 4);
INSERT INTO public.solicitud_aprobada(id_solicitud_aprobada, id_solicitud) VALUES (6, 5);

-- TABLA NOTA_DE_CREDITO
INSERT INTO public.nota_de_credito(
	id_nota, autorizacion_sri, monto, id_solicitud_aprobada)
	VALUES (1, 2, 20, 1);
INSERT INTO PUBLIC.NOTA_DE_CREDITO(
	id_nota, autorizacion_sri, monto, id_solicitud_aprobada) VALUES (2, 3, 100, 2);
INSERT INTO PUBLIC.NOTA_DE_CREDITO(
	id_nota, autorizacion_sri, monto, id_solicitud_aprobada) VALUES (3, 1, 30, 3);

-- TABLA SUSTITUCION
INSERT INTO PUBLIC.SUSTITUCION(
	id_sustitucion, id_producto_sustituto, id_solicitud_aprobada,  monto)
	VALUES (1, 11, 4, 52);
INSERT INTO PUBLIC.SUSTITUCION(
	id_sustitucion, id_producto_sustituto, id_solicitud_aprobada,  monto) VALUES (2, 12, 5, 32);
INSERT INTO PUBLIC.SUSTITUCION(
	id_sustitucion, id_producto_sustituto, id_solicitud_aprobada,  monto) VALUES (3, 13, 6, 28);

-- TABLA SOLICITUD RECHAZADA
INSERT INTO public.solicitud_rechazada(
	id_solicitud_rechazada, id_solicitud)
	VALUES (1, 1);
INSERT INTO public.solicitud_rechazada(
	id_solicitud_rechazada, id_solicitud) VALUES (2, 2);
