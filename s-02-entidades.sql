CREATE TABLE cliente(
	ID_cliente NUMBER(4) NOT NULL UNIQUE,
	nombre VARCHAR2(30) NOT NULL,
	ap_paterno VARCHAR2(30) NOT NULL,
	ap_materno VARCHAR2(30),
	rfc VARCHAR2(10) 	UNIQUE,
	email VARCHAR2(30) NOT NULL,
	direccion VARCHAR2(30),
  CONSTRAINT ID_cliente_pk PRIMARY KEY (ID_cliente)
);




CREATE TABLE cotizacion(
	ID_cotizacion NUMBER(4) NOT NULL,
	ID_client NUMBER(4) NOT NULL,
	fecha_cot DATE NOT NULL,
	--tipo_seg
	--Marca
	--Modelo
	anio_auto NUMBER(4) NOT NULL,
	cp NUMBER(5) NOT NULL,
	--edo
	fecha_nac DATE NOT NULL,
	edad_conductor (sysdate - fecha_nac)/360 VIRTUAL NOT NULL,
	--Anadir llave foranea
	CONSTRAINT ID_cotizacion_pk PRIMARY KEY (ID_cotizacion)
);
--
ALTER TABLE cotizacion ADD
CONSTRAINT ID_cliente_fk
FOREIGN KEY (ID_cliente)
REFERENCES cliente(ID_cliente);

ALTER TABLE cotizacion
MODIFY fecha_cot DEFAULT sysdate;

CREATE TABLE pago(
	ID_pago NUMBER(4) NOT NULL,
	num_tarjeta NUMBER(8) NOT NULL,
	tipo VARCHAR2(10) NOT NULL,
	mes VARCHAR2(10) NOT NULL,
	anio_expir NUMBER(4) NOT NULL,
	num_secur NUMBER(3) NOT NULL,

	CONSTRAINT UC_cotizacion UNIQUE (num_tarjeta,ID_pago)
	CONSTRAINT ID_pago_pk PRIMARY KEY (ID_pago)
);

CREATE TABLE poliza(
	ID_poliza NUMBER(4) NOT NULL,
  --FK
  ID_cotizacion NUMBER(4) NOT NULL,
  ID_cliente NUMBER(4) NOT NULL,
	folio_poliza NUMBER(5) NOT NULL,
	hora_ini_pol DATE NOT NULL
	placas VARCHAR2(10) NOT NULL,
	num_serie NUMBER(5) NOT NULL,
	CONSTRAINT ID_poliza_pk PRIMARY KEY (ID_poliza),
	CONSTRAINT UC_poliza UNIQUE (folio_poliza, placas,num_serie) /////////////
)

ALTER TABLE poliza ADD
CONSTRAINT ID_cotizacion_fk,
FOREIGN Key (ID_cotizacion)
REFERENCES cotizacion(ID_cotizacion);

ALTER TABLE poliza ADD
CONSTRAINT ID_cliente_fk
FOREIGN KEY (ID_cliente)
REFERENCES cliente(ID_cliente);

ALTER TABLE poliza
MODIFY hora_ini_pol DEFAULT sysdate;

CREATE TABLE siniestro(
	ID_siniestro NUMBER(4) NOT NULL,
  ID_poliza NUMBER(4) NOT NULL,
	fecha_hora DATE NOT NULL DEFAULT sysdate,--Default sysdate
  ID_s_colision NUMBER(4),
	ID_s_social NUMBER(4),
	ID_s_material NUMBER(4),
	direccion_sin VARCHAR2(30)NOT NULL,
	--FOTO NOT NULL,
	CONSTRAINT ID_siniestro_pk PRIMARY KEY (ID_siniestro),
	CONSTRAINT UC_siniestro UNIQUE (ID_siniestro)
);

ALTER TABLE siniestro ADD
CONSTRAINT ID_poliza_fk
FOREIGN KEY (ID_poliza),
CONSTRAINT REFERENCES poliza(ID_poliza);

ALTER TABLE siniestro ADD
CONSTRAINT ID_s_colision_fk
FOREIGN KEY (ID_s_colision),
CONSTRAINT REFERENCES s_colision(ID_s_colision);

ALTER TABLE siniestro ADD
CONSTRAINT ID_s_social_fk
FOREIGN KEY (ID_s_social),
CONSTRAINT REFERENCES s_social(ID_s_social);

ALTER TABLE siniestro ADD
CONSTRAINT ID_s_material_fk
FOREIGN KEY (ID_s_material),
CONSTRAINT REFERENCES s_material(ID_s_material);

CREATE TABLE s_colision(
  ID_s_colision NUMBER(4)   NOT NULL PRIMARY KEY,
	num_repo NUMBER(8) NOT NULL,
	--bandera, check,
  --FK MArca
  ---FK Modelo
	num_serie NUMBER(8) NOT NULL
	CONSTRAINT UC_s_colision UNIQUE (num_repo,num_serie)
);

CREATE TABLE s_social(
  ID_s_social NUMBER(4) NOT NULL PRIMARY KEY,
--bandera si es necesario usar
  --FK de Hospoital
  --FK persona
  --
);

CREATE TABLE s_material(
ID_s_material NUMBER(4) NOT NULL PRIMARY KEY,
--IMAGEN JPG
):

CREATE TABLE pago_tarj(
	ID_pago_tarj NUMBER(4) NOT NULL PRIMARY KEY, --¿Se necesita autoincrementar?
  tipo_tarj VARCHAR2(10) NOT NULL,
  anio_mes DATE NOT NULL,
  num_seg NUMBER(4)NOT NULL,
);

---CATALOGOS FALTANTES: ASEGURADORAS (SIESTRO DE COLICION),ESTADOS,TIPO SE SEGURO, MODELO DE AUTOS,,MARCA DE AUTOS,HOSPITAL
