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
