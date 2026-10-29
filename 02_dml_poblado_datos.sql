INSERT INTO pcfix
(CLIENTE, EQUIPO, ORDEN_SERVICIO_DATE, TECNICO, TIPO_SERVICIO)
VALUES
('Juan Perez', 'Laptop', '2026-10-20', 'Carlos', 'Mantenimiento'),
('Maria Lopez', 'PC', '2026-10-21', 'Pedro', 'Reparacion'),
('Luis Torres', 'Laptop', '2026-10-22', 'Miguel', 'Limpieza'),
('Ana Flores', 'Impresora', '2026-10-23', 'Carlos', 'Diagnostico'),
('Jose Ramirez', 'PC', '2026-10-24', 'Pedro', 'Formateo');

UPDATE pcfix SET CLIENTE = 'Juan Garcia' WHERE id = 1;
UPDATE pcfix SET EQUIPO = 'PC Gamer' WHERE id = 2;
UPDATE pcfix SET TECNICO = 'Roberto' WHERE id = 3;
UPDATE pcfix SET TIPO_SERVICIO = 'Reparacion' WHERE id = 4;
UPDATE pcfix SET ORDEN_SERVICIO_DATE = '2026-10-25' WHERE id = 5;
