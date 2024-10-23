-- =====================================================
-- Secuencias para autoincremento
-- =====================================================

CREATE SEQUENCE agencia_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE boveda_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE cartera_clientes_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE cliente_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE cuenta_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE departamento_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE empleado_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE estado_financiero_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE estado_prestamo_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE estado_tarjeta_credito_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE estado_tarjeta_debito_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE municipio_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE planilla_empleados_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE prestamo_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE rol_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE tarjeta_credito_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE tarjeta_debito_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE tipo_agencia_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE tipo_cartera_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE tipo_cuenta_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE tipo_transaccion_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE transaccion_seq START WITH 1 INCREMENT BY 1;

-- =====================================================
-- Triggers para autoincremento
-- =====================================================

-- Trigger para agencia
CREATE OR REPLACE TRIGGER agencia_bi_trg
BEFORE INSERT ON agencia
FOR EACH ROW
BEGIN
    SELECT agencia_seq.NEXTVAL INTO :NEW.id_agencia FROM dual;
END;
/
 
-- Trigger para boveda
CREATE OR REPLACE TRIGGER boveda_bi_trg
BEFORE INSERT ON boveda
FOR EACH ROW
BEGIN
    SELECT boveda_seq.NEXTVAL INTO :NEW.id_boveda FROM dual;
END;
/

-- Trigger para cartera_clientes
CREATE OR REPLACE TRIGGER cartera_clientes_bi_trg
BEFORE INSERT ON cartera_clientes
FOR EACH ROW
BEGIN
    SELECT cartera_clientes_seq.NEXTVAL INTO :NEW.id_cartera FROM dual;
END;
/

-- Trigger para cliente
CREATE OR REPLACE TRIGGER cliente_bi_trg
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
    SELECT cliente_seq.NEXTVAL INTO :NEW.id_cliente FROM dual;
END;
/

-- Trigger para cuenta
CREATE OR REPLACE TRIGGER cuenta_bi_trg
BEFORE INSERT ON cuenta
FOR EACH ROW
BEGIN
    SELECT cuenta_seq.NEXTVAL INTO :NEW.id_cuenta FROM dual;
END;
/

-- Trigger para departamento
CREATE OR REPLACE TRIGGER departamento_bi_trg
BEFORE INSERT ON departamento
FOR EACH ROW
BEGIN
    SELECT departamento_seq.NEXTVAL INTO :NEW.id_departamento FROM dual;
END;
/

-- Trigger para empleado
CREATE OR REPLACE TRIGGER empleado_bi_trg
BEFORE INSERT ON empleado
FOR EACH ROW
BEGIN
    SELECT empleado_seq.NEXTVAL INTO :NEW.id_empleado FROM dual;
END;
/

-- Trigger para estado_financiero
CREATE OR REPLACE TRIGGER estado_financiero_bi_trg
BEFORE INSERT ON estado_financiero
FOR EACH ROW
BEGIN
    SELECT estado_financiero_seq.NEXTVAL INTO :NEW.id_estado_financiero FROM dual;
END;
/

-- Trigger para estado_prestamo
CREATE OR REPLACE TRIGGER estado_prestamo_bi_trg
BEFORE INSERT ON estado_prestamo
FOR EACH ROW
BEGIN
    SELECT estado_prestamo_seq.NEXTVAL INTO :NEW.id_estado_prestamo FROM dual;
END;
/

-- Trigger para estado_tarjeta_credito
CREATE OR REPLACE TRIGGER estado_tarjeta_credito_bi_trg
BEFORE INSERT ON estado_tarjeta_credito
FOR EACH ROW
BEGIN
    SELECT estado_tarjeta_credito_seq.NEXTVAL INTO :NEW.id_estado_tarjeta_cr FROM dual;
END;
/

-- Trigger para estado_tarjeta_debito
CREATE OR REPLACE TRIGGER estado_tarjeta_debito_bi_trg
BEFORE INSERT ON estado_tarjeta_debito
FOR EACH ROW
BEGIN
    SELECT estado_tarjeta_debito_seq.NEXTVAL INTO :NEW.id_estado_tarjeta_db FROM dual;
END;
/

-- Trigger para municipio
CREATE OR REPLACE TRIGGER municipio_bi_trg
BEFORE INSERT ON municipio
FOR EACH ROW
BEGIN
    SELECT municipio_seq.NEXTVAL INTO :NEW.id_municipio FROM dual;
END;
/

-- Trigger para planilla_empleados
CREATE OR REPLACE TRIGGER planilla_empleados_bi_trg
BEFORE INSERT ON planilla_empleados
FOR EACH ROW
BEGIN
    SELECT planilla_empleados_seq.NEXTVAL INTO :NEW.id_planilla FROM dual;
END;
/

-- Trigger para prestamo
CREATE OR REPLACE TRIGGER prestamo_bi_trg
BEFORE INSERT ON prestamo
FOR EACH ROW
BEGIN
    SELECT prestamo_seq.NEXTVAL INTO :NEW.id_prestamo FROM dual;
END;
/

-- Trigger para rol
CREATE OR REPLACE TRIGGER rol_bi_trg
BEFORE INSERT ON rol
FOR EACH ROW
BEGIN
    SELECT rol_seq.NEXTVAL INTO :NEW.id_rol FROM dual;
END;
/

-- Trigger para tarjeta_credito
CREATE OR REPLACE TRIGGER tarjeta_credito_bi_trg
BEFORE INSERT ON tarjeta_credito
FOR EACH ROW
BEGIN
    SELECT tarjeta_credito_seq.NEXTVAL INTO :NEW.id_tarjeta_cr FROM dual;
END;
/

-- Trigger para tarjeta_debito
CREATE OR REPLACE TRIGGER tarjeta_debito_bi_trg
BEFORE INSERT ON tarjeta_debito
FOR EACH ROW
BEGIN
    SELECT tarjeta_debito_seq.NEXTVAL INTO :NEW.id_tarjeta_db FROM dual;
END;
/

-- Trigger para tipo_agencia
CREATE OR REPLACE TRIGGER tipo_agencia_bi_trg
BEFORE INSERT ON tipo_agencia
FOR EACH ROW
BEGIN
    SELECT tipo_agencia_seq.NEXTVAL INTO :NEW.id_tipo_sucursal FROM dual;
END;
/

-- Trigger para tipo_cartera
CREATE OR REPLACE TRIGGER tipo_cartera_bi_trg
BEFORE INSERT ON tipo_cartera
FOR EACH ROW
BEGIN
    SELECT tipo_cartera_seq.NEXTVAL INTO :NEW.id_tipo_cartera FROM dual;
END;
/

-- Trigger para tipo_cuenta
CREATE OR REPLACE TRIGGER tipo_cuenta_bi_trg
BEFORE INSERT ON tipo_cuenta
FOR EACH ROW
BEGIN
    SELECT tipo_cuenta_seq.NEXTVAL INTO :NEW.id_tipo_cuenta FROM dual;
END;
/

-- Trigger para tipo_transaccion
CREATE OR REPLACE TRIGGER tipo_transaccion_bi_trg
BEFORE INSERT ON tipo_transaccion
FOR EACH ROW
BEGIN
    SELECT tipo_transaccion_seq.NEXTVAL INTO :NEW.id_tipo_transaccion FROM dual;
END;
/

-- Trigger para transaccion
CREATE OR REPLACE TRIGGER transaccion_bi_trg
BEFORE INSERT ON transaccion
FOR EACH ROW
BEGIN
    SELECT transaccion_seq.NEXTVAL INTO :NEW.id_transaccion FROM dual;
END;
/

-- =====================================================
-- Creación de Tablas con Timestamps
-- =====================================================

-- Crear tabla agencia
CREATE TABLE agencia (
    id_agencia             INTEGER NOT NULL,
    nombre                 VARCHAR2(50 CHAR) NOT NULL,
    tipo_agencia           VARCHAR2(20 CHAR) NOT NULL,
    telefono               VARCHAR2(30 CHAR) NOT NULL,
    id_municipio           INTEGER NOT NULL,
    id_tipo_sucursal       INTEGER NOT NULL, 
    id_estado_financiero   INTEGER NOT NULL,
    id_boveda              INTEGER NOT NULL,
    fecha_creacion         TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion    TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Crear índices únicos para agencia
CREATE UNIQUE INDEX agencia_idx_estado_financiero ON agencia ( id_estado_financiero ASC );
CREATE UNIQUE INDEX agencia_idx_boveda ON agencia ( id_boveda ASC );

-- Agregar primary key a agencia
ALTER TABLE agencia ADD CONSTRAINT agencia_pk PRIMARY KEY ( id_agencia );

-- Crear tabla boveda
CREATE TABLE boveda (
    id_boveda          INTEGER NOT NULL,
    fondos_disponibles FLOAT(15) NOT NULL,
    fecha_creacion     TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a boveda
ALTER TABLE boveda ADD CONSTRAINT boveda_pk PRIMARY KEY ( id_boveda );

-- Crear tabla cartera_clientes
CREATE TABLE cartera_clientes (
    id_cartera         INTEGER NOT NULL,
    id_tipo_cartera    INTEGER NOT NULL,
    id_agencia         INTEGER NOT NULL,
    id_cliente         INTEGER NOT NULL,
    fecha_creacion     TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Crear índices únicos para cartera_clientes
CREATE UNIQUE INDEX cartera_clientes_idx_tipo_cartera ON cartera_clientes ( id_tipo_cartera ASC );
CREATE UNIQUE INDEX cartera_clientes_idx_agencia ON cartera_clientes ( id_agencia ASC );

-- Agregar primary key a cartera_clientes
ALTER TABLE cartera_clientes ADD CONSTRAINT cartera_clientes_pk PRIMARY KEY ( id_cartera );

-- Crear tabla cliente
CREATE TABLE cliente (
    id_cliente         INTEGER NOT NULL,
    nombre             VARCHAR2(50 CHAR) NOT NULL,
    apellido           VARCHAR2(50 CHAR) NOT NULL,
    telefono           VARCHAR2(30 CHAR) NOT NULL,
    direccion          VARCHAR2(100 CHAR) NOT NULL,
    id_cuenta          INTEGER NOT NULL,
    fecha_creacion     TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a cliente
ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( id_cliente );

-- Crear tabla cuenta
CREATE TABLE cuenta (
    id_cuenta       INTEGER NOT NULL,
    id_cliente      INTEGER NOT NULL,
    id_tipo_cuenta  INTEGER NOT NULL,
    num_cuenta      INTEGER NOT NULL,
    saldo           FLOAT(15) NOT NULL,
    id_agencia      INTEGER,
    fecha_creacion  TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a cuenta
ALTER TABLE cuenta ADD CONSTRAINT cuenta_pk PRIMARY KEY ( id_cuenta );

-- Crear tabla departamento
CREATE TABLE departamento (
    id_departamento INTEGER NOT NULL,
    nombre          VARCHAR2(50 CHAR) NOT NULL,
    fecha_creacion  TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a departamento
ALTER TABLE departamento ADD CONSTRAINT departamento_pk PRIMARY KEY ( id_departamento );

-- Crear tabla empleado
CREATE TABLE empleado (
    id_empleado      INTEGER NOT NULL,
    id_agencia       INTEGER NOT NULL,
    nombre           VARCHAR2(20 CHAR) NOT NULL,
    id_rol           INTEGER NOT NULL,
    telefono         VARCHAR2(30 CHAR) NOT NULL,
    salario          FLOAT(15) NOT NULL,
    id_planilla      INTEGER,
    id_empleado_sup  INTEGER,
    fecha_creacion   TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a empleado
ALTER TABLE empleado ADD CONSTRAINT empleado_pk PRIMARY KEY ( id_empleado );

-- Crear tabla estado_financiero
CREATE TABLE estado_financiero (
    id_estado_financiero INTEGER NOT NULL,
    id_agencia           INTEGER NOT NULL,
    fecha                DATE NOT NULL,
    ingresos             FLOAT(15) NOT NULL,
    gastos               FLOAT(15) NOT NULL,
    resultado_neto       FLOAT(15) NOT NULL,
    solvencia            FLOAT(15) NOT NULL,
    punto_equilibrio     CHAR(1) NOT NULL,
    quiebra              CHAR(1) NOT NULL,
    fecha_creacion       TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion  TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Crear índice único para estado_financiero
CREATE UNIQUE INDEX estado_financiero_idx_agencia ON estado_financiero ( id_agencia ASC );

-- Agregar primary key a estado_financiero
ALTER TABLE estado_financiero ADD CONSTRAINT estado_financiero_pk PRIMARY KEY ( id_estado_financiero );

-- Crear tabla estado_prestamo
CREATE TABLE estado_prestamo (
    id_estado_prestamo INTEGER NOT NULL,
    estado_prestamo    VARCHAR2(25 CHAR) NOT NULL,
    fecha_creacion     TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a estado_prestamo
ALTER TABLE estado_prestamo ADD CONSTRAINT estado_prestamo_pk PRIMARY KEY ( id_estado_prestamo );

-- Crear tabla estado_tarjeta_credito
CREATE TABLE estado_tarjeta_credito (
    id_estado_tarjeta_cr INTEGER NOT NULL,
    estado               VARCHAR2(20 CHAR) NOT NULL,
    fecha_creacion       TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion  TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a estado_tarjeta_credito
ALTER TABLE estado_tarjeta_credito ADD CONSTRAINT estado_tarjeta_credito_pk PRIMARY KEY ( id_estado_tarjeta_cr );

-- Crear tabla estado_tarjeta_debito
CREATE TABLE estado_tarjeta_debito (
    id_estado_tarjeta_db INTEGER NOT NULL,
    estado               VARCHAR2(20 CHAR) NOT NULL,
    fecha_creacion       TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion  TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a estado_tarjeta_debito
ALTER TABLE estado_tarjeta_debito ADD CONSTRAINT estado_tarjeta_debito_pk PRIMARY KEY ( id_estado_tarjeta_db );

-- Crear tabla municipio
CREATE TABLE municipio (
    id_municipio       INTEGER NOT NULL,
    nombre             VARCHAR2(50 CHAR) NOT NULL,
    direccion          VARCHAR2(100 CHAR) NOT NULL,
    codigo_postal      INTEGER NOT NULL,
    id_departamento    INTEGER NOT NULL,
    fecha_creacion     TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a municipio
ALTER TABLE municipio ADD CONSTRAINT municipio_pk PRIMARY KEY ( id_municipio );

-- Crear tabla planilla_empleados
CREATE TABLE planilla_empleados (
    id_planilla  INTEGER NOT NULL,
    id_empleado  INTEGER NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a planilla_empleados
ALTER TABLE planilla_empleados ADD CONSTRAINT planilla_empleados_pk PRIMARY KEY ( id_planilla );

-- Crear tabla prestamo
CREATE TABLE prestamo (
    id_prestamo         INTEGER NOT NULL,
    id_cliente          INTEGER NOT NULL,
    id_cuenta           INTEGER NOT NULL,
    id_agencia          INTEGER,
    monto_prestamo      FLOAT(15) NOT NULL,
    tasa_interes        FLOAT(2) NOT NULL,
    fecha_desembolso    DATE NOT NULL,
    fecha_vencimiento   DATE NOT NULL,
    saldo_pendiente     FLOAT(15) NOT NULL,
    id_estado_prestamo  INTEGER NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a prestamo
ALTER TABLE prestamo ADD CONSTRAINT prestamo_pk PRIMARY KEY ( id_prestamo );

-- Crear tabla rol
CREATE TABLE rol (
    id_rol  INTEGER NOT NULL,
    rol     VARCHAR2(30 CHAR) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a rol
ALTER TABLE rol ADD CONSTRAINT rol_pk PRIMARY KEY ( id_rol );

-- Crear tabla tarjeta_credito
CREATE TABLE tarjeta_credito (
    id_tarjeta_cr      INTEGER NOT NULL,
    id_cliente         INTEGER NOT NULL,
    num_tarjeta        INTEGER NOT NULL,
    limite_credito     FLOAT(15) NOT NULL,
    saldo_actual       FLOAT(15) NOT NULL,
    fecha_emision      DATE NOT NULL,
    fecha_expiracion   DATE NOT NULL,
    fecha_corte        DATE NOT NULL,
    dia_ciclo          INTEGER NOT NULL,
    id_estado_tarjeta  INTEGER NOT NULL,
    fecha_creacion     TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a tarjeta_credito
ALTER TABLE tarjeta_credito ADD CONSTRAINT tarjeta_credito_pk PRIMARY KEY ( id_tarjeta_cr );

-- Crear tabla tarjeta_debito
CREATE TABLE tarjeta_debito (
    id_tarjeta_db     INTEGER NOT NULL,
    id_cliente        INTEGER NOT NULL,
    id_estado_tarjeta INTEGER NOT NULL,
    fecha_creacion    TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a tarjeta_debito
ALTER TABLE tarjeta_debito ADD CONSTRAINT tarjeta_debito_pk PRIMARY KEY ( id_cliente, id_tarjeta_db, id_estado_tarjeta );

-- Crear tabla tipo_agencia
CREATE TABLE tipo_agencia (
    id_tipo_sucursal  INTEGER NOT NULL,
    tipo_agencia      VARCHAR2(50 CHAR) NOT NULL,
    fecha_creacion    TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a tipo_agencia
ALTER TABLE tipo_agencia ADD CONSTRAINT tipo_agencia_pk PRIMARY KEY ( id_tipo_sucursal );

-- Crear tabla tipo_cartera
CREATE TABLE tipo_cartera (
    id_tipo_cartera  INTEGER NOT NULL,
    tipo_cartera     VARCHAR2(100 CHAR) NOT NULL,
    fecha_creacion   TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a tipo_cartera
ALTER TABLE tipo_cartera ADD CONSTRAINT tipo_cartera_pk PRIMARY KEY ( id_tipo_cartera );

-- Crear tabla tipo_cuenta
CREATE TABLE tipo_cuenta (
    id_tipo_cuenta  INTEGER NOT NULL,
    tipo_cuenta     VARCHAR2(20 CHAR) NOT NULL,
    fecha_creacion  TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a tipo_cuenta
ALTER TABLE tipo_cuenta ADD CONSTRAINT tipo_cuenta_pk PRIMARY KEY ( id_tipo_cuenta );

-- Crear tabla tipo_transaccion
CREATE TABLE tipo_transaccion (
    id_tipo_transaccion  INTEGER NOT NULL,
    tipo_transaccion     VARCHAR2(20 CHAR) NOT NULL,
    fecha_creacion       TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion  TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Agregar primary key a tipo_transaccion
ALTER TABLE tipo_transaccion ADD CONSTRAINT tipo_transaccion_pk PRIMARY KEY ( id_tipo_transaccion );

-- Crear tabla transaccion
CREATE TABLE transaccion (
    id_transaccion       INTEGER NOT NULL,
    id_cliente           INTEGER NOT NULL,
    id_cuenta            INTEGER NOT NULL,
    id_agencia           INTEGER,
    id_prestamo          INTEGER,
    cuenta_origen        INTEGER NOT NULL,
    cuenta_destino       INTEGER NOT NULL,
    id_tipo_transaccion  INTEGER NOT NULL,
    monto                FLOAT(15) NOT NULL,
    fecha                DATE NOT NULL,
    hora                 DATE NOT NULL,
    descripcion          VARCHAR2(255 CHAR) NOT NULL,
    id_empleado          INTEGER NOT NULL,
    id_rol               INTEGER NOT NULL,
    fecha_creacion       TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion  TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

---------------------------------------------------

CREATE TABLE transacciones_prestamo (
    prestamo_id_prestamo    INTEGER NOT NULL,
    id_transaccion_prestamo INTEGER NOT NULL,
    fecha                   DATE NOT NULL,
    hora                    DATE NOT NULL,
    descripcion             VARCHAR2(255 CHAR) NOT NULL
);

ALTER TABLE transacciones_prestamo ADD CONSTRAINT transacciones_prestamo_pk PRIMARY KEY ( prestamo_id_prestamo,
                                                                                          id_transaccion_prestamo );

CREATE TABLE transacciones_tarjeta_cr (
    tarjeta_credito_id_tarjeta_cr INTEGER NOT NULL,
    id_transaccion_tarjeta_cr     INTEGER NOT NULL,
    fecha                         DATE NOT NULL,
    hora                          DATE NOT NULL,
    descripcion                   VARCHAR2(255 CHAR) NOT NULL,
    id_cliente                    INTEGER NOT NULL
);

ALTER TABLE transacciones_tarjeta_cr
    ADD CONSTRAINT transacciones_tarjeta_cr_pk PRIMARY KEY ( tarjeta_credito_id_tarjeta_cr,
                                                             id_cliente,
                                                             id_transaccion_tarjeta_cr );

CREATE TABLE transacciones_tarjeta_db (
    id_transaccion_db                   INTEGER NOT NULL, 
    tdebito_cliente_id_cliente   INTEGER NOT NULL,
    tarjeta_debito_id_tarjeta_db        INTEGER NOT NULL,
    fecha                               DATE NOT NULL,
    hora                                DATE NOT NULL,
    descripcion                         VARCHAR2(255 CHAR), 

    tdebito_id_estado_tarjeta_db INTEGER NOT NULL
);

ALTER TABLE transacciones_tarjeta_db
    ADD CONSTRAINT transacciones_tarjeta_db_pk PRIMARY KEY ( tdebito_cliente_id_cliente,
                                                             tarjeta_debito_id_tarjeta_db,
                                                             tdebito_id_estado_tarjeta_db );


---------------------------------------------------

-- Agregar primary key a transaccion
ALTER TABLE transaccion ADD CONSTRAINT transaccion_pk PRIMARY KEY ( id_transaccion );

-- =====================================================
-- Relaciones entre Tablas (Foreign Keys)
-- =====================================================

-- Relaciones para agencia
ALTER TABLE agencia
    ADD CONSTRAINT agencia_boveda_fk FOREIGN KEY ( id_boveda )
        REFERENCES boveda ( id_boveda );

ALTER TABLE agencia
    ADD CONSTRAINT agencia_estado_financiero_fk FOREIGN KEY ( id_estado_financiero )
        REFERENCES estado_financiero ( id_estado_financiero );

ALTER TABLE agencia
    ADD CONSTRAINT agencia_municipio_fk FOREIGN KEY ( id_municipio )
        REFERENCES municipio ( id_municipio );

ALTER TABLE agencia
    ADD CONSTRAINT agencia_tipo_agencia_fk FOREIGN KEY ( id_tipo_sucursal )
        REFERENCES tipo_agencia ( id_tipo_sucursal );

-- Relaciones para cartera_clientes
ALTER TABLE cartera_clientes
    ADD CONSTRAINT cartera_clientes_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES agencia ( id_agencia );

ALTER TABLE cartera_clientes
    ADD CONSTRAINT cartera_clientes_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE cartera_clientes
    ADD CONSTRAINT cartera_clientes_tipo_cartera_fk FOREIGN KEY ( id_tipo_cartera )
        REFERENCES tipo_cartera ( id_tipo_cartera );

-- Relaciones para cuenta
ALTER TABLE cuenta
    ADD CONSTRAINT cuenta_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE cuenta
    ADD CONSTRAINT cuenta_tipo_cuenta_fk FOREIGN KEY ( id_tipo_cuenta )
        REFERENCES tipo_cuenta ( id_tipo_cuenta );

ALTER TABLE cuenta
    ADD CONSTRAINT cuenta_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES agencia ( id_agencia );

-- Relaciones para empleado
ALTER TABLE empleado
    ADD CONSTRAINT empleado_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES agencia ( id_agencia );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_rol_fk FOREIGN KEY ( id_rol )
        REFERENCES rol ( id_rol );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_supervisor_fk FOREIGN KEY ( id_empleado_sup )
        REFERENCES empleado ( id_empleado );

-- Relaciones para municipio
ALTER TABLE municipio
    ADD CONSTRAINT municipio_departamento_fk FOREIGN KEY ( id_departamento )
        REFERENCES departamento ( id_departamento );

-- Relaciones para planilla_empleados
ALTER TABLE planilla_empleados
    ADD CONSTRAINT planilla_empleados_empleado_fk FOREIGN KEY ( id_empleado )
        REFERENCES empleado ( id_empleado );

-- Relaciones para prestamo
ALTER TABLE prestamo
    ADD CONSTRAINT prestamo_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE prestamo
    ADD CONSTRAINT prestamo_cuenta_fk FOREIGN KEY ( id_cuenta )
        REFERENCES cuenta ( id_cuenta );

ALTER TABLE prestamo
    ADD CONSTRAINT prestamo_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES agencia ( id_agencia );

ALTER TABLE prestamo
    ADD CONSTRAINT prestamo_estado_fk FOREIGN KEY ( id_estado_prestamo )
        REFERENCES estado_prestamo ( id_estado_prestamo );

-- Relaciones para tarjeta_credito
ALTER TABLE tarjeta_credito
    ADD CONSTRAINT tarjeta_credito_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE tarjeta_credito
    ADD CONSTRAINT tarjeta_credito_estado_fk FOREIGN KEY ( id_estado_tarjeta )
        REFERENCES estado_tarjeta_credito ( id_estado_tarjeta_cr );

-- Relaciones para tarjeta_debito
ALTER TABLE tarjeta_debito
    ADD CONSTRAINT tarjeta_debito_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE tarjeta_debito
    ADD CONSTRAINT tarjeta_debito_estado_fk FOREIGN KEY ( id_estado_tarjeta )
        REFERENCES estado_tarjeta_debito ( id_estado_tarjeta_db );

-- Relaciones para transaccion
ALTER TABLE transaccion
    ADD CONSTRAINT transaccion_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE transaccion
    ADD CONSTRAINT transaccion_cuenta_fk FOREIGN KEY ( id_cuenta )
        REFERENCES cuenta ( id_cuenta );

ALTER TABLE transaccion
    ADD CONSTRAINT transaccion_tipo_fk FOREIGN KEY ( id_tipo_transaccion )
        REFERENCES tipo_transaccion ( id_tipo_transaccion );

ALTER TABLE transaccion
    ADD CONSTRAINT transaccion_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES agencia ( id_agencia );

ALTER TABLE transaccion
    ADD CONSTRAINT transaccion_empleado_fk FOREIGN KEY ( id_empleado )
        REFERENCES empleado ( id_empleado );

ALTER TABLE transaccion
    ADD CONSTRAINT transaccion_rol_fk FOREIGN KEY ( id_rol )
        REFERENCES rol ( id_rol );

ALTER TABLE transaccion
    ADD CONSTRAINT transaccion_prestamo_fk FOREIGN KEY ( id_prestamo )
        REFERENCES prestamo ( id_prestamo );

-- =====================================================
-- Índices Adicionales
-- =====================================================

-- Crear índices únicos adicionales si es necesario
-- Por ejemplo:
-- CREATE UNIQUE INDEX nombre_del_indice ON nombre_de_la_tabla ( columna );

-- =====================================================
-- Procedimientos Almacenados
-- =====================================================

-- Agregar cliente 
CREATE OR REPLACE PROCEDURE agregar_cliente (
    p_nombre    IN VARCHAR2,
    p_apellido  IN VARCHAR2,
    p_telefono  IN VARCHAR2,
    p_direccion IN VARCHAR2
) IS
BEGIN
    INSERT INTO cliente (nombre, apellido, telefono, direccion, id_cuenta)
    VALUES (p_nombre, p_apellido, p_telefono, p_direccion, NULL); -- Asigna NULL a id_cuenta o ajusta según lógica de negocio
    COMMIT;
END agregar_cliente;
/
    
-- Ejemplo de uso:
-- BEGIN
--     agregar_cliente('Juan', 'Pérez', '12345678', 'Calle 123');
-- END;
    
-- Eliminar cliente por datos
CREATE OR REPLACE PROCEDURE eliminar_cliente_por_datos (
    p_nombre    IN VARCHAR2,
    p_apellido  IN VARCHAR2,
    p_telefono  IN VARCHAR2,
    p_direccion IN VARCHAR2
) IS
BEGIN
    DELETE FROM cliente
    WHERE nombre = p_nombre
      AND apellido = p_apellido
      AND telefono = p_telefono
      AND direccion = p_direccion;

    IF SQL%ROWCOUNT > 0 THEN
        COMMIT;  -- Confirma los cambios solo si se eliminó al menos un registro.
        DBMS_OUTPUT.PUT_LINE('Cliente eliminado exitosamente.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No se encontró ningún cliente con los datos proporcionados.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error al eliminar el cliente: ' || SQLERRM);
END eliminar_cliente_por_datos;
/
    
-- Ejemplo de uso:
-- BEGIN
--     eliminar_cliente_por_datos('Juan', 'Pérez', '12345678', 'Calle 123');
-- END;
    
-- Listar transacciones por cliente
CREATE OR REPLACE PROCEDURE listar_transacciones_cliente_por_datos (
    p_nombre    IN VARCHAR2,
    p_apellido  IN VARCHAR2,
    p_telefono  IN VARCHAR2,
    p_direccion IN VARCHAR2
) IS
BEGIN
    FOR r IN (
        SELECT t.id_transaccion, t.monto
        FROM transaccion t
        JOIN cliente c ON t.id_cliente = c.id_cliente
        WHERE c.nombre = p_nombre
          AND c.apellido = p_apellido
          AND c.telefono = p_telefono
          AND c.direccion = p_direccion
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Transacción: ' || r.id_transaccion || ', Monto: ' || r.monto);
    END LOOP;
END listar_transacciones_cliente_por_datos;
/
    
-- Ejemplo de uso:
-- BEGIN
--     listar_transacciones_cliente_por_datos(
--         'Carlos', 
--         'Gonzalez', 
--         '87654321',
--         'Avenida 456'
--     );
-- END;
