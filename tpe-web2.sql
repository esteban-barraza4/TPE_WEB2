-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2023 a las 22:21:41
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
  `id_categoria` int(11) NOT NULL,
  `Nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `Nombre`) VALUES
(0, 'Bares'),
(1, 'Cafeterias'),
(2, 'Restaurantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `id_producto` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `ubicacion` text NOT NULL,
  `horario` text NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`id_producto`, `nombre`, `ubicacion`, `horario`, `id_categoria`) VALUES
(1, 'Brooklyn', 'Gral.Rodriguez 831\r\n', ' 19:00-03:00', 0),
(2, 'Prego', 'Av.España 698', '07:00 a 21:00', 1),
(3, 'Cinema', '9 de Julio 729', '20:00 a 04:00', 0),
(4, 'Antares', 'Av.España 737', '20:00 a 04:00', 0),
(5, 'Hunter', 'Paz 497', '19:00 a 02:00', 0),
(6, 'El ojo de Ugin', 'Hipólito Yrigoyen 731', '09:00 a 21:00', 1),
(7, 'Ruya', '9 de Julio 542', '08:00 a 21:00', 1),
(8, 'Harriz', 'Maipu 501', '19:00 a 02:00', 0),
(9, 'Requeterico', '9 de Julio 399', '07:00 a 22:00', 1),
(10, 'Havanna', 'Pinto 674', '08:00 a 21:00', 1),
(11, 'Bodegon Del Fuerte', 'Belgrano 589', '12:00 a 15:30/20:00 a 00:00', 2),
(12, 'Gril Argentino', 'Gral. Rodríguez 552', '12:00 a 15:00/20:30 a 00:00', 2);

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
  ADD CONSTRAINT `lugares_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
