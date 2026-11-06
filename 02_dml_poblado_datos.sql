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

-- 07. PROVEEDORES (ejemplos ficticios).
INSERT INTO proveedor (id_proveedor, nombre, telefono, correo) VALUES
(1, 'Componentes Andinos', '900100001', 'contacto@andinos.test'),
(2, 'Insumos Tecnicos Sur', '900100002', 'ventas@insumossur.test'),
(3, 'Redes y Partes', '900100003', 'soporte@redesypartes.test'),
(4, 'Suministros PC', '900100004', 'pedido@suministrospc.test');

-- 08. EQUIPOS: TODOS con cliente, tipo, marca, modelo y serie.

INSERT INTO equipo
(id_equipo, id_cliente, id_tipo_equipo, id_marca, modelo, numero_serie, observaciones) VALUES
(1, 1, 1, 1, 'Vivobook 15 X1504', 'PCFIX-DEMO-001', 'Mantenimiento preventivo por temperatura elevada'),
(2, 2, 2, 1, 'ROG Strix G15', 'PCFIX-DEMO-002', 'Presenta fallas de video al encender'),
(3, 3, 1, 3, 'IdeaPad 3', 'PCFIX-DEMO-003', 'Limpieza interna y del sistema de refrigeracion'),
(4, 4, 3, 5, 'EcoTank L3210', 'PCFIX-DEMO-004', 'No imprime correctamente'),
(5, 5, 4, 2, 'ProDesk 600 G6', 'PCFIX-DEMO-005', 'Reinstalacion de Windows y controladores'),
(6, 6, 1, 1, 'Vivobook 15', 'PCFIX-DEMO-006', 'Presenta sobrecalentamiento'),
(7, 7, 4, 2, 'ProDesk 400', 'PCFIX-DEMO-007', 'Falla de conexion a red'),
(8, 8, 1, 3, 'ThinkPad E14', 'PCFIX-DEMO-008', 'Bateria agotada'),
(9, 1, 2, 1, 'ROG Strix', 'PCFIX-DEMO-009', 'No inicia'),
(10, 3, 3, 5, 'EcoTank L3250', 'PCFIX-DEMO-010', 'Impresion lenta');

-- 09. REPUESTOS: el stock aqui es el disponible ANTES de descontar usos.
INSERT INTO repuesto
(id_repuesto, id_proveedor, nombre, descripcion, stock, precio_unitario) VALUES
(1, 1, 'Pasta termica', 'Pasta termica para procesador', 20, 20.00),
(2, 1, 'Memoria RAM 8 GB', 'Modulo DDR4 de prueba', 12, 85.00),
(3, 2, 'Bateria para laptop', 'Bateria para equipo de prueba', 8, 140.00),
(4, 3, 'Adaptador Wi-Fi USB', 'Adaptador de red', 10, 35.00),
(5, 4, 'SSD 480 GB', 'Almacenamiento de estado solido', 9, 125.00),
(6, 2, 'Ventilador de laptop', 'Ventilador para disipacion', 10, 65.00),
(7, 3, 'Cable de red 2 m', 'Cable Ethernet CAT6', 30, 12.00),
(8, 4, 'Tinta de impresora', 'Botella de tinta compatible', 15, 30.00);

-- 10. ORDENES DE SERVICIO: todas con problema, tecnico y estado coherente.
INSERT INTO orden_servicio
(id_orden, id_equipo, id_tecnico, id_estado, fecha_ingreso,
 problema_reportado, fecha_entrega, costo_estimado, costo_final, observaciones) VALUES
(1, 1, 1, 6, '2026-10-20', 'Laptop se calienta al trabajar', '2026-10-22', 120.00, 120.00, 'Mantenimiento y entrega completados'),
(2, 2, 2, 6, '2026-10-21', 'PC Gamer muestra pantalla negra', '2026-10-25', 250.50, 250.50, 'Reparacion completada y equipo entregado'),
(3, 3, 3, 6, '2026-10-22', 'Equipo con polvo acumulado', '2026-10-23', 80.00, 80.00, 'Limpieza completada y equipo entregado'),
(4, 4, 1, 4, '2026-10-23', 'Impresora presenta fallas de impresion', NULL, 50.00, NULL, 'En reparacion; pago pendiente'),
(5, 5, 2, 6, '2026-10-24', 'Sistema operativo dañado; requiere formateo', '2026-10-26', 280.00, 280.00, 'Formateo completado y equipo entregado'),
(6, 6, 1, 4, '2026-11-01', 'Laptop se calienta demasiado', NULL, 85.00, NULL, 'Mantenimiento en proceso'),
(7, 7, 2, 5, '2026-11-02', 'PC no se conecta a Wi-Fi', '2026-11-04', 110.00, 110.00, 'Reparacion terminada'),
(8, 8, 3, 6, '2026-10-27', 'Bateria dura pocos minutos', '2026-10-30', 220.00, 220.00, 'Equipo entregado'),
(9, 9, 4, 3, '2026-11-03', 'PC Gamer no enciende', NULL, 40.00, NULL, 'En diagnostico'),
(10, 10, 5, 2, '2026-11-04', 'Impresora trabaja con lentitud', NULL, 55.00, NULL, 'Recien registrada'),
(11, 6, 5, 4, '2026-11-05', 'Ventilador hace ruido', NULL, 85.00, NULL, 'Segunda orden para el equipo 6'),
(12, 7, 6, 7, '2026-10-29', 'Revision de conexion por cable', NULL, 0.00, NULL, 'Cancelada por el cliente');

-- 11. HISTORIAL: IDS visibles 
INSERT INTO historial_estado
(id_historial, id_orden, id_estado, fecha_cambio, observacion) VALUES
(1, 1, 2, '2026-10-20 09:00:00', 'Laptop registrada'),
(2, 1, 4, '2026-10-21 10:00:00', 'Mantenimiento en curso'),
(3, 1, 6, '2026-10-22 15:00:00', 'Equipo entregado'),
(4, 2, 2, '2026-10-21 09:15:00', 'PC Gamer registrada'),
(5, 2, 4, '2026-10-22 11:00:00', 'Reparacion iniciada'),
(6, 2, 6, '2026-10-25 16:30:00', 'Equipo entregado'),
(7, 3, 2, '2026-10-22 10:00:00', 'Laptop registrada'),
(8, 3, 4, '2026-10-22 14:00:00', 'Limpieza en proceso'),
(9, 3, 6, '2026-10-23 12:00:00', 'Equipo entregado'),
(10, 4, 2, '2026-10-23 08:30:00', 'Impresora registrada'),
(11, 4, 4, '2026-10-24 09:00:00', 'Reparacion de impresora en proceso'),
(12, 5, 2, '2026-10-24 08:45:00', 'PC registrada'),
(13, 5, 4, '2026-10-25 10:00:00', 'Formateo en proceso'),
(14, 5, 6, '2026-10-26 17:00:00', 'PC entregada'),
(15, 6, 2, '2026-11-01 09:00:00', 'Ingreso de equipo'),
(16, 6, 3, '2026-11-01 10:30:00', 'Revision inicial'),
(17, 6, 4, '2026-11-02 08:15:00', 'Se inicia mantenimiento'),
(18, 7, 2, '2026-11-02 09:00:00', 'Ingreso de equipo'),
(19, 7, 3, '2026-11-02 11:00:00', 'Diagnostico de red'),
(20, 7, 4, '2026-11-03 09:00:00', 'Cambio de adaptador'),
(21, 7, 5, '2026-11-04 13:00:00', 'Trabajo terminado'),
(22, 8, 2, '2026-10-27 09:00:00', 'Ingreso de equipo'),
(23, 8, 3, '2026-10-27 11:00:00', 'Prueba de bateria'),
(24, 8, 4, '2026-10-28 10:00:00', 'Cambio de bateria'),
(25, 8, 5, '2026-10-29 16:00:00', 'Reparacion terminada'),
(26, 8, 6, '2026-10-30 12:00:00', 'Entrega a cliente'),
(27, 9, 2, '2026-11-03 08:45:00', 'Ingreso de equipo'),
(28, 9, 3, '2026-11-03 09:10:00', 'Inicio de diagnostico'),
(29, 10, 2, '2026-11-04 08:00:00', 'Ingreso de equipo'),
(30, 11, 2, '2026-11-05 09:00:00', 'Ingreso de equipo'),
(31, 11, 3, '2026-11-05 10:00:00', 'Revision del ventilador'),
(32, 11, 4, '2026-11-05 11:00:00', 'Reparacion en proceso'),
(33, 12, 2, '2026-10-29 09:00:00', 'Ingreso de equipo'),
(34, 12, 7, '2026-10-29 10:00:00', 'Cliente cancelo el servicio');

-- 12. DIAGNOSTICOS: ID propio, orden y tecnico responsable.
INSERT INTO diagnostico
(id_diagnostico, id_orden, id_tecnico, fecha_diagnostico,
 descripcion, solucion_recomendada) VALUES
(1, 1, 1, '2026-10-20', 'Temperatura alta por polvo acumulado', 'Limpiar ventilacion y verificar pasta termica'),
(2, 2, 2, '2026-10-22', 'Falla de video por conexion interna', 'Revisar conexiones y reparar'),
(3, 3, 3, '2026-10-22', 'Acumulacion de suciedad', 'Realizar limpieza interna y externa'),
(4, 4, 1, '2026-10-23', 'Rodillos de impresora sucios', 'Limpiar mecanismo y realizar pruebas'),
(5, 5, 2, '2026-10-24', 'Sistema operativo presenta errores', 'Respaldar informacion y reinstalar Windows'),
(6, 6, 1, '2026-11-01', 'Acumulacion de polvo y temperatura alta', 'Limpiar y aplicar pasta termica'),
(7, 7, 2, '2026-11-02', 'Adaptador Wi-Fi defectuoso', 'Reemplazar el adaptador'),
(8, 8, 3, '2026-10-27', 'Bateria degradada', 'Reemplazar la bateria'),
(9, 9, 4, '2026-11-03', 'Falla de encendido sin causa confirmada', 'Verificar fuente y memoria RAM'),
(10, 11, 5, '2026-11-05', 'Ventilador ruidoso', 'Revisar y reemplazar si es necesario');



















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

SELECT COUNT(*) AS equipos_incompletos
FROM equipo WHERE id_marca IS NULL OR modelo IS NULL OR numero_serie IS NULL;
