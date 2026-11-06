-- 01. CLIENTES: 8 clientes con telefono y correo de prueba completos.
INSERT INTO cliente (id_cliente, nombre, telefono, correo) VALUES
(1, 'Juan Garcia', '987654321', 'juan.garcia@example.com'),
(2, 'Maria Lopez', '987654322', 'maria.lopez@example.com'),
(3, 'Luis Torres', '987654323', 'luis.torres@example.com'),
(4, 'Ana Flores', '987654324', 'ana.flores@example.com'),
(5, 'Jose Ramirez', '987654325', 'jose.ramirez@example.com'),
(6, 'Rosa Salas', '987654326', 'rosa.salas@example.com'),
(7, 'Diego Quispe', '987654327', 'diego.quispe@example.com'),
(8, 'Carla Mendoza', '987654328', 'carla.mendoza@example.com');

-- 02. TIPOS DE EQUIPO.
INSERT INTO tipo_equipo (id_tipo_equipo, nombre) VALUES
(1, 'Laptop'),
(2, 'PC Gamer'),
(3, 'Impresora'),
(4, 'PC'),
(5, 'All-in-One');

-- 03. MARCAS: catalogo de marcas usado por todos los equipos.
INSERT INTO marca (id_marca, nombre) VALUES
(1, 'ASUS'), (2, 'HP'), (3, 'Lenovo'), (4, 'Dell'), (5, 'Epson');

-- 04. TECNICOS: todos con nombre, especialidad y telefono.
INSERT INTO tecnico (id_tecnico, nombre, especialidad, telefono) VALUES
(1, 'Carlos', 'Mantenimiento y hardware', '976000101'),
(2, 'Pedro', 'Reparacion de equipos', '976000102'),
(3, 'Roberto', 'Soporte tecnico', '976000103'),
(4, 'Miguel', 'Diagnostico general', '976000104'),
(5, 'Sofia', 'Software y mantenimiento', '976000105'),
(6, 'Mariana', 'Redes', '976000106');

-- 05. SERVICIOS: los presentes originalmente y otros para probar el modelo.
INSERT INTO tipo_servicio (id_tipo_servicio, nombre, descripcion) VALUES
(1, 'Mantenimiento', 'Mantenimiento general de computadoras'),
(2, 'Reparacion', 'Reparacion de fallas de hardware o software'),
(3, 'Limpieza', 'Limpieza interna y externa del equipo'),
(4, 'Formateo', 'Reinstalacion del sistema operativo'),
(5, 'Diagnostico', 'Revision para localizar la causa de una falla'),
(6, 'Cambio de componente', 'Sustitucion de una pieza defectuosa'),
(7, 'Mantenimiento preventivo', 'Revision para prevenir fallas'),
(8, 'Instalacion de software', 'Instalacion y configuracion de programas');

-- 06. ESTADOS DE ORDEN: se utilizan los estados de reparacion.
INSERT INTO estado_orden (id_estado, nombre) VALUES
(1, 'Pendiente de atencion'),
(2, 'Registrada'),
(3, 'En diagnostico'),
(4, 'En reparacion'),
(5, 'Finalizada'),
(6, 'Entregada'),
(7, 'Cancelada');


















SELECT COUNT(*) AS total_tablas
FROM information_schema.tables
WHERE table_schema = DATABASE() AND table_type = 'BASE TABLE';


SHOW TABLES;


SELECT o.id_orden, c.nombre AS cliente, te.nombre AS equipo,
       t.nombre AS tecnico, eo.nombre AS estado_reparacion, o.fecha_ingreso
FROM orden_servicio o
JOIN equipo e ON e.id_equipo = o.id_equipo
JOIN cliente c ON c.id_cliente = e.id_cliente
JOIN tipo_equipo te ON te.id_tipo_equipo = e.id_tipo_equipo
JOIN tecnico t ON t.id_tecnico = o.id_tecnico
JOIN estado_orden eo ON eo.id_estado = o.id_estado
ORDER BY o.id_orden;


SELECT o.id_orden, c.nombre AS cliente, te.nombre AS equipo,
       t.nombre AS tecnico, ts.nombre AS tipo_servicio,
       p.monto, p.metodo_pago, p.estado_pago, o.fecha_ingreso
FROM orden_servicio o
JOIN equipo e ON e.id_equipo = o.id_equipo
JOIN cliente c ON c.id_cliente = e.id_cliente
JOIN tipo_equipo te ON te.id_tipo_equipo = e.id_tipo_equipo
JOIN tecnico t ON t.id_tecnico = o.id_tecnico
JOIN detalle_servicio ds ON ds.id_orden = o.id_orden
JOIN tipo_servicio ts ON ts.id_tipo_servicio = ds.id_tipo_servicio
JOIN pago p ON p.id_orden = o.id_orden
WHERE o.id_orden BETWEEN 1 AND 5
ORDER BY o.id_orden;


SELECT 'cliente' AS tabla, COUNT(*) AS cantidad FROM cliente
UNION ALL SELECT 'tipo_equipo', COUNT(*) FROM tipo_equipo
UNION ALL SELECT 'marca', COUNT(*) FROM marca
UNION ALL SELECT 'tecnico', COUNT(*) FROM tecnico
UNION ALL SELECT 'tipo_servicio', COUNT(*) FROM tipo_servicio
UNION ALL SELECT 'estado_orden', COUNT(*) FROM estado_orden
UNION ALL SELECT 'proveedor', COUNT(*) FROM proveedor
UNION ALL SELECT 'equipo', COUNT(*) FROM equipo
UNION ALL SELECT 'repuesto', COUNT(*) FROM repuesto
UNION ALL SELECT 'orden_servicio', COUNT(*) FROM orden_servicio
UNION ALL SELECT 'historial_estado', COUNT(*) FROM historial_estado
UNION ALL SELECT 'diagnostico', COUNT(*) FROM diagnostico
UNION ALL SELECT 'detalle_servicio', COUNT(*) FROM detalle_servicio
UNION ALL SELECT 'repuesto_utilizado', COUNT(*) FROM repuesto_utilizado
UNION ALL SELECT 'pago', COUNT(*) FROM pago;


SELECT o.id_orden,
       COALESCE((SELECT SUM(ds.cantidad * ds.precio_unitario)
                 FROM detalle_servicio ds WHERE ds.id_orden = o.id_orden), 0) AS costo_servicios,
       COALESCE((SELECT SUM(ru.cantidad * ru.precio_unitario)
                 FROM repuesto_utilizado ru WHERE ru.id_orden = o.id_orden), 0) AS costo_repuestos
FROM orden_servicio o
ORDER BY o.id_orden;


SELECT o.id_orden, c.nombre AS cliente, p.monto, p.estado_pago
FROM pago p
JOIN orden_servicio o ON o.id_orden = p.id_orden
JOIN equipo e ON e.id_equipo = o.id_equipo
JOIN cliente c ON c.id_cliente = e.id_cliente
WHERE p.estado_pago = 'Pendiente';


SELECT id_cliente, nombre, telefono, correo FROM cliente ORDER BY id_cliente;


SELECT e.id_equipo, c.nombre AS cliente, te.nombre AS tipo_equipo,
       m.nombre AS marca, e.modelo, e.numero_serie
FROM equipo e
JOIN cliente c ON c.id_cliente = e.id_cliente
JOIN tipo_equipo te ON te.id_tipo_equipo = e.id_tipo_equipo
JOIN marca m ON m.id_marca = e.id_marca
ORDER BY e.id_equipo;


SELECT COUNT(*) AS clientes_sin_contacto
FROM cliente WHERE telefono IS NULL OR correo IS NULL;
