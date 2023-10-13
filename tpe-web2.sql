-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2023 a las 22:44:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tpe-web2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`, `img`) VALUES
('bar', 'Bares', 'establecimiento comercial donde se sirven bebidas alcohólicas, no alcohólicas y aperitivos, generalmente para ser consumidos de inmediato en el mismo establecimiento en un servicio de barra.', ''),
('cafe', 'Cafeterias', 'establecimiento de hostelería donde se sirven aperitivos y comidas, generalmente platos combinados, pero no menús o cartas. Una cafetería comparte algunas características con un bar y otras con un restaurante.', ''),
('resto', 'Restaurantes', 'establecimiento de servicio, en el mayor de los casos públicos, donde se paga por la comida y bebida para ser consumidas en el mismo local o para llevarla.', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `horario` varchar(255) NOT NULL,
  `id_categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`id_producto`, `nombre`, `ubicacion`, `horario`, `id_categoria`) VALUES
(1, 'Brooklyn', 'Gral.Rodriguez 831\r\n', ' 19:00-03:00', 'bar'),
(2, 'Prego', 'Av.España 698', '07:00 a 21:00', 'cafe'),
(3, 'Cinema', '9 de Julio 729', '20:00 a 04:00', 'bar'),
(4, 'Antares', 'Av.España 737', '20:00 a 04:00', 'bar'),
(5, 'Hunter', 'Paz 497', '19:00 a 02:00', 'bar'),
(6, 'El ojo de Ugin', 'Hipólito Yrigoyen 731', '09:00 a 21:00', 'cafe'),
(7, 'Ruya', '9 de Julio 542', '08:00 a 21:00', 'cafe'),
(8, 'Harriz', 'Maipu 501', '19:00 a 02:00', 'bar'),
(9, 'Requeterico', '9 de Julio 399', '07:00 a 22:00', 'cafe'),
(10, 'Havanna', 'Pinto 674', '08:00 a 21:00', 'cafe'),
(11, 'Bodegon Del Fuerte', 'Belgrano 589', '12:00 a 15:30/20:00 a 00:00', 'resto'),
(12, 'Gril Argentino', 'Gral. Rodríguez 552', '12:00 a 15:00/20:30 a 00:00', 'resto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD CONSTRAINT `lugares_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
