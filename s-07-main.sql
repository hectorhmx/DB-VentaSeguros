
--Creamos las sesiones
Prompt BIENVENIDO A VENTA de SEGUROS para AUTOS.
--Prompt PRIMERO SE CONECTARA CON LA BASE DE DATOS
--connect sys/system as sysdba

connect EC_proyect_admin/1234
Prompt Creando tablas
@s-02-entidades.sql
--@s-03-tablas-temporales.sql
@s-05-secuencias.sql
@s-06-carga-inicial.sql
Prompt Carga de datos
--@s-
Prompt Listo
