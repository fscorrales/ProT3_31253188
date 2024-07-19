-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-07-2024 a las 19:22:56
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
-- Base de datos: `corrales_fernando`
--
CREATE DATABASE IF NOT EXISTS `corrales_fernando` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `corrales_fernando`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfil` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfil`, `descripcion`) VALUES
(1, 'admin'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `id_perfil` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `id_perfil`, `baja`) VALUES
(1, 'Fernando', 'Corrales', 'fernando', 'micorreo@gmail.com', '$2y$10$P9b5.oSo56CjgXnKOtluO.DMjDeo8TlByrvSeWKt/0bstdmlHFQsm', 2, 'NO'),
(2, 'Kanou', 'Reload', 'admin', 'admin@admin.com', '$2y$10$ZzpHz1olivCBz/XKFUSc2uMH3lMqczBHHT/pZ5vhu5WOK8ZYivWf6', 1, 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Base de datos: `libreria`
--
CREATE DATABASE IF NOT EXISTS `libreria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `libreria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `pk_id_autor` int(11) NOT NULL,
  `pk_cp_loc` int(11) NOT NULL,
  `ape_autor` varchar(45) NOT NULL,
  `nom_autor` varchar(45) NOT NULL,
  `tel_autor` varchar(45) NOT NULL,
  `dom_autor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`pk_id_autor`, `pk_cp_loc`, `ape_autor`, `nom_autor`, `tel_autor`, `dom_autor`) VALUES
(111, 1000, 'del Castillo', 'Innes', '615 996-8275', '2286 Cram Pl. 86'),
(112, 1100, 'Carson', 'Cheryl', '415 548-7723', '589 Darwin Ln.'),
(113, 1100, 'Bennet', 'Abraham', '415 658-9932', '6223 Bateman St.'),
(114, 1200, 'Blotchet-Halls', 'Reginald', '503 745-6402', '55 Hillsdale Bl.'),
(115, 1300, 'Gringlesby', 'Burt', '707 938-6445', 'PO Box 792'),
(116, 1400, 'DeFrance', 'Michel', '219 547-9982', '3 Balding Pl.'),
(117, 1500, 'Smith', 'Meander', '913 843-0462', '10 Mississippi Dr.'),
(118, 1600, 'White', 'Johnson', '408 496-7223', '10932 Bigge Rd.'),
(119, 1700, 'Greene', 'Morningstar', '615 297-2723', '22 Graybar House Rd.'),
(120, 1800, 'Green', 'Marjorie', '415 986-7020', '309 63rd St.  411'),
(121, 1800, 'Straight', 'Dean', '415 834-2919', '5420 College Av.'),
(122, 1800, 'Stringer', 'Dirk', '415 843-2991', '5420 Telegraph Av.'),
(123, 1800, 'MacFeather', 'Stearns', '415 354-7128', '44 Upland Hts.'),
(124, 1800, 'Karsen', 'Livia', '415 534-9219', '5720 McAuley St.'),
(125, 1900, 'Dull', 'Ann', '415 836-7128', '3410 Blonde St.'),
(126, 1900, 'Hunter', 'Sheryl', '415 836-7128', '3410 Blonde St.'),
(127, 2000, 'Panteley', 'Sylvia', '301 946-8853', '1956 Arlington Pl.'),
(128, 2100, 'Ringer', 'Anne', '801 826-0752', '67 Seventh Av.'),
(129, 2100, 'Ringer', 'Albert', '801 826-0752', '67 Seventh Av.'),
(130, 2200, 'Locksley', 'Charlene', '415 585-4620', '18 Broadway Av.'),
(131, 2300, 'O\'Leary', 'Michael', '408 286-2428', '22 Cleveland Av. #14'),
(132, 2400, 'McBadden', 'Heather', '707 448-4982', '301 Putnam'),
(133, 2500, 'Yokomoto', 'Akiko', '415 935-4228', '3 Silver Ct.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_empleados`
--

CREATE TABLE `categorias_empleados` (
  `pk_id_categoria_emp` int(11) NOT NULL,
  `nom_categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorias_empleados`
--

INSERT INTO `categorias_empleados` (`pk_id_categoria_emp`, `nom_categoria`) VALUES
(1, 'presidente'),
(2, 'vicepresidente'),
(3, 'gerente'),
(4, 'gerente zonal'),
(5, 'subgerente'),
(6, 'Jefe'),
(7, 'subjefe'),
(8, 'encargado'),
(9, 'Auxiliar 1'),
(10, 'Auxiliar 2'),
(11, 'Auxiliar 3'),
(12, 'Auxiliar 4'),
(13, 'Auxiliar 5'),
(14, 'Auxiliar 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_libros`
--

CREATE TABLE `categorias_libros` (
  `pk_id_categoria` int(11) NOT NULL,
  `nom_categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorias_libros`
--

INSERT INTO `categorias_libros` (`pk_id_categoria`, `nom_categoria`) VALUES
(10, 'negocios'),
(20, 'cocina'),
(30, 'computacion'),
(40, 'psicologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `pk_id_libro` varchar(10) NOT NULL,
  `pk_id_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`pk_id_libro`, `pk_id_venta`, `cantidad`) VALUES
('BU1032', 6380, 5),
('BU1032', 8042, 10),
('BU1111', 8042, 25),
('BU2075', 7896, 35),
('BU7832', 7896, 15),
('MC2222', 7896, 10),
('MC3021', 7131, 25),
('MC3021', 8042, 15),
('PC1035', 8042, 30),
('PC8888', 7066, 50),
('PS1372', 7131, 20),
('PS2091', 6380, 3),
('PS2091', 7066, 75),
('PS2091', 7067, 10),
('PS2091', 7131, 20),
('PS2106', 7131, 25),
('PS3333', 7131, 15),
('PS7777', 7131, 25),
('TC3218', 7067, 40),
('TC4203', 7067, 20),
('TC7777', 7067, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `pk_id_editorial` int(11) NOT NULL,
  `pk_id_pais` int(11) NOT NULL,
  `nom_editorial` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`pk_id_editorial`, `pk_id_pais`, `nom_editorial`) VALUES
(736, 10, 'New Moon Books'),
(877, 10, 'Binnet & Hardley'),
(1233, 40, 'Graham Mill'),
(1389, 10, 'Algodata Infosystems'),
(1622, 40, 'Five Lakes Publishing'),
(1756, 10, 'Ramona Publishers'),
(9901, 20, 'GGG&G'),
(9952, 10, 'Scootney Books'),
(9999, 30, 'Lucerne Publishing');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `pk_id_empleado` varchar(10) NOT NULL,
  `pk_id_editorial` int(11) NOT NULL,
  `pk_id_categoria_emp` int(11) NOT NULL,
  `nom_emp` varchar(45) NOT NULL,
  `ape_emp` varchar(45) NOT NULL,
  `fecha_ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`pk_id_empleado`, `pk_id_editorial`, `pk_id_categoria_emp`, `nom_emp`, `ape_emp`, `fecha_ingreso`) VALUES
('A-C71970F', 1389, 10, 'Aria', 'Cruz', '2021-02-04'),
('A-R89858F', 9999, 6, 'Annette', 'Roulet', '0000-00-00'),
('AMD15433F', 9952, 3, 'Ann', 'Devon', '0000-00-00'),
('ARD36773F', 877, 8, 'Anabela', 'Domingues', '0000-00-00'),
('CFH28514M', 9999, 5, 'Carlos', 'Hernadez', '0000-00-00'),
('CGS88322F', 1389, 13, 'Carine', 'Schmitt', '0000-00-00'),
('DBT39435M', 877, 11, 'Daniel', 'Tonini', '0000-00-00'),
('DWR65030M', 1389, 6, 'Diego', 'Roel', '0000-00-00'),
('ENL44273F', 877, 14, 'Elizabeth', 'Lincoln', '0000-00-00'),
('F-C16315M', 9952, 4, 'Francisco', 'Chang', '0000-00-00'),
('GHT50241M', 736, 9, 'Gary', 'Thomas', '0000-00-00'),
('H-B39728F', 877, 12, 'Helen', 'Bennett', '0000-00-00'),
('HAN90777M', 9999, 7, 'Helvetius', 'Nagy', '0000-00-00'),
('HAS54740M', 736, 12, 'Howard', 'Snyder', '0000-00-00'),
('JYL26161F', 9901, 5, 'Janine', 'Labrune', '0000-00-00'),
('KFJ64308F', 736, 14, 'Karin', 'Josephs', '0000-00-00'),
('KJJ92907F', 9999, 9, 'Karla', 'Jablonski', '0000-00-00'),
('L-B31947F', 877, 7, 'Lesley', 'Brown', '0000-00-00'),
('LAL21447M', 736, 5, 'Laurence', 'Lebihan', '0000-00-00'),
('M-L67958F', 1389, 7, 'Maria', 'Larsson', '0000-00-00'),
('M-P91209M', 9999, 8, 'Manuel', 'Pereira', '0000-00-00'),
('M-R38834F', 877, 9, 'Martine', 'Rance', '0000-00-00'),
('MAP77183M', 1389, 11, 'Miguel', 'Paolino', '0000-00-00'),
('MAS70474F', 1389, 9, 'Margaret', 'Smith', '0000-00-00'),
('MFS52347M', 736, 10, 'Martin', 'Sommer', '0000-00-00'),
('MGK44605M', 736, 6, 'Matti', 'Karttunen', '0000-00-00'),
('MJP25939M', 1756, 5, 'Maria', 'Pontes', '0000-00-00'),
('MMS49649F', 736, 8, 'Mary', 'Saveley', '0000-00-00'),
('PCM98509F', 9999, 11, 'Patricia', 'McKenna', '0000-00-00'),
('PDI47470M', 736, 7, 'Palle', 'Ibsen', '0000-00-00'),
('PHF38899M', 877, 10, 'Peter', 'Franken', '0000-00-00'),
('PMA42628M', 877, 13, 'Paolo', 'Accorti', '0000-00-00'),
('POK93028M', 9999, 10, 'Pirkko', 'Koskitalo', '0000-00-00'),
('PSA89086M', 1389, 14, 'Pedro', 'Afonso', '0000-00-00'),
('PSP68661F', 1389, 8, 'Paula', 'Parente', '0000-00-00'),
('PTC11962M', 9952, 2, 'Philip', 'Cramer', '0000-00-00'),
('PXH22250M', 877, 5, 'Paul', 'Henriot', '0000-00-00'),
('R-M53550M', 736, 11, 'Roland', 'Mendel', '0000-00-00'),
('RBM23061F', 1622, 5, 'Rita', 'Muller', '0000-00-00'),
('SKO22412M', 1389, 5, 'Sven', 'Ottlieb', '0000-00-00'),
('TPO55093M', 736, 13, 'Timothy', 'O\'Rourke', '0000-00-00'),
('VPA30890F', 877, 6, 'Victoria', 'Ashworth', '0000-00-00'),
('Y-L77953M', 1389, 12, 'Yoshi', 'Latimer', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formas_pagos`
--

CREATE TABLE `formas_pagos` (
  `pk_id_forma_pago` int(11) NOT NULL,
  `nom_forma_pago` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `formas_pagos`
--

INSERT INTO `formas_pagos` (`pk_id_forma_pago`, `nom_forma_pago`) VALUES
(111, 'contado'),
(222, 'credito'),
(333, 'debito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `pk_id_libro` varchar(10) NOT NULL,
  `pk_id_autor` int(11) NOT NULL,
  `pk_id_categoria_libro` int(11) NOT NULL,
  `pk_id_editorial` int(11) NOT NULL,
  `titulo_libro` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  `fecha_publicacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`pk_id_libro`, `pk_id_autor`, `pk_id_categoria_libro`, `pk_id_editorial`, `titulo_libro`, `precio`, `fecha_publicacion`) VALUES
('BU1032', 111, 10, 9999, 'The Busy Executive\'s Database Guide', 1900, '2005-09-10'),
('BU1111', 112, 10, 1389, 'Cooking with Computers: Surreptitious Balance', 1100, '2020-12-20'),
('BU2075', 112, 10, 1389, 'You Can Combat Computer Stress!', 2000, '0000-00-00'),
('BU7832', 114, 10, 1389, 'Straight Talk About Computers', 1900, '2009-10-15'),
('MC2222', 115, 20, 9952, 'Silicon Valley Gastronomic Treats', 1900, '2010-01-09'),
('MC3021', 117, 20, 877, 'The Gourmet Microwave', 600, '2005-09-10'),
('MC3026', 123, 40, 736, 'The psicología of Computer Cooking', 800, '2020-12-20'),
('PC1035', 120, 20, 1233, 'But Is It User Friendly?', 2200, '0000-00-00'),
('PC8888', 122, 20, 1233, 'Secrets of Silicon Valley', 2000, '2009-10-15'),
('PC9999', 122, 20, 1233, 'Net Etiquette', 700, '2010-01-09'),
('PS1372', 124, 40, 736, 'Computer Phobic AND Non-Phobic Individuals: B', 2100, '2005-09-10'),
('PS2091', 125, 40, 1622, 'Is Anger the Enemy?', 1000, '2020-12-20'),
('PS2106', 126, 40, 736, 'Life Without Fear', 7000, '0000-00-00'),
('PS3333', 127, 40, 736, 'Prolonged Data Deprivation: Four Case Studies', 1900, '2009-10-15'),
('PS7777', 128, 40, 1622, 'Emotional Security: A New Algorithm', 8500, '2010-01-09'),
('TC3218', 117, 20, 877, 'Onions', 2000, '2002-01-19'),
('TC4203', 118, 20, 877, 'Fifty Years in Buckingham Palace Kitchens', 1100, '2003-09-18'),
('TC7777', 119, 20, 9901, 'Sushi', 990, '2002-09-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `pk_cp_loc` int(11) NOT NULL,
  `nom_loc` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`pk_cp_loc`, `nom_loc`) VALUES
(1000, 'Ann Arbor'),
(1100, 'Berkeley'),
(1200, 'Corvallis'),
(1300, 'Covelo'),
(1400, 'Gary'),
(1500, 'Lawrence'),
(1600, 'Menlo Park'),
(1700, 'Nashville'),
(1800, 'Oakland'),
(1900, 'Palo Alto'),
(2000, 'Rockville'),
(2100, 'Salt Lake City'),
(2200, 'San Francisco'),
(2300, 'San Jose'),
(2400, 'Vacaville'),
(2500, 'Walnut Creek');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `pk_id_pais` int(11) NOT NULL,
  `nom_pais` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`pk_id_pais`, `nom_pais`) VALUES
(10, 'USA'),
(20, 'Germany'),
(30, 'France'),
(40, 'Argentine');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `pk_id_venta` int(11) NOT NULL,
  `pk_id_forma_pago` int(11) NOT NULL,
  `fecha_venta` int(11) NOT NULL,
  `total_venta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`pk_id_venta`, `pk_id_forma_pago`, `fecha_venta`, `total_venta`) VALUES
(6380, 111, 5, 0),
(7066, 222, 2, 0),
(7067, 222, 10, 0),
(7068, 111, 2, 0),
(7131, 111, 9, 0),
(7896, 333, 3, 0),
(8042, 222, 2, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`pk_id_autor`),
  ADD KEY `autores_ibfk_1` (`pk_cp_loc`);

--
-- Indices de la tabla `categorias_empleados`
--
ALTER TABLE `categorias_empleados`
  ADD PRIMARY KEY (`pk_id_categoria_emp`),
  ADD KEY `pk_id_categoria_emp` (`pk_id_categoria_emp`);

--
-- Indices de la tabla `categorias_libros`
--
ALTER TABLE `categorias_libros`
  ADD PRIMARY KEY (`pk_id_categoria`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`pk_id_libro`,`pk_id_venta`),
  ADD KEY `pk_id_venta` (`pk_id_venta`);

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`pk_id_editorial`),
  ADD KEY `pk_id_editorial` (`pk_id_editorial`),
  ADD KEY `fk_pk_id_pais` (`pk_id_pais`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`pk_id_empleado`),
  ADD KEY `empleados_ibfk_1` (`pk_id_categoria_emp`),
  ADD KEY `fk_pk_id_editorial` (`pk_id_editorial`);

--
-- Indices de la tabla `formas_pagos`
--
ALTER TABLE `formas_pagos`
  ADD PRIMARY KEY (`pk_id_forma_pago`),
  ADD KEY `pk_id_forma_pago` (`pk_id_forma_pago`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`pk_id_libro`),
  ADD KEY `libros_ibfk_1` (`pk_id_categoria_libro`),
  ADD KEY `pk_id_autor` (`pk_id_autor`),
  ADD KEY `pk_id_editorial` (`pk_id_editorial`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`pk_cp_loc`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`pk_id_pais`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`pk_id_venta`),
  ADD KEY `pk_id_venta` (`pk_id_venta`),
  ADD KEY `pk_id_forma_pago` (`pk_id_forma_pago`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autores`
--
ALTER TABLE `autores`
  ADD CONSTRAINT `autores_ibfk_1` FOREIGN KEY (`pk_cp_loc`) REFERENCES `localidad` (`pk_cp_loc`);

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`pk_id_libro`) REFERENCES `libros` (`pk_id_libro`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`pk_id_venta`) REFERENCES `ventas` (`pk_id_venta`);

--
-- Filtros para la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD CONSTRAINT `fk_pk_id_pais` FOREIGN KEY (`pk_id_pais`) REFERENCES `paises` (`pk_id_pais`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`pk_id_categoria_emp`) REFERENCES `categorias_empleados` (`pk_id_categoria_emp`),
  ADD CONSTRAINT `fk_pk_id_editorial` FOREIGN KEY (`pk_id_editorial`) REFERENCES `editoriales` (`pk_id_editorial`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`pk_id_categoria_libro`) REFERENCES `categorias_libros` (`pk_id_categoria`),
  ADD CONSTRAINT `pk_id_autor` FOREIGN KEY (`pk_id_autor`) REFERENCES `autores` (`pk_id_autor`),
  ADD CONSTRAINT `pk_id_editorial` FOREIGN KEY (`pk_id_editorial`) REFERENCES `editoriales` (`pk_id_editorial`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `pk_id_forma_pago` FOREIGN KEY (`pk_id_forma_pago`) REFERENCES `formas_pagos` (`pk_id_forma_pago`);
--
-- Base de datos: `locations`
--
CREATE DATABASE IF NOT EXISTS `locations` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `locations`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id_country` int(11) NOT NULL,
  `country` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id_country`, `country`) VALUES
(1, 'Brazil'),
(2, 'Argentina'),
(3, 'Paraguay'),
(4, 'Bolivia'),
(5, 'Chile'),
(6, 'Uruguay');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locations`
--

CREATE TABLE `locations` (
  `id_city` int(11) NOT NULL,
  `id_country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `locations`
--

INSERT INTO `locations` (`id_city`, `id_country`, `city`, `longitude`, `latitude`) VALUES
(1, '1', 'Maracaçumé', '-45.9991326', '-2.0133843'),
(2, '1', 'São José do Rio Preto', '-49.3762272', '-20.811761'),
(3, '1', 'Sarzedo', '-44.1411883', '-20.0325016'),
(4, '2', 'Morón', '-58.5657324', '-34.66144'),
(5, '1', 'Praia Grande', '-46.4124616', '-24.0088421'),
(6, '1', 'Itaparica', '-38.6779363', '-12.8955513'),
(7, '1', 'Bom Despacho', '-45.2243578', '-19.6499319'),
(8, '1', 'Botucatu', '-48.4412549', '-22.8841363'),
(9, '1', 'Santo Antônio do Monte', '-45.2957103', '-20.0859007'),
(10, '2', 'La Puerta de San José', '-55.9207015', '-27.3900758'),
(11, '1', 'Iguatu', '-53.1426814', '-24.6399084'),
(12, '2', 'Tafí del Valle', '-65.71065', '-26.850856'),
(13, '1', 'Codajás', '-62.0610928', '-3.8398302'),
(14, '1', 'Pará de Minas', '-44.6064582', '-19.8428824'),
(15, '1', 'São José', '-48.6370861', '-27.6140791'),
(16, '2', 'Colonia Wanda', '-54.5655489', '-25.6221943'),
(17, '2', 'Maimará', '-65.1218129', '-24.3817381'),
(18, '2', 'Santa Elena', '-65.4412053', '-24.8082762'),
(19, '1', 'Natal', '-35.2370177', '-5.7966464'),
(20, '2', 'Río Grande', '-67.738423', '-53.772733'),
(21, '1', 'Laranjal Paulista', '-47.838004', '-23.0510503'),
(22, '1', 'Ladário', '-57.5977799', '-19.009336'),
(23, '1', 'Rio Largo', '-35.8482191', '-9.4909905'),
(24, '1', 'Demerval Lobão', '-42.6880552', '-5.3375891'),
(25, '2', 'Herrera', '-58.3734773', '-34.6558079'),
(26, '1', 'Jacaraú', '-35.2368246', '-6.6045148'),
(27, '1', 'Santo Antônio de Jesus', '-39.2617368', '-12.9698503'),
(28, '1', 'Viana', '-45.0373171', '-3.2023658'),
(29, '1', 'Caucaia', '-38.6608482', '-3.7294174'),
(30, '1', 'Vila Velha', '-40.2897153', '-20.3321939'),
(31, '1', 'São Luís de Montes Belos', '-50.3730843', '-16.521513'),
(32, '1', 'Boa Esperança', '-52.7241914', '-24.2670414'),
(33, '1', 'Itamarandiba', '-42.8583915', '-17.857298'),
(34, '1', 'São Joaquim da Barra', '-47.8586651', '-20.5898891'),
(35, '2', 'General Enrique Godoy', '-68.2320043', '-38.9351182'),
(36, '1', 'Porangatu', '-49.284143', '-13.3498444'),
(37, '2', 'Alejandro Roca', '-64.3479781', '-33.1341591'),
(38, '1', 'Olinda', '-34.841629', '-7.9908056'),
(39, '1', 'Orleans', '-49.3450112', '-28.3031653'),
(40, '1', 'Tupã', '-50.5069723', '-21.9310093'),
(41, '1', 'Taquara', '-50.7757844', '-29.6509722'),
(42, '3', 'Yaguarón', '-57.2875097', '-25.5657319'),
(43, '1', 'Mandaguari', '-51.70451', '-23.4500163'),
(44, '1', 'Mendes', '-43.7334089', '-22.5284121'),
(45, '1', 'São Francisco do Sul', '-48.6349331', '-26.2586271'),
(46, '1', 'Bento Gonçalves', '-51.5169861', '-29.1667089'),
(47, '1', 'Eusébio', '-38.463596', '-3.8932818'),
(48, '1', 'Alagoinhas', '-38.4211223', '-12.1339689'),
(49, '1', 'Pontalina', '-49.5687416', '-17.5582645'),
(50, '2', 'Río Ceballos', '-65.0052144', '-31.7436794'),
(51, '1', 'Ivoti', '-51.1689963', '-29.5795648'),
(52, '4', 'Eucaliptus', '-67.5082709', '-17.5982518'),
(53, '1', 'Pinheiros', '-40.1862129', '-18.3958665'),
(54, '1', 'Dois Córregos', '-48.3860575', '-22.3734081'),
(55, '2', 'Ezeiza', '-58.5041922', '-34.5727938'),
(56, '1', 'Ouro Branco', '-36.9326095', '-6.6760711'),
(57, '2', 'Rufino', '-58.4937996', '-34.5688333'),
(58, '1', 'Cícero Dantas', '-38.4429274', '-10.5732996'),
(59, '2', '28 de Noviembre', '-65.896638', '-47.7375833'),
(60, '1', 'Fonte Boa', '-66.1415263', '-2.4681009'),
(61, '1', 'Coari', '-64.7162415', '-4.8798602'),
(62, '1', 'Santa Cruz Cabrália', '-39.0300323', '-16.2768187'),
(63, '1', 'Rolante', '-50.534262', '-29.6216078'),
(64, '2', 'Villa Mercedes', '-58.5197163', '-34.5926613'),
(65, '4', 'Oruro', '-67.1060353', '-17.9646772'),
(66, '1', 'Itajuípe', '-39.465738', '-14.6737265'),
(67, '2', 'Deán Funes', '-64.2385396', '-31.399061'),
(68, '1', 'Jaguarão', '-53.4770359', '-32.3385963'),
(69, '1', 'Santo Antônio do Içá', '-69.097023', '-3.0443341'),
(70, '2', 'Del Campillo', '-58.4794982', '-34.5906948'),
(71, '1', 'Agudos', '-49.0817124', '-22.5698961'),
(72, '1', 'Bom Jesus da Lapa', '-43.4112394', '-13.2513786'),
(73, '1', 'São Sepé', '-53.5608275', '-30.1647807'),
(74, '1', 'Cacequi', '-54.8265622', '-29.8801552'),
(75, '1', 'Ribeirão das Neves', '-44.0853572', '-19.7619024'),
(76, '1', 'Mirador', '-52.7670021', '-23.2245912'),
(77, '1', 'Novo Hamburgo', '-51.1255697', '-29.6918991'),
(78, '1', 'Maragogipe', '-38.9211273', '-12.7772947'),
(79, '2', 'Mercedes', '-58.5096724', '-34.6037075'),
(80, '1', 'Rialma', '-49.5818466', '-15.3149264'),
(81, '1', 'Joaçaba', '-51.5054475', '-27.1743773'),
(82, '1', 'São Caetano do Sul', '-51.0985192', '-30.2196952'),
(83, '1', 'Cerquilho', '-47.7440315', '-23.1744477'),
(84, '2', 'Embalse', '-64.442428', '-32.232355'),
(85, '2', 'Zárate', '-58.6055652', '-34.7264519'),
(86, '1', 'Ibitinga', '-48.8323618', '-21.7567077'),
(87, '5', 'Coihaique', '-72.068265', '-45.5712254'),
(88, '6', 'Lascano', '-54.2101894', '-33.6740514'),
(89, '2', 'Villa Dolores', '-65.180261', '-31.946337'),
(90, '1', 'Esperança', '-35.8934136', '-6.980092'),
(91, '2', 'Concordia', '-58.5006278', '-34.6020021'),
(92, '1', 'Aimorés', '-41.0713439', '-19.4959312'),
(93, '1', 'Toledo', '-53.7365827', '-24.7289094'),
(94, '6', 'Rivera', '-55.5469032', '-30.9178625'),
(95, '1', 'Barra do Bugres', '-57.1882847', '-15.0705872'),
(96, '6', 'Delta del Tigre', '-56.3628409', '-34.7611766'),
(97, '1', 'Sinop', '-55.5081012', '-11.8480193'),
(98, '2', 'Cañuelas', '-58.6433296', '-34.5875578'),
(99, '4', 'Las Carreras', '-65.2103256', '-21.2105191'),
(100, '1', 'Arcos', '-45.5396954', '-20.2877726'),
(101, '1', 'Boituva', '-47.6790285', '-23.2860188'),
(102, '3', 'Tobatí', '-57.0844094', '-25.2630014'),
(103, '1', 'Francisco Morato', '-46.7452277', '-23.2797384'),
(104, '2', 'San Isidro de Lules', '-65.3379779', '-26.924287'),
(105, '1', 'São João del Rei', '-44.2039901', '-21.0800303'),
(106, '1', 'Porto Feliz', '-47.4882762', '-23.2248099'),
(107, '1', 'Juru', '-37.7662816', '-7.4652278'),
(108, '1', 'Guaíra', '-48.310855', '-20.3253713'),
(109, '5', 'La Ligua', '-71.2325958', '-32.4499018'),
(110, '1', 'Capitão Poço', '-47.058302', '-1.7437356'),
(111, '1', 'Itororó', '-40.0660682', '-15.118465'),
(112, '3', 'San Cosme y Damián', '-56.3320773', '-27.3201981'),
(113, '1', 'Igarapava', '-47.7563994', '-20.0421785'),
(114, '1', 'Alegre', '-41.4812771', '-20.6869406'),
(115, '1', 'Votuporanga', '-49.9648907', '-20.4207385'),
(116, '1', 'Cachoeirinha', '-47.8032284', '-6.0768719'),
(117, '2', 'Fernández', '-58.5867617', '-34.5434158'),
(118, '4', 'Buena Vista', '-63.6691522', '-17.4586651'),
(119, '2', 'Villa del Rosario', '-63.5362339', '-31.5534831'),
(120, '1', 'Vitória da Conquista', '-40.844989', '-14.8503277'),
(121, '2', 'Gualeguay', '-58.8423829', '-34.6961915'),
(122, '2', 'Río Segundo', '-58.6876178', '-34.588234'),
(123, '1', 'Belém', '-35.5000999', '-6.6906402'),
(124, '1', 'Campina Grande do Sul', '-49.0555691', '-25.304882'),
(125, '1', 'Jaru', '-62.4792921', '-10.4322235'),
(126, '1', 'Benevides', '-48.2592606', '-1.3524989'),
(127, '1', 'Contagem', '-44.1170051', '-19.9030544'),
(128, '1', 'Schroeder', '-49.0615086', '-26.3749827'),
(129, '5', 'Lo Prado', '-70.7233493', '-33.4442688'),
(130, '1', 'Niterói', '-43.0152252', '-22.8262707'),
(131, '1', 'Astorga', '-51.6639768', '-23.2400211'),
(132, '2', 'Comodoro Rivadavia', '-67.4686475', '-45.8405005'),
(133, '5', 'Paine', '-70.7375968', '-33.8125656'),
(134, '2', 'Avellaneda', '-57.5825246', '-37.9973752'),
(135, '1', 'Charqueadas', '-51.629387', '-29.9629768'),
(136, '1', 'Juiz de Fora', '-43.3309142', '-21.7699268'),
(137, '1', 'Panorama', '-51.8677296', '-21.3653841'),
(138, '3', 'Caacupé', '-57.1577041', '-25.3810275'),
(139, '1', 'Penha', '-48.6489134', '-26.8039789'),
(140, '1', 'Vazante', '-46.7478493', '-17.7050221'),
(141, '1', 'Lavras', '-45.0013747', '-21.2484875'),
(142, '2', 'Catriel', '-58.5247124', '-34.6893026'),
(143, '1', 'Vargem Grande Paulista', '-47.029458', '-23.6208526'),
(144, '2', 'Villa Paula de Sarmiento', '-68.7998021', '-32.8842032'),
(145, '1', 'Cruz das Almas', '-39.1016848', '-12.6735557'),
(146, '2', 'Ingeniero Guillermo N. Juárez', '-58.5769684', '-34.5939526'),
(147, '1', 'Teresópolis', '-42.9755528', '-22.4205202'),
(148, '1', 'Pedro Leopoldo', '-44.0404979', '-19.6189005'),
(149, '1', 'Tianguá', '-40.9926511', '-3.7300232'),
(150, '1', 'Gameleira', '-35.3871125', '-8.5853481'),
(151, '1', 'São Miguel do Iguaçu', '-54.3030016', '-25.3849055'),
(152, '5', 'Cañete', '-73.3919739', '-37.8058201'),
(153, '1', 'Três Corações', '-45.2515461', '-21.692578'),
(154, '1', 'Nova Odessa', '-47.3047061', '-22.7733'),
(155, '1', 'Pederneiras', '-48.7862736', '-22.3463487'),
(156, '2', 'Comallo', '-67.8126798', '-38.9786963'),
(157, '1', 'Itapecerica da Serra', '-46.8498038', '-23.7169139'),
(158, '2', 'Hernández', '-68.8502434', '-32.9589969'),
(159, '1', 'Igarapé Miri', '-50.0000408', '-0.1624837'),
(160, '1', 'Macau', '-36.4797126', '-5.1942574'),
(161, '2', 'San José de Jáchal', '-67.5305258', '-45.8802629'),
(162, '1', 'Itabirito', '-43.8030567', '-20.2530617'),
(163, '2', 'Yuto', '-65.2605303', '-24.2449065'),
(164, '1', 'Tanabi', '-49.6546435', '-20.6286479'),
(165, '1', 'Nossa Senhora do Socorro', '-37.1269791', '-10.8531643'),
(166, '2', 'Monte Caseros', '-68.7400523', '-32.9576242'),
(167, '2', 'La Banda', '-64.2128798', '-31.4564169'),
(168, '1', 'Porangaba', '-48.1199217', '-23.176636'),
(169, '3', 'San Miguel', '-57.0421483', '-26.5380045'),
(170, '1', 'Taubaté', '-45.5558631', '-23.0246201'),
(171, '1', 'Rio das Pedras', '-47.6063666', '-22.8481591'),
(172, '6', 'Nuevo Berlín', '-58.0470008', '-32.9809545'),
(173, '1', 'Piracuruca', '-41.6809724', '-3.971033'),
(174, '3', 'Bella Vista', '-55.5746294', '-27.0501654'),
(175, '1', 'Conceição do Coité', '-39.2791011', '-11.5576676'),
(176, '5', 'Iquique', '-70.1356692', '-20.2307033'),
(177, '1', 'Guaporé', '-51.8913473', '-28.8455312'),
(178, '2', 'Yerba Buena', '-65.1737343', '-24.2298687'),
(179, '2', 'Villa de Soto', '-65.004236', '-31.7387876'),
(180, '1', 'Padre Bernardo', '-48.2802925', '-15.158624'),
(181, '2', 'Laboulaye', '-64.2145666', '-31.4834373'),
(182, '1', 'Curitibanos', '-50.6378804', '-27.3226376'),
(183, '2', 'Campo Quijano', '-65.640294', '-24.912902'),
(184, '1', 'Rancharia', '-50.9706116', '-22.2592565'),
(185, '1', 'Taiobeiras', '-42.227378', '-15.8142935'),
(186, '5', 'Mulchén', '-72.2374343', '-37.7178812'),
(187, '1', 'Buriti Alegre', '-49.0009403', '-18.1111446'),
(188, '1', 'Lagoa Seca', '-35.8549426', '-7.1580805'),
(189, '2', 'Chacabuco', '-58.4973265', '-34.5151107'),
(190, '1', 'São Sebastião', '-45.4306592', '-23.7243543'),
(191, '2', 'San Fernando del Valle de Catamarca', '-65.780154', '-28.4627561'),
(192, '2', 'Villa General Belgrano', '-58.5484437', '-34.5869807'),
(193, '1', 'Araras', '-47.3853435', '-22.3595631'),
(194, '1', 'Prata', '-37.0614998', '-7.6963118'),
(195, '1', 'Sananduva', '-51.8148609', '-27.950568'),
(196, '1', 'Salgado', '-37.4894776', '-11.0646689'),
(197, '1', 'Montes Claros', '-43.8616129', '-16.7159055'),
(198, '1', 'Pedreira', '-46.8931368', '-22.7485717'),
(199, '1', 'Porteirinha', '-43.0280584', '-15.741151'),
(200, '1', 'Itapuranga', '-49.9417277', '-15.5544752'),
(201, '1', 'Caçapava', '-45.6964547', '-23.0939881'),
(202, '2', 'Pellegrini', '-58.694037', '-34.6809602'),
(203, '1', 'Sarandi', '-52.9164069', '-27.946449'),
(204, '6', 'Porvenir', '-57.968819', '-32.3927221'),
(205, '1', 'Belford Roxo', '-43.3996264', '-22.7645391'),
(206, '2', 'La Tigra', '-58.8489331', '-37.7912944'),
(207, '1', 'Garanhuns', '-36.4968966', '-8.8828551'),
(208, '1', 'Vacaria', '-50.9289246', '-28.3276327'),
(209, '1', 'Jaguaruana', '-37.7662816', '-4.8371532'),
(210, '1', 'Cristalina', '-47.5275422', '-16.7073638'),
(211, '6', 'Vergara', '-53.9378421', '-32.9481877'),
(212, '1', 'Glória do Goitá', '-35.2947008', '-7.9995755'),
(213, '1', 'Palmeira das Missões', '-53.3122927', '-27.9094431'),
(214, '1', 'Frederico Westphalen', '-53.3963199', '-27.3607338'),
(215, '2', 'Unquillo', '-64.182416', '-31.372506'),
(216, '5', 'El Tabo', '-71.6669341', '-33.4557162'),
(217, '2', 'Plottier', '-68.23127', '-38.956431'),
(218, '1', 'Carapicuíba', '-46.8411243', '-23.5239623'),
(219, '1', 'Adamantina', '-51.0741711', '-21.6824831'),
(220, '1', 'Iporá', '-51.2213044', '-16.3846284'),
(221, '2', 'Maipú', '-57.5709382', '-37.9779092'),
(222, '4', 'Punata', '-65.8412017', '-17.5467442'),
(223, '4', 'Cliza', '-65.9393064', '-17.5952979'),
(224, '1', 'Itarana', '-40.8980767', '-19.940272'),
(225, '2', 'Bonpland', '-58.611532', '-34.7319408'),
(226, '1', 'Rolândia', '-51.366412', '-23.3105968'),
(227, '1', 'Nilópolis', '-43.4056016', '-22.8590499'),
(228, '1', 'Fernandópolis', '-50.2475804', '-20.2810232'),
(229, '1', 'Portelândia', '-52.7455935', '-17.3474338'),
(230, '1', 'Nova Russas', '-40.5112755', '-4.7695926'),
(231, '1', 'Itacoatiara', '-58.5543821', '-3.3339824'),
(232, '1', 'Santo Antônio da Platina', '-50.0726882', '-23.2980974'),
(233, '1', 'Alfenas', '-45.9481612', '-21.4261129'),
(234, '1', 'Capela', '-37.0530033', '-10.5102117'),
(235, '2', 'Capioví', '-55.0199394', '-26.8214685'),
(236, '5', 'Taltal', '-69.766667', '-25.283333'),
(237, '1', 'Canutama', '-63.9586111', '-7.3175297'),
(238, '1', 'Ubatuba', '-45.0479872', '-23.4602881'),
(239, '2', 'Tres Isletas', '-60.4304186', '-26.3374785'),
(240, '1', 'Ribeira do Pombal', '-38.5761383', '-10.7824056'),
(241, '2', 'Alderetes', '-65.1435685', '-26.8193949'),
(242, '1', 'Congonhas', '-43.8613566', '-20.4993469'),
(243, '1', 'Socorro', '-46.5282973', '-22.5905906'),
(244, '4', 'Yacuíba', '-63.6775234', '-22.0227557'),
(245, '1', 'Mirandopólis', '-47.0897445', '-22.9304477'),
(246, '1', 'Pantano do Sul', '-48.62059', '-27.5703548'),
(247, '1', 'Horizonte', '-38.4639632', '-4.1132769'),
(248, '1', 'Poá', '-46.3408798', '-23.5198964'),
(249, '1', 'Rio Negro', '-49.7743404', '-26.095133'),
(250, '2', 'Victoria', '-58.7176959', '-34.5656691'),
(251, '1', 'Fortaleza', '-38.5349814', '-3.7600304'),
(252, '2', 'Viedma', '-58.6671801', '-34.5055818'),
(253, '5', 'Corral', '-73.4315987', '-39.8885744'),
(254, '1', 'Cunha', '-44.9561012', '-23.0743544'),
(255, '2', 'Chajarí', '-58.0135415', '-30.7456924'),
(256, '1', 'Viseu', '-46.3624686', '-1.4391409'),
(257, '1', 'Limoeiro do Norte', '-38.0850339', '-5.1443118'),
(258, '2', 'Pampa del Infierno', '-61.1763962', '-26.5044407'),
(259, '1', 'Piraju', '-49.3838782', '-23.1770971'),
(260, '4', 'Yotala', '-65.267799', '-19.156561'),
(261, '1', 'Itapicuru', '-38.2322028', '-11.2362892'),
(262, '2', 'Cipolletti', '-67.993234', '-38.951448'),
(263, '2', 'Campana', '-58.5035787', '-34.5937209'),
(264, '1', 'Mari', '-35.3246769', '-7.0655466'),
(265, '2', 'Tostado', '-68.1132357', '-38.9472836'),
(266, '1', 'Barreiros', '-35.2807624', '-8.8325814'),
(267, '1', 'Penedo', '-36.5536172', '-10.2735517'),
(268, '2', 'Laguna Paiva', '-65.3580411', '-43.2596246'),
(269, '1', 'Itiruçu', '-40.1657466', '-13.4743387'),
(270, '1', 'Palotina', '-53.7803147', '-24.2570411'),
(271, '4', 'Totora', '-65.1922148', '-17.7357805'),
(272, '1', 'Araçuaí', '-42.0633003', '-16.8488172'),
(273, '1', 'Marília', '-49.9456615', '-22.2169379'),
(274, '2', 'Esquel', '-71.301904', '-42.906336'),
(275, '1', 'Goianira', '-49.4262684', '-16.5030467'),
(276, '5', 'Los Andes', '-70.5972179', '-32.8337995'),
(277, '1', 'Piracanjuba', '-48.9605972', '-17.3697902'),
(278, '1', 'Ponta Grossa', '-50.1584514', '-25.0993621'),
(279, '5', 'Buin', '-70.7423218', '-33.7309374'),
(280, '2', 'Huinca Renancó', '-64.1673375', '-31.4540779'),
(281, '5', 'Panguipulli', '-72.3370089', '-39.6415998'),
(282, '1', 'Nepomuceno', '-45.2325476', '-21.2335652'),
(283, '2', 'Arroyo Seco', '-59.0746886', '-37.3130297'),
(284, '4', 'Colomi', '-65.8649827', '-17.3399775'),
(285, '1', 'Conceição do Araguaia', '-49.4466005', '-8.1774335'),
(286, '3', 'Itapé', '-56.6135167', '-25.8511498'),
(287, '1', 'Vargem Grande', '-43.8673222', '-3.7127631'),
(288, '2', 'Chavarría', '-58.6285183', '-34.7121944'),
(289, '2', 'Casilda', '-60.6923382', '-32.9285798'),
(290, '1', 'Pompéu', '-45.0056921', '-19.2236514'),
(291, '1', 'Florestópolis', '-51.3906526', '-22.8664464'),
(292, '2', 'Hualfín', '-58.6341359', '-34.7318914'),
(293, '1', 'Cianorte', '-52.6600232', '-23.701721'),
(294, '1', 'Pedro II', '-41.4537623', '-4.4338427'),
(295, '2', 'Chilecito', '-58.4798082', '-34.6312662'),
(296, '1', 'Breves', '-50.5135589', '-1.2936976'),
(297, '1', 'Teófilo Otoni', '-41.5091004', '-17.8599943'),
(298, '1', 'Santa Quitéria do Maranhão', '-42.941698', '-3.2826576'),
(299, '1', 'Matriz de Camaragibe', '-35.5876697', '-9.0972502'),
(300, '5', 'Vallenar', '-70.7571009', '-28.5757953'),
(301, '1', 'São José dos Campos', '-45.8861749', '-23.2251621'),
(302, '2', 'Aranguren', '-58.4754013', '-34.6261642'),
(303, '4', 'San Pedro', '-68.1346594', '-16.5030766'),
(304, '1', 'Cachoeira do Sul', '-52.893221', '-30.0336816'),
(305, '1', 'Paraíso das Águas', '-34.8277651', '-7.8815605'),
(306, '2', 'Dolavón', '-65.3586493', '-43.2654767'),
(307, '5', 'San Antonio', '-71.6055123', '-33.5922807'),
(308, '1', 'Macapá', '-51.0678473', '0.0208039'),
(309, '1', 'Penalva', '-45.2618568', '-3.2148486'),
(310, '1', 'São Raimundo Nonato', '-42.6920906', '-9.0104992'),
(311, '1', 'Visconde do Rio Branco', '-42.8376099', '-21.013792'),
(312, '1', 'Três Pontas', '-45.5113164', '-21.3699248'),
(313, '5', 'Villa Presidente Frei, Ñuñoa, Santiago, Chile', '-70.582502', '-33.459409'),
(314, '2', 'Corralito', '-60.6722815', '-33.0061376'),
(315, '5', 'Calbuco', '-72.6087019', '-41.330385'),
(316, '6', 'Progreso', '-56.2230875', '-34.6636109'),
(317, '4', 'Camatindi', '-63.3933089', '-20.9969938'),
(318, '2', 'Guatimozín', '-65.2844271', '-24.1955744'),
(319, '1', 'Tapera', '-52.8711249', '-28.6229959'),
(320, '1', 'Fernando de Noronha (Distrito Estadual)', '-34.8843973', '-8.0664795'),
(321, '2', 'Granadero Baigorria', '-58.8651373', '-34.6317414'),
(322, '2', 'Esquina', '-58.5238406', '-34.6161437'),
(323, '1', 'Arinos', '-46.0563212', '-15.6688416'),
(324, '2', 'General Alvear', '-58.4389753', '-34.8411832'),
(325, '2', 'San Antonio Oeste', '-67.9800178', '-38.9156735'),
(326, '1', 'São Marcos', '-51.0749483', '-28.9481925'),
(327, '1', 'Arcoverde', '-37.0585205', '-8.4176445'),
(328, '1', 'Aquiraz', '-38.4429274', '-3.9997372'),
(329, '1', 'Paratinga', '-43.0971625', '-12.5896471'),
(330, '4', 'Concepción', '-62.0399534', '-16.131343'),
(331, '1', 'Veranópolis', '-51.5507365', '-28.9427186'),
(332, '1', 'Barra do Garças', '-52.2618826', '-15.8916202'),
(333, '1', 'Granja', '-41.0394028', '-3.2575968'),
(334, '1', 'Jeremoabo', '-38.5690418', '-10.0036656'),
(335, '2', 'La Rioja', '-60.6961061', '-32.9377962'),
(336, '1', 'Ibaiti', '-50.1924435', '-23.8401119'),
(337, '1', 'Extremoz', '-35.2697802', '-5.6861147'),
(338, '2', 'La Cocha', '-65.0008956', '-31.7306526'),
(339, '1', 'Barrinha', '-48.1002024', '-21.2397333'),
(340, '2', 'Macachín', '-64.2726889', '-31.3203573'),
(341, '1', 'Itaúna', '-44.5805309', '-20.0822785'),
(342, '2', 'Curuzú Cuatiá', '-58.5303202', '-34.6182974'),
(343, '1', 'Paiçandu', '-52.0423373', '-23.4554707'),
(344, '1', 'Mata de São João', '-38.3001614', '-12.5327517'),
(345, '4', 'Quime', '-67.2162619', '-16.9794093'),
(346, '4', 'Lintaca', '-65.33333', '-20.76667'),
(347, '1', 'São João dos Inhamuns', '-40.28333', '-6'),
(348, '1', 'Caieiras', '-46.7575221', '-23.3711864'),
(349, '2', 'Villa Cañás', '-61.6048678', '-34.0028385'),
(350, '2', 'Alto Río Senguer', '-65.0612637', '-42.7592642'),
(351, '5', 'Futaleufú', '-71.8667', '-43.1833'),
(352, '2', 'Gualeguaychú', '-58.5069115', '-34.6093426'),
(353, '2', 'Coronel Suárez', '-60.3090948', '-36.9072882'),
(354, '1', 'Campinas', '-47.0625812', '-22.9098833'),
(355, '4', 'Camiri', '-63.5216019', '-20.0249637'),
(356, '2', 'San Isidro', '-58.3298681', '-34.6821989'),
(357, '5', 'Villa Alemana', '-71.3906234', '-33.0516935'),
(358, '2', 'Dolores', '-57.6855979', '-36.2958562'),
(359, '1', 'Louveira', '-46.9513691', '-23.0931156'),
(360, '1', 'Santa Maria da Vitória', '-44.2097085', '-13.4017106'),
(361, '5', 'Santiago', '-70.6692655', '-33.4488897'),
(362, '6', 'Belén', '-57.7771566', '-30.7875929'),
(363, '5', 'Coronel', '-73.1404838', '-37.0340769'),
(364, '5', 'Puerto Cisnes', '-72.6822812', '-44.7299187'),
(365, '1', 'Passos', '-46.6096926', '-20.7430332'),
(366, '1', 'Matozinhos', '-44.0871994', '-19.5547969'),
(367, '2', 'Santiago del Estero', '-65.2546997', '-26.8135107'),
(368, '2', 'El Soberbio', '-54.198107', '-27.284815'),
(369, '5', 'Chile Chico', '-71.7222795', '-46.5409005'),
(370, '1', 'Soure', '-48.6388879', '-0.5083679'),
(371, '1', 'Várzea Grande', '-42.2165112', '-6.551202'),
(372, '6', 'San Javier', '-58.1295074', '-32.6626805'),
(373, '2', 'Punta Alta', '-62.080615', '-38.8808579'),
(374, '1', 'Rio Claro', '-47.5717516', '-22.4101426'),
(375, '1', 'Pitangui', '-44.890204', '-19.6824436'),
(376, '4', 'Mojocoya', '-64.621948', '-18.76207'),
(377, '1', 'Santarém', '-38.4795129', '-6.4835644'),
(378, '1', 'Francisco Beltrão', '-53.05199', '-26.0779448'),
(379, '1', 'São Sebastião do Caí', '-51.3738524', '-29.5904737'),
(380, '2', 'Rivadavia', '-58.410092', '-34.610303'),
(381, '1', 'Ituberá', '-39.1478933', '-13.734009'),
(382, '4', 'Arani', '-65.7698663', '-17.5706623'),
(383, '1', 'Serrana', '-47.625836', '-21.2105166'),
(384, '2', 'Santa Fe de la Vera Cruz', '-60.7152064', '-31.6146073'),
(385, '5', 'Carahue', '-73.1678812', '-38.7088593'),
(386, '5', 'Limache', '-71.2595888', '-33.0095283'),
(387, '3', 'Villa Hayes', '-57.527801', '-25.0913166'),
(388, '1', 'Pedregulho', '-47.4810384', '-20.2562227'),
(389, '1', 'Monte Azul Paulista', '-48.6790007', '-20.8890637'),
(390, '6', 'Sauce', '-56.0668126', '-34.6488719'),
(391, '1', 'Ariquemes', '-63.0384498', '-9.9227086'),
(392, '1', 'Cruz Alta', '-53.605355', '-28.6454883'),
(393, '1', 'Carianos', '-48.5269452', '-27.6662277'),
(394, '1', 'Aquidauana', '-55.7872944', '-20.4670046'),
(395, '1', 'Tucano', '-38.7897587', '-10.9588216'),
(396, '1', 'Campo Belo', '-45.2721363', '-20.8938356'),
(397, '1', 'Aragarças', '-52.2516426', '-15.8958471'),
(398, '2', 'Florencio Varela', '-58.5616502', '-34.6698749'),
(399, '1', 'Leme', '-47.3951378', '-22.2090755'),
(400, '1', 'Guaíba', '-51.3238273', '-30.1090924'),
(401, '2', 'San Luis del Palmar', '-58.555985', '-27.508507'),
(402, '3', 'San Pedro del Paraná', '-56.2063312', '-26.8325124'),
(403, '1', 'Morro Agudo', '-48.1597946', '-20.6974477'),
(404, '1', 'Apucarana', '-51.4650904', '-23.5586314'),
(405, '1', 'Jardim do Seridó', '-36.7731681', '-6.5843262'),
(406, '4', 'Paurito', '-62.941187', '-17.8832695'),
(407, '1', 'Encruzilhada do Sul', '-52.5257016', '-30.5454936'),
(408, '1', 'Barra Bonita', '-48.5637543', '-22.472994'),
(409, '3', 'Altos', '-57.2536314', '-25.2631384'),
(410, '2', 'Morrison', '-64.2966774', '-31.1394114'),
(411, '1', 'Quixeramobim', '-39.4035876', '-5.2915408'),
(412, '1', 'Itapemirim', '-40.9990597', '-20.9829904'),
(413, '1', 'Cachoeiro de Itapemirim', '-41.1162273', '-20.8478935'),
(414, '2', 'Villa Carlos Paz', '-64.485902', '-31.413822'),
(415, '1', 'Valença do Piauí', '-41.8004409', '-6.3783847'),
(416, '1', 'Pesqueira', '-36.7388486', '-8.3627277'),
(417, '2', 'Bernardo de Irigoyen', '-58.5854528', '-34.493672'),
(418, '1', 'Solânea', '-35.6860723', '-6.7378881'),
(419, '1', 'Jarinu', '-46.7285093', '-23.1036632'),
(420, '1', 'São Roque', '-47.1322342', '-23.5257248'),
(421, '1', 'Mauá', '-46.4617086', '-23.668163'),
(422, '1', 'Bocaiúva', '-43.8203315', '-17.1113356'),
(423, '2', 'San Carlos de Bariloche', '-71.437354', '-41.172184'),
(424, '1', 'Sobral', '-40.3496894', '-3.701499'),
(425, '1', 'Santa Cecília', '-50.4178973', '-26.9655922'),
(426, '2', 'Naschel', '-65.3749466', '-32.9150009'),
(427, '1', 'Valparaíso', '-50.863384', '-21.224741'),
(428, '2', 'La Quiaca', '-58.7186017', '-34.5903621'),
(429, '1', 'São Luís do Quitunde', '-35.6095474', '-9.3002357'),
(430, '1', 'Itaí', '-49.0924714', '-23.4217742'),
(431, '1', 'Ribeirão Preto', '-47.8103238', '-21.1704008'),
(432, '5', 'Rauco', '-71.3156315', '-34.9253441'),
(433, '1', 'Bertioga', '-46.0851681', '-23.8182859'),
(434, '1', 'Ipirá', '-39.734338', '-12.1880654'),
(435, '5', 'Santa Cruz', '-71.3592116', '-34.6324213'),
(436, '6', 'Cerro Colorado', '-55.5441311', '-33.8603461'),
(437, '1', 'Nova Petrópolis', '-51.08671', '-29.362503'),
(438, '6', 'Quebracho', '-57.9020535', '-31.9326576'),
(439, '1', 'Rio de Janeiro', '-43.2209394', '-22.9841765'),
(440, '1', 'Brumadinho', '-44.2010909', '-20.1514708'),
(441, '1', 'Carazinho', '-52.793776', '-28.2963334'),
(442, '1', 'São Joaquim', '-49.9375873', '-28.292455'),
(443, '1', 'Estância', '-37.43854', '-11.268661'),
(444, '2', 'Embarcación', '-71.2485941', '-41.1254857'),
(445, '1', 'Apodi', '-37.8512309', '-5.6455578'),
(446, '1', 'Aracruz', '-40.2768213', '-19.8205316'),
(447, '2', 'Capayán', '-65.7905325', '-28.4481029'),
(448, '1', 'Brejo Santo', '-38.9842531', '-7.4892361'),
(449, '1', 'Espera Feliz', '-41.9091561', '-20.652053'),
(450, '1', 'Guanambi', '-42.7734292', '-14.2252203'),
(451, '1', 'Timbó', '-49.26952', '-26.8251371'),
(452, '1', 'Santana do Livramento', '-55.5392304', '-30.8772854'),
(453, '1', 'Guajará Mirim', '-65.3301049', '-10.789321'),
(454, '1', 'Itaperuna', '-41.8799408', '-21.1877747'),
(455, '1', 'Cajueiro', '-36.1545404', '-9.367769'),
(456, '1', 'Santa Rita do Passa Quatro', '-47.4696376', '-21.7096172'),
(457, '1', 'Euclides da Cunha', '-38.9066439', '-10.5219124'),
(458, '1', 'Arraial do Cabo', '-42.0279869', '-22.9657374'),
(459, '1', 'Tapes', '-51.4052742', '-30.6732959'),
(460, '2', 'Villa Nueva', '-64.1847851', '-31.4505323'),
(461, '1', 'Posse', '-46.4393054', '-14.226324'),
(462, '1', 'Governador Valadares', '-41.9559233', '-18.8549317'),
(463, '2', 'Quilmes', '-58.3613645', '-34.7682125'),
(464, '2', 'Gálvez', '-60.6596502', '-32.9660173'),
(465, '3', 'Naranjal', '-55.1900227', '-25.9718022'),
(466, '2', 'Villa Constitución', '-58.4058228', '-34.6269535'),
(467, '2', 'La Falda', '-62.2841378', '-38.6816248'),
(468, '1', 'Bagé', '-54.1038619', '-31.3317595'),
(469, '1', 'São Lourenço da Mata', '-35.0221895', '-8.0075658'),
(470, '1', 'Colatina', '-40.6258001', '-19.5365508'),
(471, '2', 'Villaguay', '-68.1042424', '-38.9467974'),
(472, '1', 'Oeiras', '-42.1572702', '-7.0386232'),
(473, '1', 'Ipojuca', '-35.0828588', '-8.4627496'),
(474, '1', 'Corinto', '-44.6254642', '-18.3591857'),
(475, '6', 'Soriano', '-58.216956', '-33.5295223'),
(476, '1', 'Arroio Grande', '-53.0866941', '-32.2331548'),
(477, '2', 'Rosario', '-58.6661711', '-34.5023286'),
(478, '2', 'Almafuerte', '-58.5577501', '-34.6795558'),
(479, '1', 'Brotas', '-48.1255698', '-22.279958'),
(480, '2', 'Corrientes', '-60.6499935', '-32.9760359'),
(481, '1', 'Porciúncula', '-42.0979633', '-20.9868314'),
(482, '1', 'Canguaretama', '-35.1301043', '-6.3810573'),
(483, '5', 'Talagante', '-70.9273937', '-33.6637468'),
(484, '1', 'Bela Vista', '-56.4719928', '-21.9111483'),
(485, '4', 'Trinidad', '-64.9000247', '-14.8258317'),
(486, '2', 'Plaza Huincul', '-68.8493333', '-32.9677252'),
(487, '1', 'Panambi', '-53.5009992', '-28.2588438'),
(488, '1', 'Ipu', '-40.7092475', '-4.3220187'),
(489, '1', 'Belo Jardim', '-36.4235973', '-8.3357786'),
(490, '2', 'Anguil', '-64.0106073', '-36.5337379'),
(491, '1', 'Várzea Alegre', '-39.2791011', '-6.8272076'),
(492, '1', 'Águas de Lindóia', '-46.6347377', '-22.4776906'),
(493, '2', 'Colonia Elisa', '-49.9812625', '-20.4170226'),
(494, '2', 'Puerto Esperanza', '-60.8950764', '-31.4573007'),
(495, '2', 'Capitán Sarmiento', '-58.4052178', '-34.6066162'),
(496, '1', 'São José do Egito', '-37.2746574', '-7.4686612'),
(497, '1', 'Guararapes', '-50.6378257', '-21.2581695'),
(498, '1', 'Arapongas', '-51.4264048', '-23.4157731'),
(499, '1', 'Paulista', '-34.8207597', '-7.9181902'),
(500, '2', 'Morteros', '-62.0729285', '-31.4311903'),
(501, '1', 'São João dos Patos', '-43.7039903', '-6.4937893'),
(502, '1', 'Queimados', '-43.5522256', '-22.7106685'),
(503, '1', 'Itapecerica', '-45.1120424', '-20.4703278'),
(504, '1', 'Aparecida do Taboado', '-51.0966063', '-20.0877391'),
(505, '1', 'Ilhabela', '-45.3664809', '-23.8158392'),
(506, '2', 'La Paz', '-58.601544', '-34.6906944'),
(507, '2', 'Cerro Azul', '-55.497642', '-27.633736'),
(508, '1', 'Imperatriz', '-47.4790966', '-5.5205551'),
(509, '1', 'Neópolis', '-36.6741487', '-10.3503897'),
(510, '1', 'Araxá', '-46.9442412', '-19.5906483'),
(511, '1', 'São Pedro da Aldeia', '-42.1343805', '-22.7575561'),
(512, '1', 'Araripina', '-40.4976324', '-7.57656'),
(513, '1', 'Nossa Senhora da Glória', '-37.4212807', '-10.2156554'),
(514, '2', 'Libertad', '-58.5074331', '-34.5332237'),
(515, '2', 'Tinogasta', '-58.5213843', '-34.6175845'),
(516, '1', 'Guaratuba', '-48.5737662', '-25.8804742'),
(517, '1', 'Diamantina', '-43.6035055', '-18.2417866'),
(518, '1', 'Morada Nova', '-38.3587174', '-5.0662102'),
(519, '3', 'Guayaybi', '-56.4076059', '-24.5253253'),
(520, '1', 'Portão', '-51.2422395', '-29.7127463'),
(521, '1', 'Vespasiano', '-43.9341408', '-19.7333431'),
(522, '1', 'Carandaí', '-43.8028073', '-20.9508706'),
(523, '3', 'Coronel Martínez', '-56.6163213', '-25.7605107'),
(524, '1', 'Guarabira', '-35.4562795', '-6.8739016'),
(525, '1', 'Itupeva', '-47.048576', '-23.1330259'),
(526, '2', 'General Pico', '-58.3820197', '-34.7382955'),
(527, '1', 'Senador Pompeu', '-39.3708321', '-5.5850343'),
(528, '1', 'Vassouras', '-43.599128', '-22.4028163'),
(529, '2', 'Venado Tuerto', '-61.961036', '-33.745727'),
(530, '1', 'Jaú', '-48.5755491', '-22.30275'),
(531, '1', 'Braço do Norte', '-49.1676177', '-28.2750175'),
(532, '2', 'Ordóñez', '-64.3600342', '-33.1416441'),
(533, '1', 'Conselheiro Lafaiete', '-43.7850227', '-20.6639305'),
(534, '1', 'Antonina', '-48.7162067', '-25.4328356'),
(535, '2', 'Paso de Indios', '-65.0598718', '-42.7556675'),
(536, '1', 'Itacarambi', '-44.1340439', '-15.0738149'),
(537, '1', 'Ibiúna', '-47.1752123', '-23.8107528'),
(538, '5', 'Linares', '-71.5996137', '-35.846407'),
(539, '5', 'Cabrero', '-72.4', '-37.0332999'),
(540, '1', 'Pitangueiras', '-48.2176007', '-21.0106742'),
(541, '1', 'Campina Grande', '-35.8808337', '-7.2290752'),
(542, '1', 'Quatro Barras', '-49.0801588', '-25.3631459'),
(543, '1', 'Mata Grande', '-37.8188445', '-9.1462164'),
(544, '1', 'Imbituva', '-50.6378804', '-25.2641605'),
(545, '1', 'Tubarão', '-49.0147244', '-28.471976'),
(546, '1', 'Mutum', '-41.4812771', '-19.9125279'),
(547, '1', 'Aparecida', '-45.2302005', '-22.8456877'),
(548, '4', 'Pocpo', '-67.0464591', '-18.7942434'),
(549, '1', 'Benjamin Constant', '-69.9550338', '-4.5204349'),
(550, '1', 'Lauro de Freitas', '-38.3271112', '-12.8528438'),
(551, '1', 'Pinhais', '-49.1347813', '-25.4021046'),
(552, '1', 'Tucumã', '-51.4309582', '-6.8604554'),
(553, '4', 'Charagua', '-63.1973233', '-19.7809492'),
(554, '1', 'Nazaré', '-47.7834888', '-6.3207152'),
(555, '1', 'Ibirataia', '-39.6724573', '-13.9468358'),
(556, '1', 'Embu', '-46.8521864', '-23.6515085'),
(557, '1', 'Piraí', '-43.9055155', '-22.602558'),
(558, '1', 'Ponte Nova', '-42.8982244', '-20.4115862'),
(559, '2', 'Cerrillos', '-60.6916164', '-32.972878'),
(560, '1', 'Palhoça', '-48.653927', '-27.633137'),
(561, '1', 'Unaí', '-46.900245', '-16.361238'),
(562, '1', 'Itabaiana', '-37.4329352', '-10.6872332'),
(563, '1', 'Cametá', '-49.4984804', '-2.2414892');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id_city`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('libreria', 1, 'Libraria BD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"corrales_fernando\",\"table\":\"usuarios\"},{\"db\":\"corrales_fernando\",\"table\":\"perfiles\"},{\"db\":\"locations\",\"table\":\"countries\"},{\"db\":\"locations\",\"table\":\"locations\"},{\"db\":\"libreria\",\"table\":\"libros\"},{\"db\":\"libreria\",\"table\":\"categorias_libros\"},{\"db\":\"libreria\",\"table\":\"autores\"},{\"db\":\"libreria\",\"table\":\"editoriales\"},{\"db\":\"libreria\",\"table\":\"categorias_empleados\"},{\"db\":\"libreria\",\"table\":\"ventas\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Volcado de datos para la tabla `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('corrales_fernando', 'usuarios', 'id_perfil', 'corrales_fernando', 'perfiles', 'id_perfil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Volcado de datos para la tabla `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('libreria', 'autores', 1, 93, 39),
('libreria', 'categorias_empleados', 1, 309, 447),
('libreria', 'categorias_libros', 1, 573, 23),
('libreria', 'detalle_ventas', 1, 698, 108),
('libreria', 'editoriales', 1, 356, 296),
('libreria', 'empleados', 1, 59, 364),
('libreria', 'formas_pagos', 1, 692, 359),
('libreria', 'libros', 1, 344, 87),
('libreria', 'localidad', 1, 145, 232),
('libreria', 'paises', 1, 564, 440),
('libreria', 'ventas', 1, 702, 227);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('corrales_fernando', 'usuarios', 'nombre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-07-19 17:21:57', '{\"lang\":\"es\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
