-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2019 a las 18:43:44
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba_libro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(10) NOT NULL,
  `nombreCategoria` varchar(30) NOT NULL,
  `descripcionCategoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nombreCategoria`, `descripcionCategoria`) VALUES
(55555, 'estudiar', 'lectura veloz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `IdLibro` int(10) NOT NULL,
  `nombreLibro` varchar(30) NOT NULL,
  `autorLibro` varchar(30) NOT NULL,
  `editorial` varchar(30) NOT NULL,
  `ejemplares` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`IdLibro`, `nombreLibro`, `autorLibro`, `editorial`, `ejemplares`) VALUES
(123, 'hola', 'juan', 'holas', 10),
(987, 'dddd', 'ssss', 'aaa', 12),
(3344, 'bbbb', 'aaaa', 'aaaa', 11),
(3363, 'yyy', 'qqqq', 'str', 2),
(9807, 'prueba', 'ddd', 'fgh', 10),
(123456, 'Juan Tenorio', 'Anonimo', 'Ercilla', 10),
(345621, 'aaaaaaa', 'sssss', 'ffff', 11),
(1234567, 'cambiar', 'roberto rios', 'almagro', 10),
(1234568, 'cambiar', 'roberto rios', 'almagro', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`IdLibro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55556;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `IdLibro` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234569;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
