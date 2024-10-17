-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-10-16 23:08:00 CST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY
-- predefined type, no DDL - XMLTYPE

CREATE TABLE agencia (
    id_agencia                             INTEGER NOT NULL,
    nombre                                 VARCHAR2(50 CHAR) NOT NULL,
    tipo_agencia                           VARCHAR2(20 CHAR) NOT NULL,
    telefono                               VARCHAR2(30 CHAR) NOT NULL,
    id_municipio                           INTEGER NOT NULL,
    id_tipo_sucursal                       INTEGER NOT NULL, 
    id_estado_financiero                   INTEGER NOT NULL,
    id_boveda                              INTEGER NOT NULL
);

CREATE UNIQUE INDEX agencia_idx_estado_financiero ON
    agencia ( id_estado_financiero ASC );

CREATE UNIQUE INDEX agencia_idx_boveda ON
    agencia ( id_boveda ASC );

ALTER TABLE agencia ADD CONSTRAINT agencia_pk PRIMARY KEY ( id_agencia );

CREATE TABLE boveda (
    id_boveda          INTEGER NOT NULL,
    fondos_disponibles FLOAT(15) NOT NULL
);

ALTER TABLE boveda ADD CONSTRAINT boveda_pk PRIMARY KEY ( id_boveda );

CREATE TABLE cartera_clientes (
    id_cartera         INTEGER NOT NULL,
    id_tipo_cartera    INTEGER NOT NULL,
    id_agencia         INTEGER NOT NULL,
    id_cliente         INTEGER NOT NULL
);

CREATE UNIQUE INDEX cartera_clientes_idx_tipo_cartera ON
    cartera_clientes ( id_tipo_cartera ASC );

CREATE UNIQUE INDEX cartera_clientes_idx_agencia ON
    cartera_clientes ( id_agencia ASC );

ALTER TABLE cartera_clientes ADD CONSTRAINT cartera_clientes_pk PRIMARY KEY ( id_cartera );

CREATE TABLE cliente (
    id_cliente INTEGER NOT NULL,
    nombre     VARCHAR2(50 CHAR) NOT NULL,
    apellido   VARCHAR2(50 CHAR) NOT NULL,
    telefono   VARCHAR2(30 CHAR) NOT NULL,
    id_cuenta  INTEGER NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( id_cliente );

CREATE TABLE cuenta (
    id_cliente      INTEGER NOT NULL,
    id_cuenta       INTEGER NOT NULL,
    id_tipo_cuenta  INTEGER NOT NULL,
    num_cuenta      INTEGER NOT NULL,
    saldo           FLOAT(15) NOT NULL,
    id_agencia      INTEGER
);

ALTER TABLE cuenta ADD CONSTRAINT cuenta_pk PRIMARY KEY ( id_cuenta );

CREATE TABLE departamento (
    id_departamento INTEGER NOT NULL,
    nombre          VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE departamento ADD CONSTRAINT departamento_pk PRIMARY KEY ( id_departamento );

CREATE TABLE empleado (
    id_empleado          INTEGER NOT NULL,
    id_agencia           INTEGER NOT NULL,
    nombre               VARCHAR2(20 CHAR) NOT NULL,
    id_rol               INTEGER NOT NULL,
    telefono             VARCHAR2(30 CHAR) NOT NULL,
    salario              FLOAT(15) NOT NULL,
    id_planilla          INTEGER,
    id_empleado_sup      INTEGER
);

ALTER TABLE empleado ADD CONSTRAINT empleado_pk PRIMARY KEY ( id_empleado );

CREATE TABLE estado_financiero (
    id_agencia           INTEGER NOT NULL,
    id_estado_financiero INTEGER NOT NULL,
    fecha                DATE NOT NULL,
    ingresos             FLOAT(15) NOT NULL,
    gastos               FLOAT(15) NOT NULL,
    resultado_neto       FLOAT(15) NOT NULL,
    solvencia            FLOAT(15) NOT NULL,
    punto_equilibrio     CHAR(1) NOT NULL,
    quiebra              CHAR(1) NOT NULL
);

CREATE UNIQUE INDEX estado_financiero_idx_agencia ON
    estado_financiero ( id_agencia ASC );

ALTER TABLE estado_financiero ADD CONSTRAINT estado_financiero_pk PRIMARY KEY ( id_estado_financiero );

CREATE TABLE estado_prestamo (
    id_estado_prestamo INTEGER NOT NULL,
    estado_prestamo    VARCHAR2(25 CHAR) NOT NULL
);

ALTER TABLE estado_prestamo ADD CONSTRAINT estado_prestamo_pk PRIMARY KEY ( id_estado_prestamo );

CREATE TABLE estado_tarjeta_credito (
    id_estado_tarjeta_cr INTEGER NOT NULL,
    estado               VARCHAR2(20 CHAR) NOT NULL
);

ALTER TABLE estado_tarjeta_credito ADD CONSTRAINT estado_tarjeta_credito_pk PRIMARY KEY ( id_estado_tarjeta_cr );

CREATE TABLE estado_tarjeta_debito (
    id_estado_tarjeta_db INTEGER NOT NULL,
    estado               VARCHAR2(20 CHAR) NOT NULL
);

ALTER TABLE estado_tarjeta_debito ADD CONSTRAINT estado_tarjeta_debito_pk PRIMARY KEY ( id_estado_tarjeta_db );

CREATE TABLE municipio (
    id_municipio       INTEGER NOT NULL,
    nombre             VARCHAR2(50 CHAR) NOT NULL,
    direccion          VARCHAR2(100 CHAR) NOT NULL,
    codigo_postal      INTEGER NOT NULL,
    id_departamento    INTEGER NOT NULL
);

ALTER TABLE municipio ADD CONSTRAINT municipio_pk PRIMARY KEY ( id_municipio );

CREATE TABLE planilla_empleados (
    id_planilla  INTEGER NOT NULL,
    id_empleado  INTEGER NOT NULL
);

ALTER TABLE planilla_empleados ADD CONSTRAINT planilla_empleados_pk PRIMARY KEY ( id_planilla );

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
    id_estado_prestamo  INTEGER NOT NULL
);

ALTER TABLE prestamo ADD CONSTRAINT prestamo_pk PRIMARY KEY ( id_prestamo );

CREATE TABLE rol (
    id_rol  INTEGER NOT NULL,
    rol     VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE rol ADD CONSTRAINT rol_pk PRIMARY KEY ( id_rol );

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
    id_estado_tarjeta  INTEGER NOT NULL
);

ALTER TABLE tarjeta_credito ADD CONSTRAINT tarjeta_credito_pk PRIMARY KEY ( id_tarjeta_cr );

CREATE TABLE tarjeta_debito (
    id_tarjeta_db     INTEGER NOT NULL,
    id_cliente        INTEGER NOT NULL,
    id_estado_tarjeta INTEGER NOT NULL
);

ALTER TABLE tarjeta_debito ADD CONSTRAINT tarjeta_debito_pk PRIMARY KEY ( id_cliente, id_tarjeta_db, id_estado_tarjeta );

CREATE TABLE tipo_agencia (
    id_tipo_sucursal  INTEGER NOT NULL,
    tipo_agencia      VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE tipo_agencia ADD CONSTRAINT tipo_agencia_pk PRIMARY KEY ( id_tipo_sucursal );

CREATE TABLE tipo_cartera (
    id_tipo_cartera  INTEGER NOT NULL,
    tipo_cartera     VARCHAR2(100 CHAR) NOT NULL
);

ALTER TABLE tipo_cartera ADD CONSTRAINT tipo_cartera_pk PRIMARY KEY ( id_tipo_cartera );

CREATE TABLE tipo_cuenta (
    id_tipo_cuenta  INTEGER NOT NULL,
    tipo_cuenta     VARCHAR2(20 CHAR) NOT NULL
);

ALTER TABLE tipo_cuenta ADD CONSTRAINT tipo_cuenta_pk PRIMARY KEY ( id_tipo_cuenta );

CREATE TABLE tipo_transaccion (
    id_tipo_transaccion  INTEGER NOT NULL,
    tipo_transaccion     VARCHAR2(20 CHAR) NOT NULL
);

ALTER TABLE tipo_transaccion ADD CONSTRAINT tipo_transaccion_pk PRIMARY KEY ( id_tipo_transaccion );

CREATE TABLE transaccion (
    id_transaccion    INTEGER NOT NULL,
    id_cliente        INTEGER NOT NULL,
    id_cuenta         INTEGER NOT NULL,
    id_agencia        INTEGER,
    id_prestamo       INTEGER,
    cuenta_origen     INTEGER NOT NULL,
    cuenta_destino    INTEGER NOT NULL,
    id_tipo_transaccion INTEGER NOT NULL,
    monto             FLOAT(15) NOT NULL,
    fecha             DATE NOT NULL,
    hora              DATE NOT NULL,
    descripcion       VARCHAR2(255 CHAR) NOT NULL,
    id_empleado       INTEGER NOT NULL,
    id_rol            INTEGER NOT NULL
);

ALTER TABLE transaccion ADD CONSTRAINT transaccion_pk PRIMARY KEY ( id_transaccion );

-- Relaciones

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

ALTER TABLE cartera_clientes
    ADD CONSTRAINT cartera_clientes_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES agencia ( id_agencia );

ALTER TABLE cartera_clientes
    ADD CONSTRAINT cartera_clientes_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE cartera_clientes
    ADD CONSTRAINT cartera_clientes_tipo_cartera_fk FOREIGN KEY ( id_tipo_cartera )
        REFERENCES tipo_cartera ( id_tipo_cartera );

ALTER TABLE cuenta
    ADD CONSTRAINT cuenta_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE cuenta
    ADD CONSTRAINT cuenta_tipo_cuenta_fk FOREIGN KEY ( id_tipo_cuenta )
        REFERENCES tipo_cuenta ( id_tipo_cuenta );

ALTER TABLE cuenta
    ADD CONSTRAINT cuenta_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES agencia ( id_agencia );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_agencia_fk FOREIGN KEY ( id_agencia )
        REFERENCES agencia ( id_agencia );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_rol_fk FOREIGN KEY ( id_rol )
        REFERENCES rol ( id_rol );

ALTER TABLE empleado
    ADD CONSTRAINT empleado_supervisor_fk FOREIGN KEY ( id_empleado_sup )
        REFERENCES empleado ( id_empleado );

ALTER TABLE municipio
    ADD CONSTRAINT municipio_departamento_fk FOREIGN KEY ( id_departamento )
        REFERENCES departamento ( id_departamento );

ALTER TABLE planilla_empleados
    ADD CONSTRAINT planilla_empleados_empleado_fk FOREIGN KEY ( id_empleado )
        REFERENCES empleado ( id_empleado );

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

ALTER TABLE tarjeta_credito
    ADD CONSTRAINT tarjeta_credito_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE tarjeta_credito
    ADD CONSTRAINT tarjeta_credito_estado_fk FOREIGN KEY ( id_estado_tarjeta )
        REFERENCES estado_tarjeta_credito ( id_estado_tarjeta_cr );

ALTER TABLE tarjeta_debito
    ADD CONSTRAINT tarjeta_debito_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE tarjeta_debito
    ADD CONSTRAINT tarjeta_debito_estado_fk FOREIGN KEY ( id_estado_tarjeta )
        REFERENCES estado_tarjeta_debito ( id_estado_tarjeta_db );

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


-- Agregar cliente 
CREATE OR REPLACE PROCEDURE agregar_cliente (
    p_nombre IN VARCHAR2,
    p_apellido IN VARCHAR2,
    p_telefono IN VARCHAR2,
) IS
BEGIN
    INSERT INTO cliente (nombre, apellido, telefono, direccion)
    VALUES (p_nombre, p_apellido, p_telefono);
    COMMIT;
END agregar_cliente;

-- BEGIN
--     agregar_cliente('Juan', 'Pérez', '12345678');
-- END;




-- Eliminar cliente
CREATE OR REPLACE PROCEDURE eliminar_cliente_por_datos (
    p_nombre IN VARCHAR2,
    p_apellido IN VARCHAR2,
    p_telefono IN VARCHAR2,
    p_direccion IN VARCHAR2
) IS
BEGIN
    DELETE FROM cliente
    WHERE nombre = p_nombre
      AND apellido = p_apellido
      AND telefono = p_telefono
      
    IF SQL%ROWCOUNT > 0 THEN
        COMMIT;  -- Confirma los cambios solo si se eliminó al menos un registro.
        DBMS_OUTPUT.PUT_LINE('Cliente eliminado exitosamente.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No se encontró ningún cliente con los datos proporcionados.');
    END IF;
END eliminar_cliente_por_datos;

-- BEGIN
--     eliminar_cliente_por_datos('Juan', 'Pérez', '12345678');
-- END;

-- Eliminar cliente
CREATE OR REPLACE PROCEDURE eliminar_cliente_por_datos (
    p_nombre IN VARCHAR2,
    p_apellido IN VARCHAR2,
    p_telefono IN VARCHAR2,
    p_direccion IN VARCHAR2
) IS
BEGIN
    DELETE FROM cliente
    WHERE nombre = p_nombre
      AND apellido = p_apellido
      AND telefono = p_telefono

    COMMIT;  

    DBMS_OUTPUT.PUT_LINE('Cliente eliminado exitosamente.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Cliente no encontrado con los datos proporcionados.');
END eliminar_cliente_por_datos;


-- BEGIN
--     eliminar_cliente_por_datos(
--         'Carlos', 
--         'Gonzalez', 
--         '87654321', 
--     );
-- END;


-- Listar transacciones por cliente 
CREATE OR REPLACE PROCEDURE listar_transacciones_cliente_por_datos (
    p_nombre IN VARCHAR2,
    p_apellido IN VARCHAR2,
    p_telefono IN VARCHAR2,
    p_direccion IN VARCHAR2
) IS
BEGIN
    FOR r IN (
        SELECT t.id_transaccion, t.monto
        FROM transacciones t
        JOIN cliente c ON t.id_cliente = c.id_cliente
        WHERE c.nombre = p_nombre
          AND c.apellido = p_apellido
          AND c.telefono = p_telefono
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Transacción: ' || r.id_transaccion || ', Monto: ' || r.monto);
    END LOOP;
END listar_transacciones_cliente_por_datos;

BEGIN
    listar_transacciones_cliente_por_datos(
        'Carlos', 
        'Gonzalez', 
        '87654321'
    );
END;

