SELECT * FROM `starting`.cuenta;
SELECT * FROM `starting`.cliente;
SELECT * FROM `starting`.cobranza;
SELECT * FROM `starting`.pago;
SELECT * FROM `starting`.empleado;

insert into cuenta (id_cliente, id_tipo_persona, numero_cuenta, saldo_deudor, fecha_apertura) values (1, 1, 213, 4324, '2025-05-06');
(1, 1, 214, 1500.75, '2024-01-15'),
(3, 2, 215, 8900.00, '2023-11-22'),
(4, 1, 216, 320.50, '2025-02-10'),
(5, 2, 217, 0.00, '2024-07-30'),
(6, 1, 218, 45000.25, '2023-09-05'),
(7, 2, 219, 1200.00, '2024-04-18'),
(8, 1, 220, 780.90, '2025-01-25'),
(9, 2, 221, 5600.00, '2023-12-12'),
(10, 1, 222, 230.75, '2024-08-07'),
(11, 2, 223, 0.00, '2025-03-14'),
(12, 1, 224, 6700.50, '2023-10-30'),
(13, 2, 225, 3400.25, '2024-05-21'),
(14, 1, 226, 120.00, '2025-06-09'),
(15, 2, 227, 9800.00, '2023-08-17'),
(16, 1, 228, 540.60, '2024-09-28'),
(17, 2, 229, 0.00, '2025-04-03'),
(18, 1, 230, 12300.75, '2023-07-11'),
(19, 2, 231, 760.00, '2024-10-22'),
(20, 1, 232, 4300.25, '2025-07-15'),
(21, 2, 233, 0.00, '2023-06-19'),
(22, 1, 234, 870.90, '2024-03-08'),
(23, 2, 235, 15600.00, '2025-08-30'),
(24, 1, 236, 2300.50, '2023-05-14'),
(25, 2, 237, 0.00, '2024-12-05'),
(26, 1, 238, 640.75, '2025-09-12'),
(27, 2, 239, 43200.00, '2023-04-27'),
(28, 1, 240, 90.25, '2024-11-16'),
(29, 2, 241, 0.00, '2025-10-07'),
(30, 1, 242, 5300.00, '2023-03-23'),
(31, 2, 243, 1200.50, '2024-02-14'),
(32, 1, 244, 0.00, '2025-11-18'),
(33, 2, 245, 8760.75, '2023-02-09'),
(34, 1, 246, 340.00, '2024-06-29'),
(35, 2, 247, 0.00, '2025-12-01'),
(36, 1, 248, 12900.25, '2023-01-31'),
(37, 2, 249, 560.50, '2024-07-12'),
(38, 1, 250, 0.00, '2025-01-08'),
(39, 2, 251, 7800.00, '2023-12-24'),
(40, 1, 252, 450.75, '2024-08-19');

insert into cliente (nombre, direccion, telefono,email, fecha_registro, estado_cliente) values ('Amelia', 'Direcc1', '3122291435', 'amelia.alvarezbet@gmail.com', 6052025, '1');
('Carlos Martínez', 'Calle 123 #45-67', '3101234567', 'carlos.martinez@example.com', 20240515, '1'),
('Laura González', 'Avenida Principal 789', '3202345678', 'laura.gonzalez@example.com', 20240620, '1'),
('Pedro Sánchez', 'Carrera 56 #12-34', '3153456789', 'pedro.sanchez@example.com', 20240310, '0'),
('Ana Rodríguez', 'Diagonal 78 #90-12', '3004567890', 'ana.rodriguez@example.com', 20240705, '1'),
('Jorge López', 'Transversal 34 #56-78', '3185678901', 'jorge.lopez@example.com', 20240228, '1'),
('Sofía Ramírez', 'Calle 90 #12-34', '3126789012', 'sofia.ramirez@example.com', 20240812, '1'),
('Miguel Torres', 'Avenida 56 #78-90', '3177890123', 'miguel.torres@example.com', 20240125, '0'),
('Elena Castro', 'Carrera 12 #34-56', '3148901234', 'elena.castro@example.com', 20240930, '1'),
('Diego Morales', 'Calle 78 #90-12', '3139012345', 'diego.morales@example.com', 20240418, '1'),
('Valentina Rojas', 'Avenida 34 #56-78', '3190123456', 'valentina.rojas@example.com', 20241022, '1'),
('Andrés Herrera', 'Diagonal 12 #34-56', '3109876543', 'andres.herrera@example.com', 20241111, '0'),
('Camila Vargas', 'Transversal 90 #12-34', '3208765432', 'camila.vargas@example.com', 20240530, '1'),
('Ricardo Peña', 'Calle 56 #78-90', '3157654321', 'ricardo.pena@example.com', 20241203, '1'),
('María Jiménez', 'Carrera 78 #90-12', '3006543210', 'maria.jimenez@example.com', 20240615, '1'),
('Fernando Ruiz', 'Avenida 12 #34-56', '3185432109', 'fernando.ruiz@example.com', 20240108, '0'),
('Gabriela Silva', 'Diagonal 34 #56-78', '3124321098', 'gabriela.silva@example.com', 20240719, '1'),
('Hugo Mendoza', 'Transversal 56 #78-90', '3173210987', 'hugo.mendoza@example.com', 20240214, '1'),
('Isabel Ortega', 'Calle 12 #34-56', '3142109876', 'isabel.ortega@example.com', 20240825, '1'),
('Oscar Guzmán', 'Carrera 90 #12-34', '3191098765', 'oscar.guzman@example.com', 20240305, '0'),
('Lucía Medina', 'Avenida 78 #90-12', '3100987654', 'lucia.medina@example.com', 20240910, '1'),
('Daniel Paredes', 'Diagonal 56 #78-90', '3209876543', 'daniel.paredes@example.com', 20240422, '1'),
('Adriana Cordero', 'Transversal 12 #34-56', '3158765432', 'adriana.cordero@example.com', 20241005, '1'),
('Juan Reyes', 'Calle 34 #56-78', '3007654321', 'juan.reyes@example.com', 20240130, '0'),
('Patricia Núñez', 'Carrera 56 #78-90', '3186543210', 'patricia.nunez@example.com', 20240608, '1'),
('Roberto Delgado', 'Avenida 90 #12-34', '3125432109', 'roberto.delgado@example.com', 20241112, '1'),
('Carmen Vega', 'Diagonal 78 #90-12', '3174321098', 'carmen.vega@example.com', 20240220, '1'),
('Santiago Ríos', 'Transversal 34 #56-78', '3143210987', 'santiago.rios@example.com', 20240703, '0'),
('Natalia Fuentes', 'Calle 90 #12-34', '3192109876', 'natalia.fuentes@example.com', 20241215, '1'),
('Alejandro Méndez', 'Carrera 12 #34-56', '3101239876', 'alejandro.mendez@example.com', 20240528, '1'),
('Diana Campos', 'Avenida 56 #78-90', '3202348765', 'diana.campos@example.com', 20240918, '1');

INSERT INTO cobranza (id_cliente, monto, fecha_primer, fecha_vencimiento, estado, metodo_pago, observaciones) VALUES
-- Clientes con pagos pendientes
(1, 1500.75, '2024-05-01', '2024-05-30', 'pendiente', NULL, 'Primera notificación enviada'),
(2, 3200.00, '2024-05-10', '2024-06-10', 'pendiente', NULL, 'Cliente solicita extensión'),
(3, 500.50, '2024-05-15', '2024-06-15', 'pendiente', NULL, 'Sin contacto aún'),

-- Clientes con pagos completados
(4, 1800.25, '2024-04-01', '2024-04-30', 'pagado', 'transferencia', 'Pagado el 2024-04-28'),
(5, 2200.00, '2024-04-05', '2024-05-05', 'pagado', 'tarjeta', 'Pago recurrente'),
(6, 950.80, '2024-04-10', '2024-05-10', 'pagado', 'efectivo', 'Cobrado en oficina'),

-- Clientes con pagos vencidos
(7, 4300.00, '2024-03-01', '2024-04-01', 'vencido', NULL, 'En proceso legal'),
(8, 1200.50, '2024-03-15', '2024-04-15', 'vencido', NULL, 'Cliente no responde'),

-- Más registros variados
(9, 750.00, '2024-05-05', '2024-06-05', 'pendiente', NULL, 'Promesa de pago para junio'),
(10, 3600.25, '2024-05-12', '2024-06-12', 'pendiente', NULL, 'Enviar recordatorio'),
(11, 2800.00, '2024-04-20', '2024-05-20', 'pagado', 'transferencia', 'Comprobante: TX-789456'),
(12, 150.90, '2024-05-03', '2024-06-03', 'pendiente', NULL, 'Deuda pequeña, prioridad baja'),
(13, 4200.75, '2024-03-10', '2024-04-10', 'vencido', NULL, 'Enviar a cobranza judicial'),
(14, 1900.00, '2024-04-25', '2024-05-25', 'pagado', 'tarjeta', 'Pago automatizado'),
(15, 3100.50, '2024-05-18', '2024-06-18', 'pendiente', NULL, 'Cliente con historial bueno'),

-- Registros adicionales
(16, 1250.00, '2024-05-02', '2024-06-02', 'pendiente', NULL, 'Contactar por WhatsApp'),
(17, 4800.00, '2024-04-15', '2024-05-15', 'pagado', 'efectivo', 'Recibido en caja'),
(18, 600.25, '2024-05-20', '2024-06-20', 'pendiente', NULL, 'Enviar factura electrónica'),
(19, 2450.50, '2024-03-05', '2024-04-05', 'vencido', NULL, 'En negociación'),
(20, 1750.75, '2024-05-08', '2024-06-08', 'pendiente', NULL, 'Promesa de pago confirmada'),
(21, 3300.00, '2024-04-30', '2024-05-30', 'pagado', 'transferencia', 'Referencia: PAGO-2024-ABC'),
(22, 900.00, '2024-05-22', '2024-06-22', 'pendiente', NULL, 'Cliente nuevo, verificar garantía'),
(23, 2000.25, '2024-03-20', '2024-04-20', 'vencido', NULL, 'Enviar notificación formal'),
(24, 3800.50, '2024-05-14', '2024-06-14', 'pendiente', NULL, 'Dividir en 2 pagos'),
(25, 1100.00, '2024-04-08', '2024-05-08', 'pagado', 'cheque', 'Cheque #789456'),
(26, 2700.75, '2024-05-25', '2024-06-25', 'pendiente', NULL, 'Aprobado para refinanciar'),
(27, 1550.00, '2024-03-28', '2024-04-28', 'vencido', NULL, 'Último intento de contacto'),
(28, 4100.00, '2024-05-30', '2024-06-30', 'pendiente', NULL, 'Alta prioridad'),
(29, 800.50, '2024-04-12', '2024-05-12', 'pagado', 'efectivo', 'Pago parcial registrado'),
(30, 2950.25, '2024-05-17', '2024-06-17', 'pendiente', NULL, 'Cliente VIP, manejar con cuidado');

INSERT INTO pago (id_cliente, monto, fecha_pago, metodo_pago, referencia) VALUES
-- Pagos recientes (2024)
(1, 1500.00, '2024-05-10', 'transferencia', 'TRANS-789456'),
(2, 320.50, '2024-05-12', 'efectivo', 'REC-123'),
(3, 2200.00, '2024-05-15', 'tarjeta', 'VISA-456789'),

-- Pagos anteriores (2024)
(4, 1800.75, '2024-04-05', 'transferencia', 'TRANS-654321'),
(5, 950.00, '2024-04-10', 'efectivo', 'REC-456'),
(6, 4300.25, '2024-03-15', 'tarjeta', 'MC-987654'),

-- Pagos con métodos variados
(7, 1200.00, '2024-05-18', 'cheque', 'CHQ-789123'),
(8, 600.50, '2024-05-20', 'transferencia', 'TRANS-321654'),
(9, 2450.00, '2024-03-28', 'efectivo', 'REC-789'),
(10, 1750.25, '2024-05-22', 'tarjeta', 'VISA-123456'),

-- Pagos adicionales
(11, 3300.00, '2024-04-30', 'transferencia', 'TRANS-987123'),
(12, 900.75, '2024-05-25', 'efectivo', 'REC-321'),
(13, 2000.00, '2024-03-10', 'cheque', 'CHQ-456789'),
(14, 3800.50, '2024-05-28', 'tarjeta', 'MC-654321'),
(15, 1100.00, '2024-04-15', 'transferencia', 'TRANS-147258'),

-- Últimos pagos
(16, 2700.25, '2024-05-30', 'efectivo', 'REC-654'),
(17, 1550.00, '2024-03-20', 'cheque', 'CHQ-258369'),
(18, 4100.75, '2024-06-01', 'tarjeta', 'VISA-369258'),
(19, 800.00, '2024-04-20', 'transferencia', 'TRANS-963852'),
(20, 2950.50, '2024-06-05', 'efectivo', 'REC-987');

INSERT INTO empleado (nombre, puesto, salario, fecha_contratacion, departamento, activo) VALUES
-- Gerencia
('Juan Pérez', 'Gerente General', 8500.00, '2020-01-15', 'Gerencia', 1),
('María Gómez', 'Subgerente', 6500.00, '2021-03-10', 'Gerencia', 1),

-- Ventas
('Carlos López', 'Jefe de Ventas', 4500.00, '2022-05-20', 'Ventas', 1),
('Ana Rodríguez', 'Ejecutiva de Ventas', 3200.00, '2023-02-18', 'Ventas', 1),
('Pedro Sánchez', 'Asesor Comercial', 2800.00, '2023-06-12', 'Ventas', 1),

-- Contabilidad
('Laura Martínez', 'Contadora Senior', 5000.00, '2021-11-05', 'Contabilidad', 1),
('Diego Fernández', 'Auxiliar Contable', 2300.00, '2023-04-22', 'Contabilidad', 1),

-- TI
('Sofía Ramírez', 'Desarrolladora Senior', 6000.00, '2020-08-30', 'TI', 1),
('Miguel Torres', 'Soporte Técnico', 3500.00, '2022-09-15', 'TI', 1),
('Elena Castro', 'Analista de Datos', 4200.00, '2023-01-10', 'TI', 1),

-- Recursos Humanos
('Oscar Guzmán', 'Reclutador', 3800.00, '2022-07-25', 'RH', 1),
('Lucía Medina', 'Coordinadora de RH', 4800.00, '2021-05-14', 'RH', 1),

-- Logística
('Daniel Paredes', 'Almacenista', 2100.00, '2023-03-08', 'Logística', 1),
('Adriana Cordero', 'Supervisora de Logística', 3900.00, '2022-02-28', 'Logística', 1),

-- Marketing
('Juan Reyes', 'Especialista en Marketing', 4000.00, '2022-04-17', 'Marketing', 1),
('Patricia Núñez', 'Diseñadora Gráfica', 3400.00, '2023-07-30', 'Marketing', 1),

-- Empleados inactivos
('Roberto Delgado', 'Ex-Asesor Comercial', 0.00, '2021-10-12', 'Ventas', 0),
('Carmen Vega', 'Ex-Contadora', 0.00, '2020-12-01', 'Contabilidad', 0),
('Santiago Ríos', 'Ex-Soporte Técnico', 0.00, '2022-11-20', 'TI', 0);





