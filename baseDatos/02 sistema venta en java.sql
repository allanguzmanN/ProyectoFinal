-- crear nuestra base de datos
CREATE DATABASE bd_sistema_ventas;
-- usamos la base de datos
USE bd_sistema_ventas;

-- crear tablapma__trackingpma__pdf_pagesbd_sistema_ventastb_usuario usuarios
CREATE TABLE tb_usuario(
idUsuario INT (11) AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
usuario VARCHAR(15) NOT NULL,
PASSWORD VARCHAR(15) NOT NULL,
telefono VARCHAR(15) NOT NULL,
estado INT(1) NOT NULL
);

-- crear tabla cliente
CREATE TABLE tb_cliente(
idCliente INT (11) AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
cedula VARCHAR(15) NOT NULL,
telefono VARCHAR(15) NOT NULL,
direccion VARCHAR(100) NOT NULL,
estado INT(1) NOT NULL
);

-- crear tabla categoria
CREATE TABLE tb_categoria(
idCategoria INT (11) AUTO_INCREMENT PRIMARY KEY,
descripcion VARCHAR(200) NOT NULL,
estado INT(1) NOT NULL
);

-- crear tabla producto
CREATE TABLE tb_producto(
idProducto INT (11) AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
cantidad INT(11) NOT NULL,
precio DOUBLE(10,2) NOT NULL,
descripcion VARCHAR(200) NOT NULL,
porcentajeIva INT(2) NOT NULL,
idCategoria INT(11) NOT NULL,
estado INT(1) NOT NULL
);

-- crear tabla cabecera de venta
CREATE TABLE tb_cabecera_venta(
idCabeceraVenta INT (11) AUTO_INCREMENT PRIMARY KEY,
idCliente INT(11) NOT NULL,
valorPagar DOUBLE(10,2) NOT NULL,
fechaVenta DATE NOT NULL,
estado INT(1) NOT NULL
);

-- crear tabla detalle de venta
CREATE TABLE tb_detalle_venta(
idDetalleVenta INT (11) AUTO_INCREMENT PRIMARY KEY,
idCabeceraVenta INT (11) NOT NULL,
idProducto INT (11) NOT NULL,
cantidad INT(11) NOT NULL,
precioUnitario DOUBLE(10,2) NOT NULL,
subtotal DOUBLE(10,2) NOT NULL,
descuento DOUBLE(10,2) NOT NULL,
iva DOUBLE(10,2) NOT NULL,
totalPagar DOUBLE(10,2) NOT NULL,
estado INT(1) NOT NULL
);

-- mostrar todas las tablas de mi base de datos
SHOW TABLES;
SELECT * FROM tb_categoria;

