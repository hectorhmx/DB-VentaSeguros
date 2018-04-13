CREATE USER EC_proyect_admin IDENTIFIED BY 1234 QUOTA UNLIMITED ON USERS;
CREATE USER EC_proyect_invit IDENTIFIED BY 4321 QUOTA UNLIMITED ON USERS;

--Creamos los roles
CREATE ROLE ROL_ADMIN;
CREATE ROLE ROL_INVITADO;

GRANT CONNECT, CREATE SESSION TO ROL_INVITADO;
GRANT ALL PRIVILEGES TO ROL_ADMIN;

GRANT ROL_ADMIN TO EC_proyect_admin;
GRANT ROL_INVITADO TO EC_proyect_invit;

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
