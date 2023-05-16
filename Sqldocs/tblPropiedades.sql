-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-05-2023 a las 20:12:54
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
-- Estructura de tabla para la tabla `tbl_Propiedades`
--

CREATE TABLE `tbl_Propiedades` (
  `id_Propiedad` int(11) NOT NULL,
  `st_NombrePropiedad` varchar(25) NOT NULL,
  `i_Precio` int(11) NOT NULL,
  `st_Ubicacion` varchar(100) NOT NULL,
  `st_Superficie` varchar(50) NOT NULL,
  `i_Plantas` int(11) NOT NULL,
  `i_Habitaciones` int(11) NOT NULL,
  `i_Sanitarios` int(11) NOT NULL,
  `i_Estacionamientos` int(11) NOT NULL,
  `st_Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_Propiedades`
--

INSERT INTO `tbl_Propiedades` (`id_Propiedad`, `st_NombrePropiedad`, `i_Precio`, `st_Ubicacion`, `st_Superficie`, `i_Plantas`, `i_Habitaciones`, `i_Sanitarios`, `i_Estacionamientos`, `st_Descripcion`) VALUES
(98, 'Medellin', 100000, 'Col.Roma Norte', '245', 1, 2, 1, 1, 'Ubicaidisima'),
(99, 'Rio Tiber', 2400000, 'Col.Reforma', '245', 1, 1, 1, 1, 'Cerca de reforma '),
(100, 'Homero', 3000000, 'Polanco', '350', 1, 1, 1, 1, 'Cerca de plaza antara'),
(101, 'Membrillo', 3500000, 'Col.Nueva Santa Maria', '450', 1, 2, 1, 0, 'Ubcadisima');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_Propiedades`
--
ALTER TABLE `tbl_Propiedades`
  ADD PRIMARY KEY (`id_Propiedad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_Propiedades`
--
ALTER TABLE `tbl_Propiedades`
  MODIFY `id_Propiedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
