-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-05-2023 a las 20:04:49
-- Versión del servidor: 10.5.19-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u611292494_icapitaldb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_Estados`
--

CREATE TABLE `cat_Estados` (
  `id_Estado` int(11) NOT NULL,
  `st_Nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cat_Estados`
--

INSERT INTO `cat_Estados` (`id_Estado`, `st_Nombre`) VALUES
(2, 'Aguascalientes'),
(3, 'Baja California '),
(4, 'Baja California Sur '),
(5, 'Campeche '),
(6, 'Chiapas'),
(7, 'Chihuahua'),
(8, 'Ciudad de México '),
(9, 'Coahuila'),
(10, 'Colima'),
(11, 'Durango'),
(12, ' Estado de México '),
(13, 'Guanajuato '),
(14, 'Guerrero '),
(15, 'Hidalgo'),
(16, 'Jalisco'),
(17, 'Michoacán'),
(18, 'Morelos'),
(19, 'Nayarit'),
(20, 'Nuevo León '),
(21, 'Oaxaca '),
(22, 'Puebla'),
(23, 'Querétaro '),
(24, 'Quintana Roo '),
(25, 'San Luis Potosí '),
(26, ' Sinaloa '),
(27, 'Sonora '),
(28, 'Tabasco '),
(29, 'Tamaulipas '),
(30, 'Tlaxcala'),
(31, 'Veracruz'),
(32, ' Yucatán '),
(33, 'Zacatecas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_Estados`
--
ALTER TABLE `cat_Estados`
  ADD PRIMARY KEY (`id_Estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_Estados`
--
ALTER TABLE `cat_Estados`
  MODIFY `id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
