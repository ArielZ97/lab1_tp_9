-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2024 a las 16:31:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lab1_tp9`
--

-- --------------------------------------------------------
CREATE DATABASE IF NOT EXISTS `lab1_tp9` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lab1_tp9`;

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ClienteID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `CorreoElectronico` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ClienteID`, `Nombre`, `Direccion`, `CorreoElectronico`) VALUES
(1, 'Juan Pérez', 'Calle Principal 123', 'juan.perez@example.com'),
(2, 'María González', 'Avenida Central 456', 'maria.gonzalez@example.com'),
(3, 'Pedro Sánchez', 'Calle Secundaria 789', 'pedro.sanchez@example.com'),
(4, 'Ana Rodríguez', 'Plaza Mayor 101', 'ana.rodriguez@example.com'),
(5, 'Carlos Hernández', 'Callejón Oscuro 202', 'carlos.hernandez@example.com'),
(6, 'Lucía Morales', 'Avenida del Sol 303', 'lucia.morales@example.com'),
(7, 'Jorge Ramírez', 'Calle del Río 404', 'jorge.ramirez@example.com'),
(8, 'Sofía Jiménez', 'Plaza de la Luna 505', 'sofia.jimenez@example.com'),
(9, 'Luis Fernández', 'Avenida de las Flores 606', 'luis.fernandez@example.com'),
(10, 'Elena Martín', 'Calle del Bosque 707', 'elena.martin@example.com'),
(324, 'Agustin Jofre', 'av. Santa Marina 2509', 'agus110196@gmail.com'),
(678, 'Ariel Zurita', 'Rivadavia 355', 'arielzurita52@gmail.com'),
(2342, 'Carlos Ferrando', 'San Martin 235', 'cferrando2015@gmail.com'),
(53434, 'Martin Piriz', 'Colon 357', 'mpirizdutra@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallespedidos`
--

CREATE TABLE `detallespedidos` (
  `DetallePedidoID` int NOT NULL AUTO_INCREMENT,
  `PedidoID` int(11) NOT NULL,
  `ProductoID` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detallespedidos`
--

INSERT INTO `detallespedidos` (`DetallePedidoID`, `PedidoID`, `ProductoID`, `Cantidad`) VALUES
(1, 4, 7, 10),
(2, 5, 6, 8),
(3, 1, 9, 11),
(4, 5, 6, 8),
(7, 2, 5, 15),
(9, 8, 5, 15),
(34, 2, 3, 54),
(45, 4, 5, 45),
(78, 4, 5, 565),
(202, 2, 3, 54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `PedidoID` int(11) NOT NULL,
  `FechaPedido` date NOT NULL,
  `ClienteID` int(11) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`PedidoID`, `FechaPedido`, `ClienteID`, `Estado`) VALUES
(1, '2023-02-01', 1, 'Pendiente'),
(2, '2024-04-02', 2, 'Pendiente'),
(3, '2024-04-03', 3, 'Pendiente'),
(4, '2024-04-04', 4, 'Pendiente'),
(5, '2024-04-05', 5, 'Pendiente'),
(6, '2024-04-06', 6, 'Pendiente'),
(7, '2024-04-07', 7, 'Pendiente'),
(8, '2024-04-08', 8, 'Pendiente'),
(9, '2024-04-09', 9, 'Pendiente'),
(10, '2024-04-10', 10, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ProductoID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ProductoID`, `Nombre`, `Descripcion`, `Precio`) VALUES
(1, 'Camiseta', 'Camiseta de algodón de manga corta', 502.00),
(2, 'Pantalones', 'Pantalones vaqueros de hombre', 29.99),
(3, 'Zapatos deportivos', 'Zapatos deportivos unisex', 49.99),
(4, 'Reloj', 'Reloj de pulsera de acero inoxidable', 89.99),
(5, 'Gorra', 'Gorra de béisbol ajustable', 9.99),
(6, 'Bufanda', 'Bufanda de lana cálida', 14.99),
(7, 'Mochila', 'Mochila escolar con varios compartimentos', 39.99),
(8, 'Gafas de sol', 'Gafas de sol polarizadas', 24.99),
(9, 'Calcetines', 'Pack de 5 pares de calcetines', 12.99),
(10, 'Cinturón', 'Cinturón de cuero negro', 500.00),
(2033, 'Campera', 'Cuero negro Masculino', 800.99),
(2057, 'calza', 'blanca para mujer', 500.99),
(2901, 'chalina', 'algodon azul', 284.99),
(3024, 'toalla', 'de river campeon', 912.18);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ClienteID`),
  ADD UNIQUE KEY `CorreoElectronico` (`CorreoElectronico`);

--
-- Indices de la tabla `detallespedidos`
--
ALTER TABLE `detallespedidos`
  ADD PRIMARY KEY (`DetallePedidoID`),
  ADD KEY `PedidoID` (`PedidoID`),
  ADD KEY `ProductoID` (`ProductoID`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`PedidoID`),
  ADD KEY `ClienteID` (`ClienteID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ProductoID`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallespedidos`
--
ALTER TABLE `detallespedidos`
  ADD CONSTRAINT `detallespedidos_ibfk_1` FOREIGN KEY (`PedidoID`) REFERENCES `pedidos` (`PedidoID`),
  ADD CONSTRAINT `detallespedidos_ibfk_2` FOREIGN KEY (`ProductoID`) REFERENCES `productos` (`ProductoID`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ClienteID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
