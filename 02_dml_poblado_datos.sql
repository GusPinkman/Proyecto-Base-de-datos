INSERT INTO pcfix
(CLIENTE, EQUIPO, ORDEN_SERVICIO_DATE, TECNICO, TIPO_SERVICIO, MONTO, METODO_PAGO, ESTADO_PAGO)
VALUES
('Juan Perez', 'Laptop', '2026-10-20', 'Carlos', 'Mantenimiento', 120.00, 'Efectivo', 'Pagado'),
('Maria Lopez', 'PC', '2026-10-21', 'Pedro', 'Reparacion', 250.50, 'Tarjeta', 'Pagado'),
('Luis Torres', 'Laptop', '2026-10-22', 'Miguel', 'Limpieza', 80.00, 'Yape', 'Pagado'),
('Ana Flores', 'Impresora', '2026-10-23', 'Carlos', 'Diagnostico', 50.00, 'Efectivo', 'Pendiente'),
('Jose Ramirez', 'PC', '2026-10-24', 'Pedro', 'Formateo', 150.00, 'Transferencia', 'Pagado')

UPDATE pcfix SET CLIENTE = 'Juan Garcia' WHERE id = 1;
UPDATE pcfix SET EQUIPO = 'PC Gamer' WHERE id = 2;
UPDATE pcfix SET EQUIPO = 'Roberto' WHERE id = 3;
UPDATE pcfix SET EQUIPO = 'Reparacion' WHERE id = 4;
UPDATE pcfix SET MONTO = 280.00 WHERE id = 5;
UPDATE pcfix SET METODO_PAGO = 'Plin' WHERE id = 6;
UPDATE pcfix SET ESTADO_PAGO = 'Pagado' WHERE id = 7;
UPDATE pcfix SET ORDEN_SERVICIO_DATE = '2026-10-25' WHERE id = 8;
