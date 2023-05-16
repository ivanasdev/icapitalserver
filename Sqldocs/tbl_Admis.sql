-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-05-2023 a las 20:09:54
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
-- Estructura de tabla para la tabla `tbl_Admis`
--

CREATE TABLE `tbl_Admis` (
  `id_Administrador` int(11) NOT NULL,
  `st_Nombre` varchar(25) NOT NULL,
  `st_Ap` varchar(25) NOT NULL,
  `st_Am` varchar(25) NOT NULL,
  `st_Email` varchar(25) NOT NULL,
  `st_Password` varchar(100) NOT NULL,
  `id_Permiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_Admis`
--

INSERT INTO `tbl_Admis` (`id_Administrador`, `st_Nombre`, `st_Ap`, `st_Am`, `st_Email`, `st_Password`, `id_Permiso`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin@admin.com', 'admin123', 9),
(5, 'Ivan', 'Acosta', 'Suarez', 'ivan@gmail.com', 'hola123', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_Admis`
--
ALTER TABLE `tbl_Admis`
  ADD PRIMARY KEY (`id_Administrador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_Admis`
--
ALTER TABLE `tbl_Admis`
  MODIFY `id_Administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
