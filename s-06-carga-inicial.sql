INSERT INTO incidencia (descripcion,fecha_registro,tipo,descuento) VALUES ('asdfggggsa', TO_DATE('13/03/2018 01:15:30', 'dd/mm/yyyy hh24:mi:ss'), 1, 15.00);

INSERT INTO hospital (ID_Hospital,nombre,direccion) VALUES (shospital.NEXTVAL,'JUAREZ DE MEXICO','CUAJIMALPA');
INSERT INTO hospital (ID_Hospital,nombre,direccion) VALUES (shospital.NEXTVAL,'LA RAZA','CENTRO');
INSERT INTO hospital (ID_Hospital,nombre,direccion) VALUES (shospital.NEXTVAL,'SIGLO 21','NORTE DF');
INSERT INTO hospital (ID_Hospital,nombre,direccion) VALUES (shospital.NEXTVAL,'CHILDREN','ESTE');
INSERT INTO hospital (ID_Hospital,nombre,direccion) VALUES (shospital.NEXTVAL,'REAL DE JALAPA','SUR');


INSERT INTO persona (ID_persona,nombre,curp,descrip,) VALUES (spersona.NEXTVAL,'LUPITA','34234gsddf','C murio');
INSERT INTO persona (ID_persona,nombre,curp,descrip,) VALUES (spersona.NEXTVAL,'JUAN','324bwehh4oh','Mas muerto que mi proyecto');
INSERT INTO persona (ID_persona,nombre,curp,descrip,) VALUES (spersona.NEXTVAL,'TEOFILO DE LAS NIEVES','3249u23hg49','Perdió una pierna');
INSERT INTO persona (ID_persona,nombre,curp,descrip,) VALUES (spersona.NEXTVAL,'ZOILA FLOR','234u23v479by','Estable');
INSERT INTO persona (ID_persona,nombre,curp,descrip,) VALUES (spersona.NEXTVAL,'HECTOR DANIEL','234hi23uh4u','SE MURIO PORQUE NO ESTUDIO PARA SUS EXAMENES, Y ni así acabo el proyecto');

INSERT INTO edos (ID_edos,clave,nombre) VALUES (sedos.NEXTVAL,sedos.NEXTVAL,'DF');
INSERT INTO edos (ID_edos,clave,nombre) VALUES (sedos.NEXTVAL,sedos.NEXTVAL,'GUERRERO');
INSERT INTO edos (ID_edos,clave,nombre) VALUES (sedos.NEXTVAL,sedos.NEXTVAL,'PUEBLA');
INSERT INTO edos (ID_edos,clave,nombre) VALUES (sedos.NEXTVAL,sedos.NEXTVAL,'ZACATECAS');
INSERT INTO edos (ID_edos,clave,nombre) VALUES (sedos.NEXTVAL,sedos.NEXTVAL,'QUINTANAROO');

INSERT INTO marca (ID_marca,clave,descripcion) VALUES (smarca.NEXTVAL,2345,'FUCHIBICHI');
INSERT INTO marca (ID_marca,clave,descripcion) VALUES (smarca.NEXTVAL,2334,'YAMAHA');
INSERT INTO marca (ID_marca,clave,descripcion) VALUES (smarca.NEXTVAL,1234,'AUDY');
INSERT INTO marca (ID_marca,clave,descripcion) VALUES (smarca.NEXTVAL,8789,'HONDA');
INSERT INTO marca (ID_marca,clave,descripcion) VALUES (smarca.NEXTVAL,5345,'VOLARIS');

INSERT INTO modelo (ID_modelo,clave,descripcion) VALUES (smodelo.NEXTVAL,6575,'Esta chido');
INSERT INTO modelo (ID_modelo,clave,descripcion) VALUES (smodelo.NEXTVAL,2344,'MEDIO FEO');
INSERT INTO modelo (ID_modelo,clave,descripcion) VALUES (smodelo.NEXTVAL,3242,'LENTO');
INSERT INTO modelo (ID_modelo,clave,descripcion) VALUES (smodelo.NEXTVAL,3242,'RAPIDO');
INSERT INTO modelo (ID_modelo,clave,descripcion) VALUES (smodelo.NEXTVAL,3242,'YA VALIO');

INSERT INTO seguro(ID_seguro,clave,descripcion) VALUES(sseguro.NEXTVAL,'El aguila, es muy bueno y barato');
INSERT INTO seguro(ID_seguro,clave,descripcion) VALUES(sseguro.NEXTVAL,'PREBE: EL mejor seguro, porque seguro te mueres');
INSERT INTO seguro(ID_seguro,clave,descripcion) VALUES(sseguro.NEXTVAL,'Barato, cubre las necesidades basicas');
INSERT INTO seguro(ID_seguro,clave,descripcion) VALUES(sseguro.NEXTVAL,'CARO, tendras acceso a  la mas avanzada tecnologia');
INSERT INTO seguro(ID_seguro,clave,descripcion) VALUES(sseguro.NEXTVAL,'TRIPLE PREMIUM ');


INSERT INTO cliente(ID_cliente,nombre,ap_paterno,ap_materno,rfc,email,direccion) VALUES(scliente.NEXTVAL,'PREBE HECTOR','Espino','Rojas',29384930,'hol@gmail.com','Mi casa');
INSERT INTO cliente(ID_cliente,nombre,ap_paterno,ap_materno,rfc,email,direccion) VALUES(scliente.NEXTVAL,'PREBE ALICIA','GARCIA','Carballido',29384930,'hol@gmail.com','Mi casa');
INSERT INTO cliente(ID_cliente,nombre,ap_paterno,ap_materno,rfc,email,direccion) VALUES(scliente.NEXTVAL,'PREBE MACHI','QUIEN SABE','Ni idea',29384930,'hol@gmail.com','Mi casa');
INSERT INTO cliente(ID_cliente,nombre,ap_paterno,ap_materno,rfc,email,direccion) VALUES(scliente.NEXTVAL,'PREBE PATO','PATISH','DE LA PATISH',29384930,'hol@gmail.com','Mi casa');
INSERT INTO cliente(ID_cliente,nombre,ap_paterno,ap_materno,rfc,email,direccion) VALUES(scliente.NEXTVAL,'PREBE MAURICIO','LOPEZ','Ruiz',29384930,'hol@gmail.com','Mi casa');

INSERT INTO cotizacion(ID_cotizacion,ID_cliente,fecha_cot,ID_seguro,ID_marca,ID_edos,anio_auto,cp,fecha_nac,edad_conductor) VALUES(scotizacion.NEXTVAL,1,SYSDATE,4,1,1,234123,TO_DATE('13/03/2018', 'dd/mm/yyyy'),45);
INSERT INTO cotizacion(ID_cotizacion,ID_cliente,fecha_cot,ID_seguro,ID_marca,ID_edos,anio_auto,cp,fecha_nac,edad_conductor) VALUES(scotizacion.NEXTVAL,2,SYSDATE,5,4,4,54647,TO_DATE('1/1/0000', 'dd/mm/yyyy'),67)
INSERT INTO cotizacion(ID_cotizacion,ID_cliente,fecha_cot,ID_seguro,ID_marca,ID_edos,anio_auto,cp,fecha_nac,edad_conductor) VALUES(scotizacion.NEXTVAL,3,SYSDATE,2,3,5,56456,TO_DATE('43/01/1978', 'dd/mm/yyyy'),15)
INSERT INTO cotizacion(ID_cotizacion,ID_cliente,fecha_cot,ID_seguro,ID_marca,ID_edos,anio_auto,cp,fecha_nac,edad_conductor) VALUES(scotizacion.NEXTVAL,4,SYSDATE,1,2,3,1,TO_DATE('23/08/2007', 'dd/mm/yyyy'),34)
INSERT INTO cotizacion(ID_cotizacion,ID_cliente,fecha_cot,ID_seguro,ID_marca,ID_edos,anio_auto,cp,fecha_nac,edad_conductor) VALUES(scotizacion.NEXTVAL,5,SYSDATE,3,5,2,3534,TO_DATE('15/06/2001', 'dd/mm/yyyy'),98)

INSERT INTO pago(ID_Pago,num_tarj,tipo,mes,anio_expir,num_secur) VALUES(spago.NEXTVAL,12331,'AMERICAN XPRESS',TO_DATE('03', 'mm',),2009,123);
INSERT INTO pago(ID_Pago,num_tarj,tipo,mes,anio_expir,num_secur) VALUES(spago.NEXTVAL,43534,'PATITO',TO_DATE('01', 'mm',),2019,345);
INSERT INTO pago(ID_Pago,num_tarj,tipo,mes,anio_expir,num_secur) VALUES(spago.NEXTVAL,47545,'HSBC',TO_DATE('12', 'mm',),2030,634);
INSERT INTO pago(ID_Pago,num_tarj,tipo,mes,anio_expir,num_secur) VALUES(spago.NEXTVAL,76577,'XML',TO_DATE('05', 'mm',),1993,346);
INSERT INTO pago(ID_Pago,num_tarj,tipo,mes,anio_expir,num_secur) VALUES(spago.NEXTVAL,95667,'STDIO',TO_DATE('11', 'mm',),2005,353);
INSERT INTO pago(ID_Pago,num_tarj,tipo,mes,anio_expir,num_secur) VALUES(spago.NEXTVAL,34534,'PREBEMART',TO_DATE('10', 'mm',),2566,396);

INSERT INTO poliza(ID_poliza,ID_cotizacion,ID_cliente,folio_poliza,hora_ini_pol,placas,num_serie) VALUES(spoliza.NEXTVAL,4,1,6543,TO_DATE('00', 'hh24'),2354678,2455);
INSERT INTO poliza(ID_poliza,ID_cotizacion,ID_cliente,folio_poliza,hora_ini_pol,placas,num_serie) VALUES(spoliza.NEXTVAL,5,2,5443,TO_DATE('01', 'hh24'),2366467,5234);
INSERT INTO poliza(ID_poliza,ID_cotizacion,ID_cliente,folio_poliza,hora_ini_pol,placas,num_serie) VALUES(spoliza.NEXTVAL,3,3,2345,TO_DATE('04', 'hh24'),523432,4324);
INSERT INTO poliza(ID_poliza,ID_cotizacion,ID_cliente,folio_poliza,hora_ini_pol,placas,num_serie) VALUES(spoliza.NEXTVAL,1,4,5643,TO_DATE('05', 'hh24'),456546,2345);
INSERT INTO poliza(ID_poliza,ID_cotizacion,ID_cliente,folio_poliza,hora_ini_pol,placas,num_serie) VALUES(sec10.NEXTVAL,2,5,234,TO_DATE('13', 'hh24'),64567,23423);

INSERT INTO siniestro(ID_siniestro,ID_poliza,fecha_hora,ID_s_material,direccion_sin) VALUES(ssiniestro.NEXTVAL,1,TO_DATE('1/02/2014 04:06:55', 'dd/mm/yyyy hh24:mi:ss'),5,'Fuera de la escuela');
INSERT INTO siniestro(ID_siniestro,ID_poliza,fecha_hora,ID_s_material,direccion_sin) VALUES(ssiniestro.NEXTVAL,2,TO_DATE('1/02/2014 04:06:55', 'dd/mm/yyyy hh24:mi:ss'),2,);
INSERT INTO siniestro(ID_siniestro,ID_poliza,fecha_hora,Id_s_social,ID_s_material,direccion_sin) VALUES(ssiniestro.NEXTVAL,3,TO_DATE('1/02/2014 04:06:55', 'dd/mm/yyyy hh24:mi:ss'),4,1,'SOLO FUE UN SUSTO');
INSERT INTO siniestro(ID_siniestro,ID_poliza,fecha_hora,ID_s_colision,ID_s_material,direccion_sin) VALUES(ssiniestro.NEXTVAL,4,TO_DATE('1/02/2014 04:06:55', 'dd/mm/yyyy hh24:mi:ss'),5,5,'FUE CONSIDERABLE');
INSERT INTO siniestro(ID_siniestro,ID_poliza,fecha_hora,ID_s_colision,Id_s_social,ID_s_material,direccion_sin) VALUES(ssiniestro.NEXTVAL,5,TO_DATE('1/02/2014 04:06:55', 'dd/mm/yyyy hh24:mi:ss'),2,4,1,'FUE CATASTROFICO, PERDIDA TOTAL HUMANA Y MATERIAL');
