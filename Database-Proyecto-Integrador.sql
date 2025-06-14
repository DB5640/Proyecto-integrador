CREATE DATABASE Starting_;

USE Starting_;
CREATE TABLE Cliente(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(255),
    email VARCHAR(255),
    fecha_registro BIGINT,
    estado_cliente BIGINT
);

CREATE TABLE Tipo_Persona(
    id_tipo_persona BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo_persona ENUM('natural', 'juridica')
);

CREATE TABLE Cuenta_Tipo_Persona(
    id_cuenta_tipo_persona BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_tipo_persona BIGINT,
    CONSTRAINT cuenta_tipo_persona_tipo_foreign FOREIGN KEY(id_tipo_persona) REFERENCES Tipo_Persona(id_tipo_persona)
);

CREATE TABLE Cuenta(
    id_cuenta BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_cliente BIGINT,
    id_tipo_persona BIGINT,
    numero_cuenta VARCHAR(255),
    saldo_deudor DECIMAL(8, 2),
    fecha_apertura DATE,
    fecha_vencimiento DATE,
    estado_cuenta ENUM('pendiente', 'pagada', 'en_reclamo'),
    CONSTRAINT cuenta_id_cliente_foreign FOREIGN KEY(id_cliente) REFERENCES Cliente(id),
    CONSTRAINT cuenta_id_cuenta_tipo_foreign FOREIGN KEY(id_tipo_persona) REFERENCES Cuenta_Tipo_Persona(id_cuenta_tipo_persona)
);

ALTER table Cuenta
MODIFY COLUMN numero_cuenta varchar(255);

CREATE TABLE Pago(
    id_pago BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_cuenta BIGINT,
    monto_pago DECIMAL(8, 2),
    fecha_pago DATE,
    metodo_pago ENUM(
        'efectivo',
        'transferencia',
        'tarjeta',
        'otros'
    ),
    comentarios TEXT,
    CONSTRAINT pago_id_cuenta_foreign FOREIGN KEY(id_cuenta) REFERENCES Cuenta(id_cuenta)
);
CREATE TABLE Cobranza(
    id_cobranza BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_cuenta BIGINT,
    fecha_inicio DATE,
    fecha_ultima_cobranza DATE,
    comentarios TEXT,
    estado_cobranza ENUM('pendiente', 'cobrada', 'en_espera'),
    CONSTRAINT cobranza_id_cuenta_foreign FOREIGN KEY(id_cuenta) REFERENCES Cuenta(id_cuenta)
);

CREATE TABLE Empleado(
    id_emplado BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    cargo VARCHAR(255),
    telefono VARCHAR(255),
    email VARCHAR(255),
    fecha_contratacion DATE
);

CREATE TABLE Cobranza_Empleado(
    id_cobranza BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_empleado BIGINT,
    fecha_asignacion DATE,
    estado_asignacion ENUM('activo', 'finalizado', 'en_espera'),
    CONSTRAINT cobranza_empleado_id_empleado_foreign FOREIGN KEY(id_empleado) REFERENCES Empleado(id_emplado)
);   
