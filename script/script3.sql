-- Crear Rol DBA
CREATE ROLE DataBaseAnalist;
GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE PROCEDURE, ALTER SESSION,
      CREATE ANY TABLE, DROP ANY TABLE, ALTER ANY TABLE,
      SELECT ANY TABLE, UPDATE ANY TABLE, DELETE ANY TABLE, INSERT ANY TABLE
      TO DataBaseAnalist;

-- Crear Rol Desarrollador
CREATE ROLE Desarrollador;
GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE PROCEDURE, ALTER SESSION,
      ALTER ANY TABLE, DROP ANY VIEW, CREATE ANY VIEW,
      INSERT ANY TABLE, UPDATE ANY TABLE
      TO Desarrollador;

-- Crear Rol Analista
CREATE ROLE Analista;
GRANT CREATE SESSION, SELECT ANY TABLE
      TO Analista;

-- Crear Rol Usuario
CREATE ROLE Usuario;
GRANT CREATE SESSION, SELECT ON CLIENTE
      TO Usuario;

-- Crear Rol Administrador
CREATE ROLE Administrador;
GRANT CREATE SESSION, SELECT ANY TABLE, BACKUP ANY TABLE,
      ALTER DATABASE, EXECUTE ANY PROCEDURE
      TO Administrador;

alter user SYS account lock
/

alter user SYS identified  by "GUATEMALA123$..";
/

alter user SYSTEM account lock
/

alter user SYSTEM identified by "GUATEMALA123$.."
/

GRANT DBA TO usuario_dba;
GRANT Desarrollador TO usuario_desarrollador;
GRANT Analista TO usuario_analista;
GRANT Usuario TO usuario_final;
GRANT Administrador TO usuario_admin;

CREATE USER nuevo_usuario IDENTIFIED BY "Seguridad123#..";

/*Usuario 1*/
CREATE USER usuario1 IDENTIFIED BY contrasena1;
GRANT CREATE SESSION TO usuario1;
GRANT CONNECT TO usuario1;
GRANT RESOURCE TO usuario1;

/*Usuario 2*/
CREATE USER usuario2 IDENTIFIED BY contrasena2;
GRANT CREATE SESSION TO usuario2;
GRANT CONNECT TO usuario2;
GRANT RESOURCE TO usuario2;

/*Usuario 3*/
CREATE USER usuario3 IDENTIFIED BY contrasena3;
GRANT CREATE SESSION TO usuario3;
GRANT CONNECT TO usuario3;
GRANT RESOURCE TO usuario3;
