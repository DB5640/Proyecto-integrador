-- Crear base de datos
CREATE DATABASE Starting;


-- Usar base de datos
USE Starting;


-- Tabla Cliente
CREATE TABLE Cliente (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(255),
    email VARCHAR(255),
    fecha_registro BIGINT,
    estado_cliente BIGINT
);


-- Tabla Tipo_Persona
CREATE TABLE Tipo_Persona (
    id_tipo_persona BIGINT IDENTITY(1,1) PRIMARY KEY,
    tipo_persona VARCHAR(20) CHECK (tipo_persona IN ('natural', 'juridica'))
);


-- Tabla Cuenta_Tipo_Persona
CREATE TABLE Cuenta_Tipo_Persona (
    id_cuenta_tipo_persona BIGINT IDENTITY(1,1) PRIMARY KEY,
    id_tipo_persona BIGINT,
    FOREIGN KEY (id_tipo_persona) REFERENCES Tipo_Persona(id_tipo_persona)
);


-- Tabla Cuenta
CREATE TABLE Cuenta (
    id_cuenta BIGINT IDENTITY(1,1) PRIMARY KEY,
    id_cliente BIGINT,
    id_tipo_persona BIGINT,
    numero_cuenta VARCHAR(255),
    saldo_deudor DECIMAL(8,2),
    fecha_apertura DATE,
    fecha_vencimiento DATE,
    estado_cuenta VARCHAR(20) CHECK (estado_cuenta IN ('pendiente', 'pagada', 'en_reclamo')),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id),
    FOREIGN KEY (id_tipo_persona) REFERENCES Cuenta_Tipo_Persona(id_cuenta_tipo_persona)
);


-- Tabla Pago
CREATE TABLE Pago (
    id_pago BIGINT IDENTITY(1,1) PRIMARY KEY,
    id_cuenta BIGINT,
    monto_pago DECIMAL(8,2),
    fecha_pago DATE,
    metodo_pago VARCHAR(20) CHECK (metodo_pago IN ('efectivo', 'transferencia', 'tarjeta', 'otros')),
    comentarios TEXT,
    FOREIGN KEY (id_cuenta) REFERENCES Cuenta(id_cuenta)
);


-- Tabla Cobranza
CREATE TABLE Cobranza (
    id_cobranza BIGINT IDENTITY(1,1) PRIMARY KEY,
    id_cuenta BIGINT,
    fecha_inicio DATE,
    fecha_ultima_cobranza DATE,
    comentarios TEXT,
    estado_cobranza VARCHAR(20) CHECK (estado_cobranza IN ('pendiente', 'cobrada', 'en_espera')),
    FOREIGN KEY (id_cuenta) REFERENCES Cuenta(id_cuenta)
);


-- Tabla Empleado
CREATE TABLE Empleado (
    id_empleado BIGINT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(255),
    cargo VARCHAR(255),
    telefono VARCHAR(255),
    email VARCHAR(255),
    fecha_contratacion DATE
);


-- Tabla Cobranza_Empleado
CREATE TABLE Cobranza_Empleado (
    id_cobranza_empleado BIGINT IDENTITY(1,1) PRIMARY KEY,
    id_empleado BIGINT,
    fecha_asignacion DATE,
    estado_asignacion VARCHAR(20) CHECK (estado_asignacion IN ('activo', 'finalizado', 'en_espera')),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);


