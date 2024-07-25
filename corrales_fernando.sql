-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-07-2024 a las 22:04:15
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
(1, 'Fernando', 'Corrales', 'fernando', 'micorreo@gmail.com', '$2y$10$P9b5.oSo56CjgXnKOtluO.DMjDeo8TlByrvSeWKt/0bstdmlHFQsm', 2, 'SI'),
(2, 'Kanou2', 'Reload', 'admin', 'admin@admin.com', '$2y$10$ZzpHz1olivCBz/XKFUSc2uMH3lMqczBHHT/pZ5vhu5WOK8ZYivWf6', 1, 'NO'),
(7, 'Usuario', 'Nuevo', 'NoSe', 'usuario@usuario.com', '$2y$10$BU7zmzGoRL2QX.YcU/9rceL4grseoUI/fSoRF1wJVL6z7/CdoLiw6', 2, 'NO'),
(9, 'Nuevo7', 'Usuario', 'NoSe2', 'nuevo@nuevo.com', '$2y$10$e4fQVZtgcjvo6enjTpMxveugZvlLCS3ZekD7Gh9FCtUSUhYOEJawm', 2, 'NO'),
(10, 'hola2', 'chau', 'hola', 'hola@hola.com', '$2y$10$I6psBoSWFbce2H503XrGu.jJ.q6A5ADFlcp1eHz4HSmXCuvP9Hnwe', 2, 'NO'),
(11, 'Codeium', 'Inteligencia Artificial', 'Codeium', 'ai@gmail.com', '$2y$10$3JKnwtpi9LIKaN5qUz8dDe4e9PA7FOYozj3YmADxaHyDE.eJwbD6a', 2, 'NO'),
(13, 'Sebastian', 'Barrios', 'Sebas', 'seba@gmail.com', '$2y$10$OEq7oyibsNlyN1nGTRDqgeDTjy4cVicLzKRmTcswAyXnPdv7lekJC', 2, 'NO'),
(14, 'Nuevo', 'Ultimo', 'Last', 'ultimo@ultimo.com', '$2y$10$3BEr35A8qBAUo9ia1l61VO4S22izkBmFtEkKyIDc4mQaMWDyac..i', 2, 'NO'),
(15, 'Nuevo10', 'Messi', 'Messi', 'messi@messi.com', '$2y$10$OEYwHyGRiwxgETLe1QgYQeKKAAj0msSiDqFvbpAbzW6j/reGvbgHW', 2, 'NO'),
(16, 'Nuevo9', 'Martinez', 'Toro', 'toro@toro.com', '$2y$10$MrM6/UocvYIeWyODo8v14OAppi78WsXm8bflW6ZMPM746pLRh3PVy', 2, 'NO');

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
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
