--CATALOGOS
CREATE TABLE hospital(
	ID_hospital NUMBER(4) NOT NULL,
	nombre VARCHAR2(30) NOT NULL,
	direccion VARCHAR2(30) NOT NULL,
	CONSTRAINT ID_hospital_pk PRIMARY KEY (ID_hospital)
);

CREATE TABLE persona(
	ID_persona NUMBER(4) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	curp VARCHAR(25) NOT NULL,
	descrip VARCHAR(30) NOT NULL,
	CONSTRAINT ID_persona_pk PRIMARY KEY (ID_persona)
);

CREATE TABLE edos(
	ID_edos NUMBER(4) NOT NULL,
	clave NUMBER(4) NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	CONSTRAINT UQE_clave UNIQUE (clave),
	CONSTRAINT ID_edos_pk PRIMARY KEY (ID_edos)
);

CREATE TABLE marca(
	ID_marca NUMBER(4) NOT NULL,
	clave NUMBER(4) NOT NULL,
	descripcion VARCHAR(20) NOT NULL,
	CONSTRAINT UQM_clave UNIQUE (clave),
	CONSTRAINT ID_marca_pk PRIMARY KEY (ID_marca)
);

CREATE TABLE modelo(
	ID_modelo NUMBER(4) NOT NULL,
	clave NUMBER(4) NOT NULL,
	descripcion VARCHAR(20) NOT NULL,
	CONSTRAINT UQMO_clave UNIQUE (clave),
	CONSTRAINT ID_modelo_pk PRIMARY KEY (ID_modelo)
);

CREATE TABLE seguro(
	ID_seguro NUMBER(4) NOT NULL,
	clave NUMBER(4) NOT NULL,
	descripcion VARCHAR(20) NOT NULL,
	CONSTRAINT UQS_clave UNIQUE (clave),
	CONSTRAINT ID_seguro_pk PRIMARY KEY (ID_seguro)
);

--Demás entidades
CREATE TABLE cliente(
	ID_cliente NUMBER(4) NOT NULL,
	nombre VARCHAR2(30) NOT NULL,
	ap_paterno VARCHAR2(30) NOT NULL,
	ap_materno VARCHAR2(30),
	rfc VARCHAR2(10) UNIQUE,
	email VARCHAR2(30) NOT NULL,
	direccion VARCHAR2(30),
  CONSTRAINT ID_cliente_pk PRIMARY KEY (ID_cliente)
);

CREATE TABLE cotizacion(
	ID_cotizacion NUMBER(4) NOT NULL,
	ID_cliente NUMBER(4) NOT NULL,
	fecha_cot DATE NOT NULL,
	ID_seguro NUMBER(4) NOT NULL,
	ID_marca NUMBER(4) NOT NULL,
	ID_edos NUMBER(4) NOT NULL,
	anio_auto NUMBER(4) NOT NULL,
	cp NUMBER(5) NOT NULL,
	fecha_nac DATE NOT NULL,
	--edad_conductor AS ((sysdate - fecha_nac)/360),
	edad_conductor NUMBER(2),
	CONSTRAINT ID_edos_fk_cot FOREIGN KEY (ID_edos) REFERENCES edos(ID_edos),
	CONSTRAINT ID_marca_fk_cot FOREIGN KEY (ID_marca) REFERENCES marca(ID_marca),
	CONSTRAINT ID_seguro_fk_cot FOREIGN KEY (ID_seguro) REFERENCES seguro(ID_seguro),
	CONSTRAINT ID_modelo_fk_cot FOREIGN KEY (ID_modelo) REFERENCES modelo(ID_modelo),
	CONSTRAINT ID_cliente_fk_cot FOREIGN KEY (ID_cliente) REFERENCES cliente(ID_cliente),
	--CONSTRAINT UQCOT_ID_cliente UNIQUE (ID_cliente),
	CONSTRAINT ID_cotizacion_pk PRIMARY KEY (ID_cotizacion)
);

ALTER TABLE cotizacion
MODIFY fecha_cot DEFAULT sysdate;


CREATE TABLE pago(
	ID_pago NUMBER(4) NOT NULL,
	num_tarjeta NUMBER(8) NOT NULL,
	tipo VARCHAR2(10) NOT NULL,
	mes VARCHAR2(10) NOT NULL,
	anio_expir NUMBER(4) NOT NULL,
	num_secur NUMBER(3) NOT NULL,
  CONSTRAINT UQPA_num_tarjeta UNIQUE (num_tarjeta),
	CONSTRAINT ID_pago_pk PRIMARY KEY (ID_pago)
);

CREATE TABLE poliza(
	ID_poliza NUMBER(4) NOT NULL,
  --FK
  ID_cotizacion NUMBER(4) NOT NULL,
  ID_cliente NUMBER(4) NOT NULL,
	folio_poliza NUMBER(5) NOT NULL,
	hora_ini_pol DATE NOT NULL,
	placas VARCHAR2(10) NOT NULL,
	num_serie NUMBER(5) NOT NULL,
	CONSTRAINT UCPOL_folio_poliza UNIQUE (folio_poliza),
	CONSTRAINT ID_cotizacion_fk_poli FOREIGN Key (ID_cotizacion) REFERENCES cotizacion(ID_cotizacion),
	CONSTRAINT ID_cliente_fk_poli FOREIGN KEY (ID_cliente) REFERENCES cliente(ID_cliente),
	CONSTRAINT ID_poliza_pk PRIMARY KEY (ID_poliza)
);


ALTER TABLE poliza
--fecha_creacion DATE DEFAULT SYSDATE
MODIFY hora_ini_pol DEFAULT sysdate;

CREATE TABLE siniestro(
	ID_siniestro NUMBER(4) NOT NULL,
  ID_poliza NUMBER(4) NOT NULL,
	fecha_hora DATE DEFAULT SYSDATE,
  ID_s_colision NUMBER(4),
	ID_s_social NUMBER(4),
	ID_s_material NUMBER(4),
	direccion_sin VARCHAR2(30)NOT NULL,
	--FOTO NOT NULL,
	CONSTRAINT ID_poliza_fk_sin FOREIGN KEY (ID_poliza) REFERENCES poliza(ID_poliza),
	CONSTRAINT ID_s_colision_fk_sin FOREIGN KEY (ID_s_colision) REFERENCES s_colision(ID_s_colision),
	CONSTRAINT ID_s_social_fk_sin FOREIGN KEY (ID_s_social) REFERENCES s_social(ID_s_social),
	CONSTRAINT ID_s_material_fk_sin FOREIGN KEY (ID_s_material) REFERENCES s_material(ID_s_material),
	CONSTRAINT ID_siniestro_pk PRIMARY KEY (ID_siniestro)
);

CREATE TABLE s_colision(
  ID_s_colision NUMBER(4) NOT NULL,
	num_repo NUMBER(8) NOT NULL,
	bandera VARCHAR2 (2) NOT NULL,
  --FK MArca
  ---FK Modelo
	num_serie NUMBER(8) NOT NULL,
	CONSTRAINT ID_marca_fk_col FOREIGN KEY (ID_marca) REFERENCES marca(ID_marca),
	CONSTRAINT ID_modelo_fk_col FOREIGN KEY (ID_modelo) REFERENCES modelo(ID_modelo),
	CONSTRAINT ID_s_colision_pk PRIMARY KEY (ID_s_colision)
);

ALTER TABLE s_colision
ADD CONSTRAINT ck_s_colision_bandera
CHECK (bandera IN ('SI','NO'));
--------------------------------------

CREATE TABLE s_social(
  ID_s_social NUMBER(4) NOT NULL,
  bandera VARCHAR2 (2) NOT NULL,
	ID_hospital NUMBER(8),
	ID_persona NUMBER(8),
	CONSTRAINT ID_hospital_fk_SS FOREIGN KEY (ID_hospital) REFERENCES hospital(ID_hospital),
	CONSTRAINT ID_persona_fk_SS FOREIGN KEY (ID_persona) REFERENCES persona(ID_persona),
	CONSTRAINT ID_s_social_pk PRIMARY KEY (ID_s_social)
);

ALTER TABLE s_social
ADD CONSTRAINT ck_s_social_bandera
CHECK (bandera IN ('SI','NO'));

CREATE TABLE s_material(
  ID_s_material NUMBER(4) NOT NULL,
  --IMAGEN JPG
  CONSTRAINT ID_s_material_pk PRIMARY KEY (ID_s_material)
);
