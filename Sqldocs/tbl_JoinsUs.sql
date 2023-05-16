-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-05-2023 a las 20:11:30
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
-- Estructura de tabla para la tabla `tbl_JoinUs`
--

CREATE TABLE `tbl_JoinUs` (
  `id_Request` int(11) NOT NULL,
  `st_Nombre` varchar(25) NOT NULL,
  `st_Ap` varchar(25) NOT NULL,
  `st_Am` varchar(25) NOT NULL,
  `st_Email` varchar(50) NOT NULL,
  `i_Celular` int(14) NOT NULL,
  `st_ViaContacto` varchar(25) NOT NULL,
  `id_Document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_JoinUs`
--

INSERT INTO `tbl_JoinUs` (`id_Request`, `st_Nombre`, `st_Ap`, `st_Am`, `st_Email`, `i_Celular`, `st_ViaContacto`, `id_Document`) VALUES
(1, 'ivan', 'acosta', 'yuy', 'admin@admin.com', 556, 'asasassdsd', 0),
(2, 'juano', 'Cubano', 'vences', 'juano@juano.com', 2147483647, 'POr fb', 0),
(3, 'Medellin', 'Acosayt', 'suarez', 'ivanacostadeveloper@gmail.com', 556, 'En redes sociales', 0),
(4, 'wero', 'vences ', 'LOPEZ', 'WERO@GMAIL.COM', 34343434, '343434343', 0),
(5, 'ivan', 'acosta', 'yuy', 'admin@admin.com', 2147483647, 'ferefrefefef', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_JoinUs`
--
ALTER TABLE `tbl_JoinUs`
  ADD PRIMARY KEY (`id_Request`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_JoinUs`
--
ALTER TABLE `tbl_JoinUs`
  MODIFY `id_Request` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
