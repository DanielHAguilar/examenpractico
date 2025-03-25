-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2025 a las 18:48:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miempresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `idPro` int(11) NOT NULL,
  `Nombre` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Precio` float NOT NULL,
  `Ext` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;



CREATE TABLE `tb_usuarios` (
  `idUser` int(11) NOT NULL,
  `NomUser` varchar(20) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Passwd` varchar(25) NOT NULL,
  `NiveUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `tb_usuarios` (`idUser`, `NomUser`, `Nombre`, `Passwd`, `NiveUser`) VALUES
(1, 'admin', 'Daniel', 'unach', 2),
(2, 'jefeventas', 'Daniel Jefe', 'ventas123', 2);

ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`idPro`);

ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`idUser`);

ALTER TABLE `tb_usuarios`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_productos`
MODIFY `idPro` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
--
-- Volcado de datos para la tabla `tb_productos`
--

INSERT INTO `tb_productos` (`idPro`, `Nombre`, `Precio`, `Ext`) VALUES
(0, 'Mouse', 300, 5),
(1, 'TV UltraHD 52 plg.', 12500, 4),
(2, 'Impresora Laser Color', 5200, 3);

