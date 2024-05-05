-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2024 a las 23:40:55
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdjosue`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentabancaria`
--

CREATE TABLE `cuentabancaria` (
  `nroCuenta` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `fechaA` date DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `ciUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentabancaria`
--

INSERT INTO `cuentabancaria` (`nroCuenta`, `tipo`, `fechaA`, `monto`, `estado`, `ciUsuario`) VALUES
(1, 'Ahorro', '2024-02-18', 500, 1, 2),
(2, 'Plazo fijo', '2023-01-20', 0, 1, 2),
(3, 'Corriente', '2020-05-08', 1, 1, 4),
(4, 'Ahorro', '2021-07-30', 900, 1, 5),
(5, 'Plazo fijo', '2019-06-25', 400, 1, 6),
(6, 'Corriente', '2024-05-20', 300, 1, 2),
(7, 'Ahorro', '2023-04-15', 2000, 1, 9),
(8, 'Plazo fijo', '2022-03-10', 0, 1, 4),
(9, 'Corriente', '2018-02-05', 150, 1, 5),
(10, 'Ahorro', '2023-01-05', 100, 1, 6),
(11, 'Plazo fijo', '2024-04-20', 500, 1, 11),
(13, 'Plazo fijo', '2024-04-21', 123, 1, 12),
(14, 'Plazo fijo', '2024-04-25', 4000, 1, 4),
(15, 'Corriente', '2024-04-25', 700, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ci` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `paterno` varchar(50) DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ci`, `nombre`, `paterno`, `extension`, `edad`, `estado`) VALUES
(1, 'Josue', 'Quispe', 'LP', 22, 0),
(2, 'Gabriel', 'Huiza', 'OR', 20, 1),
(3, 'Andres', 'Quiroga', 'CBBA', 30, 1),
(4, 'Luisa', 'Torrez', 'LP', 25, 1),
(5, 'Ana', 'Barbara', 'SCZ', 27, 1),
(6, 'Lucia', 'Choque', 'CBBA', 26, 1),
(7, 'Alejandra', 'Mamani', 'TRJ', 24, 1),
(8, 'Lucas', 'Veraldo', 'CBBA', 30, 1),
(9, 'Carlos', 'Casas', 'BN', 47, 1),
(10, 'Maria', 'Morales', 'LP', 55, 1),
(11, 'Prueba', 'Aprueba', 'TRJ', 15, 1),
(12, 'preuba2', 'Prueba2', 'CH', 45, 1),
(13, 'prueba3', 'prueba3', 'OR', 59, 1),
(14, 'prueba4Cambio', 'prueba4Cambio', 'LP', 60, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `descripcion`) VALUES
(1, 'Director'),
(2, 'Cliente'),
(3, 'Operador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `idTra` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `montoS` float DEFAULT NULL,
  `nroCuenta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`idTra`, `tipo`, `fecha`, `montoS`, `nroCuenta`) VALUES
(1, 'retiro', '2024-04-11', 20, 1),
(2, 'deposito', '2024-04-10', 50, 3),
(3, 'pago de servicio', '2024-04-09', 100, 4),
(4, 'retiro', '2024-04-08', 80, 5),
(5, 'deposito', '2024-04-07', 10, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nro` int(11) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nro`, `usuario`, `pass`, `rol`) VALUES
(1, 'josue123', 'e10adc3949ba59abbe56e057f20f883e', 1),
(2, 'Gabriel123', 'a7d1d660e659c1e470b72b880624f6b3', 2),
(4, 'Luisa123', 'b8125add5c3f445d12b356ae388384b9', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuentabancaria`
--
ALTER TABLE `cuentabancaria`
  ADD PRIMARY KEY (`nroCuenta`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`idTra`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuentabancaria`
--
ALTER TABLE `cuentabancaria`
  MODIFY `nroCuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
