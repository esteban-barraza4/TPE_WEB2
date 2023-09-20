-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2023 a las 23:33:03
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
-- Estructura de tabla para la tabla `bares`
--

CREATE TABLE `bares` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ubi` varchar(50) NOT NULL,
  `horario` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bares`
--

INSERT INTO `bares` (`id`, `nombre`, `ubi`, `horario`, `precio`, `id_menu`) VALUES
(1, 'Antares', 'Av.España 737', ' 19:00-02:00', 4, 0),
(2, 'Cinema', '9 de JUlio 729', ' 20:00-04:00', 2, 0),
(3, 'Hunter', 'Paz 497', ' 19:00-02:00', 3, 0),
(4, 'Harriz', 'Maipu 501', ' 19:00-02:00', 1, 0),
(5, 'Brooklyn', 'Gral.Rodriguez 831', ' 19:00-03:00', 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cafeterias`
--

CREATE TABLE `cafeterias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ubi` varchar(50) NOT NULL,
  `horario` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cafeterias`
--

INSERT INTO `cafeterias` (`id`, `nombre`, `ubi`, `horario`, `precio`, `menu`) VALUES
(1, 'Ruya', '9 de Julio 542', '08:00-21:00', 3, ''),
(2, 'El Ojo Ugin', 'Hipolito Yrigoyen 731', '09:00-21:00', 1, ''),
(3, 'PREGO', 'Av.España 698', '07:00-20:30', 3, ''),
(4, 'Golden', '9 de Julio 600', '08:00-02:00', 2, ''),
(5, 'Requeterico', '9 de Julio 399', '07:00-22:00', 2, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu brooklyn`
--

CREATE TABLE `menu brooklyn` (
  `id` int(11) NOT NULL,
  `Comida/Bebida` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `descripción` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu brooklyn`
--

INSERT INTO `menu brooklyn` (`id`, `Comida/Bebida`, `precio`, `descripción`) VALUES
(2, 'Fernet con coca', '$1500', 'medio'),
(3, 'Gin Tonic Frutos Rojos', '$1800', 'alto'),
(4, 'Papas Antares', '$2400', 'Abundante'),
(5, 'Pizza Barrigona', '$4500', 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu cinema`
--

CREATE TABLE `menu cinema` (
  `id` int(11) NOT NULL,
  `Comida/Bebida` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `descripción` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu cinema`
--

INSERT INTO `menu cinema` (`id`, `Comida/Bebida`, `precio`, `descripción`) VALUES
(1, 'Fernet con coca', '$1500', 'medio'),
(2, 'Gin Tonic Frutos Rojos', '$1800', 'alto'),
(3, 'Papas Antares', '$2400', 'Abundante'),
(4, 'Pizza Barrigona', '$4500', 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu golden`
--

CREATE TABLE `menu golden` (
  `id` int(11) NOT NULL,
  `Comida/Bebida` text NOT NULL,
  `precio` text NOT NULL,
  `descripción` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu golden`
--

INSERT INTO `menu golden` (`id`, `Comida/Bebida`, `precio`, `descripción`) VALUES
(1, 'Capccino', '$1200', 'grande'),
(2, 'Submarino', '$1500', 'grande'),
(3, 'Tostados j&q', '$2500', '4 unidades'),
(4, 'Chocotorta', '$2500', 'grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu hanter`
--

CREATE TABLE `menu hanter` (
  `id` int(11) NOT NULL,
  `Comida/Bebida` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `descripción` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu hanter`
--

INSERT INTO `menu hanter` (`id`, `Comida/Bebida`, `precio`, `descripción`) VALUES
(1, 'Fernet con coca', '$1500', 'medio'),
(2, 'Gin Tonic Frutos Rojos', '$1800', 'alto'),
(3, 'Papas Antares', '$2400', 'Abundante'),
(4, 'Pizza Barrigona', '$4500', 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu harriz`
--

CREATE TABLE `menu harriz` (
  `id` int(11) NOT NULL,
  `Comida/Bebida` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `descripción` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu harriz`
--

INSERT INTO `menu harriz` (`id`, `Comida/Bebida`, `precio`, `descripción`) VALUES
(1, 'Fernet con coca', '$1500', 'medio'),
(2, 'Gin Tonic Frutos Rojos', '$1800', 'alto'),
(3, 'Papas Antares', '$2400', 'Abundante'),
(4, 'Pizza Barrigona', '$4500', 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu ojo de ugin`
--

CREATE TABLE `menu ojo de ugin` (
  `id` int(11) NOT NULL,
  `Comida/Bebida` text NOT NULL,
  `precio` text NOT NULL,
  `descripción` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu ojo de ugin`
--

INSERT INTO `menu ojo de ugin` (`id`, `Comida/Bebida`, `precio`, `descripción`) VALUES
(1, 'Capccino', '$1200', 'grande'),
(2, 'Submarino', '$1500', 'grande'),
(3, 'Tostados j&q', '$2500', '4 unidades'),
(4, 'Chocotorta', '$2500', 'grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu prego`
--

CREATE TABLE `menu prego` (
  `id` int(11) NOT NULL,
  `Comida/Bebida` text NOT NULL,
  `precio` text NOT NULL,
  `descripción` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu prego`
--

INSERT INTO `menu prego` (`id`, `Comida/Bebida`, `precio`, `descripción`) VALUES
(1, 'Capccino', '$1200', 'grande'),
(2, 'Submarino', '$1500', 'grande'),
(3, 'Tostados j&q', '$2500', '4 unidades'),
(4, 'Chocotorta', '$2500', 'grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu requeterico`
--

CREATE TABLE `menu requeterico` (
  `id` int(11) NOT NULL,
  `Comida/Bebida` text NOT NULL,
  `precio` text NOT NULL,
  `descripción` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu requeterico`
--

INSERT INTO `menu requeterico` (`id`, `Comida/Bebida`, `precio`, `descripción`) VALUES
(1, 'Capccino', '$1200', 'grande'),
(2, 'Submarino', '$1500', 'grande'),
(3, 'Tostados j&q', '$2500', '4 unidades'),
(4, 'Chocotorta', '$2500', 'grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu ruya`
--

CREATE TABLE `menu ruya` (
  `id` int(11) NOT NULL,
  `Comida/Bebida` varchar(50) NOT NULL,
  `precio` text NOT NULL,
  `descripción` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu ruya`
--

INSERT INTO `menu ruya` (`id`, `Comida/Bebida`, `precio`, `descripción`) VALUES
(5, 'Capccino', '$1200', 'grande'),
(6, 'Submarino', '$1500', 'grande'),
(7, 'Tostados j&q', '$2500', '4 unidades'),
(8, 'Chocotorta', '$2500', 'grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menú antares`
--

CREATE TABLE `menú antares` (
  `id` int(11) NOT NULL,
  `Comida/Bebida` varchar(50) NOT NULL,
  `precio` varchar(20) NOT NULL,
  `descripción` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menú antares`
--

INSERT INTO `menú antares` (`id`, `Comida/Bebida`, `precio`, `descripción`) VALUES
(5, 'Fernet con coca', '$1500', 'medio'),
(6, 'Gin Tonic Frutos Rojos', '$1800', 'alto'),
(7, 'Papas Antares', '$2400', 'Abundante'),
(8, 'Pizza Barrigona', '$4500', 'Grande');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bares`
--
ALTER TABLE `bares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu` (`id_menu`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indices de la tabla `cafeterias`
--
ALTER TABLE `cafeterias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu brooklyn`
--
ALTER TABLE `menu brooklyn`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu cinema`
--
ALTER TABLE `menu cinema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu golden`
--
ALTER TABLE `menu golden`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu hanter`
--
ALTER TABLE `menu hanter`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu harriz`
--
ALTER TABLE `menu harriz`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu ojo de ugin`
--
ALTER TABLE `menu ojo de ugin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu prego`
--
ALTER TABLE `menu prego`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu requeterico`
--
ALTER TABLE `menu requeterico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu ruya`
--
ALTER TABLE `menu ruya`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menú antares`
--
ALTER TABLE `menú antares`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bares`
--
ALTER TABLE `bares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cafeterias`
--
ALTER TABLE `cafeterias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `menu brooklyn`
--
ALTER TABLE `menu brooklyn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `menu cinema`
--
ALTER TABLE `menu cinema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menu golden`
--
ALTER TABLE `menu golden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menu hanter`
--
ALTER TABLE `menu hanter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menu harriz`
--
ALTER TABLE `menu harriz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menu ojo de ugin`
--
ALTER TABLE `menu ojo de ugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menu prego`
--
ALTER TABLE `menu prego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menu requeterico`
--
ALTER TABLE `menu requeterico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menu ruya`
--
ALTER TABLE `menu ruya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `menú antares`
--
ALTER TABLE `menú antares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bares`
--
ALTER TABLE `bares`
  ADD CONSTRAINT `bares_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `bares` (`id_menu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
