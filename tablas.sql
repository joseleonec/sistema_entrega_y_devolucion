CREATE TABLE "parroquia" (
  "id_parroquia" serial ,
  "nombre_parroquia" VARCHAR (50),
  PRIMARY KEY ("id_parroquia")
);

CREATE TABLE "empresa_de_envios" (
  "id_empresa" serial ,
  "razon_social" VARCHAR (50),
  "min_paquetes_por_viaje" integer,
  "costo_km_extra" numeric(2),
  "costo_kg_extra" numeric(2),
  "peso_maximo_por_paquete" numeric(2),
  PRIMARY KEY ("id_empresa")
);


CREATE TABLE "tarifa" (
  "id_parroquia" integer,
  "id_empresa" integer,
  "costo" numeric(2),
  "minutos_estimados" numeric(2),
  PRIMARY KEY ("id_parroquia", "id_empresa")
);


CREATE TABLE "entrega_en_bodega" (
  "id_entrega" integer,
  "id_ubicacion" integer,
  PRIMARY KEY ("id_entrega")
);

CREATE TABLE "sustitucion" (
  "id_devolucion" integer,
  "id_productoDevuelto" integer,
  "id_productoSustituto" integer,
  "monto($)" VARCHAR (50),
  PRIMARY KEY ("id_devolucion")
);

CREATE TABLE "solicitud_devolucion" (
  "id _solicitud" serial ,
  "fecha" DATE ,
  "id_cliente" integer,
  "id_factura" integer,
  PRIMARY KEY ("id _solicitud")
);

CREATE TABLE "producto_devuelto_factura" (
  "id_factura" serial,
  "id_devolucion" numeric(2),
  PRIMARY KEY ("id_factura", "id_devolucion")
);


CREATE TABLE "factura" (
  "id_factura" serial,
  "costo_entrega" numeric(2),
  PRIMARY KEY ("id_factura")
);

CREATE TABLE "entrega_a_domicilio" (
  "id_entrega" serial ,
  "id_ubicacion" integer,
  "id_empresa" integer,
  "calle_principal" VARCHAR (50),
  PRIMARY KEY ("id_entrega")
);

CREATE TABLE "producto" (
  "id_producto" serial,
  "peso" numeric(2),
  PRIMARY KEY ("id_producto")
);

CREATE TABLE "ubicacion" (
  "id_ubicacion" serial ,
  "id_parroquia" integer,
  "Referencia" VARCHAR (100),
  "calle_principal" VARCHAR (50),
  "calle_secundaria" VARCHAR (50),
  "Numero_de_domicilo" VARCHAR (10),
  PRIMARY KEY ("id_ubicacion")
);

CREATE TABLE "entrega" (
  "id_entrega" serial ,
  "id_factura" integer,
  "estado" VARCHAR (10),
  "peso" numeric(2),
  PRIMARY KEY ("id_entrega")
);


CREATE TABLE "nota_de_credito" (
  "id_devolucion" integer,
  "id_nota" serial,
  "monto($)" numeric(2),
  "#AutorizacionSRI" VARCHAR (100),
  PRIMARY KEY ("id_devolucion", "id_nota")
);

CREATE TABLE "producto_solicitud_devolucion" (
  "id_producto" integer,
  "id _solicitud" integer,
  "motivoDevolucion" numeric(2),
  "explicacion" VARCHAR (50),
  "estadoAprobación" VARCHAR (50),
  PRIMARY KEY ("id_producto", "id _solicitud")
);

CREATE TABLE "cliente" (
  "id_cliente" serial ,
  "nombre" VARCHAR (100),
  "saldo" numeric(2),
  PRIMARY KEY ("id_cliente")
);

CREATE TABLE "producto_devuelto" (
  "id_devolucion" serial,
  "id_factura" integer,
  PRIMARY KEY ("id_devolucion")
);

CREATE TABLE "producto_solicitud_devolucion" (
  "id_producto" integer,
  "id _solicitud" integer,
  "id_devolucion" integer,
  PRIMARY KEY ("id_producto", "id _solicitud", "id_devolucion")
);

CREATE TABLE "cliente_ubicacion" (
  "id_cliente" integer,
  "id_ubicacion" integer,
  PRIMARY KEY ("id_cliente", "id_ubicacion")
);
