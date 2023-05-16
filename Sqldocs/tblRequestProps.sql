-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-05-2023 a las 20:13:19
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
-- Estructura de tabla para la tabla `tbl_RequestProps`
--

CREATE TABLE `tbl_RequestProps` (
  `id_RequestProps` int(11) NOT NULL,
  `st_Nombre` varchar(25) NOT NULL,
  `st_Email` varchar(25) NOT NULL,
  `i_Celular` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_RequestProps`
--

INSERT INTO `tbl_RequestProps` (`id_RequestProps`, `st_Nombre`, `st_Email`, `i_Celular`) VALUES
(1, 'ivan', 'admin@admin.com', 2147483647);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_RequestProps`
--
ALTER TABLE `tbl_RequestProps`
  ADD PRIMARY KEY (`id_RequestProps`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_RequestProps`
--
ALTER TABLE `tbl_RequestProps`
  MODIFY `id_RequestProps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
