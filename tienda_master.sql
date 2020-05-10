-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2020 a las 15:21:51
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Manga corta'),
(2, 'Manga larga'),
(3, 'Tirantes'),
(4, 'Sudaderas'),
(5, 'Manga media');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas_pedidos`
--

CREATE TABLE `lineas_pedidos` (
  `id` int(255) NOT NULL,
  `pedido_id` int(255) NOT NULL,
  `producto_id` int(255) NOT NULL,
  `unidades` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lineas_pedidos`
--

INSERT INTO `lineas_pedidos` (`id`, `pedido_id`, `producto_id`, `unidades`) VALUES
(1, 5, 4, 3),
(2, 5, 2, 3),
(3, 6, 4, 3),
(4, 6, 2, 3),
(5, 7, 4, 3),
(6, 7, 2, 4),
(7, 8, 4, 3),
(8, 8, 2, 4),
(9, 9, 4, 3),
(10, 9, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(255) NOT NULL,
  `usuario_id` int(255) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `localidad` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `coste` float(200,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuario_id`, `provincia`, `localidad`, `direccion`, `coste`, `estado`, `fecha`, `hora`) VALUES
(1, 9, 'ascsc', 'ascasc', 'ascasc', 1071.00, 'confirmed', '2020-05-01', '23:35:28'),
(2, 9, 'qwe', 'qwe', 'qwe', 1071.00, 'confirmed', '2020-05-02', '12:27:04'),
(3, 9, 'qwe', 'qwe', 'qwe', 1071.00, 'confirmed', '2020-05-02', '12:28:08'),
(4, 9, 'Aquitaine', 'Anglet', '55 rue de Mirambeau', 1071.00, 'confirmed', '2020-05-02', '12:40:56'),
(5, 9, 'Aquitaine', 'Anglet', '55 rue de Mirambeau', 1071.00, 'confirmed', '2020-05-02', '12:43:04'),
(6, 9, 'prov', 'lov', 'wer', 1071.00, 'confirmed', '2020-05-02', '13:19:33'),
(7, 9, 'Valencia', 'Alicante', '55 rue de Mirambeau', 1194.00, 'confirmed', '2020-05-02', '13:29:43'),
(8, 9, 'qw', 'qwe', 'qwe', 1194.00, 'ready', '2020-05-02', '14:02:57'),
(9, 10, 'Aquitaine', 'Bayonne', '55 rue de Mirambeau', 1071.00, 'sended', '2020-05-02', '17:56:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(255) NOT NULL,
  `categoria_id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` float(100,2) NOT NULL,
  `stock` int(255) NOT NULL,
  `oferta` varchar(2) DEFAULT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `nombre`, `descripcion`, `precio`, `stock`, `oferta`, `fecha`, `imagen`) VALUES
(2, 5, 'camisa', 'camisa', 123.00, 23, NULL, '2020-04-30', NULL),
(4, 4, 'Camisa negra edit', 'Tengo la camisa negra edit', 234.00, 30, NULL, '2020-04-30', 't-shirtW.jpg'),
(5, 5, 'Camisa manga media 1', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 20.00, 25, NULL, '2020-05-10', 'camiseta.png'),
(6, 5, 'Manga media 2', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 11.00, 35, NULL, '2020-05-10', 'camiseta.jpg'),
(7, 5, 'Manga media 3', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 5.00, 233, NULL, '2020-05-10', 'camiseta.png'),
(8, 5, 'Manga media 4', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 12.00, 34, NULL, '2020-05-10', 'camiseta.jpg'),
(9, 4, 'Sudadera 1', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 20.00, 12, NULL, '2020-05-10', 'camiseta.png'),
(10, 4, 'Sudadera 2', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 45.00, 23, NULL, '2020-05-10', 'camiseta.jpg'),
(11, 4, 'Sudadera 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 9.00, 12, NULL, '2020-05-10', 'camiseta.png'),
(12, 3, 'Tirantes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 8.00, 12, NULL, '2020-05-10', 'camiseta.png'),
(13, 1, 'Manga corta 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 6.00, 23, NULL, '2020-05-10', 'camiseta.png'),
(14, 1, 'Manga corta 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 7.00, 56, NULL, '2020-05-10', 'camiseta.jpg'),
(15, 1, 'Manga corta 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 10.00, 12, NULL, '2020-05-10', 'camiseta.png'),
(16, 1, 'Manga corta 4', '  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus mauris vitae erat faucibus, a imperdiet nisi volutpat. Pellentesque rutrum finibus iaculis. Mauris magna turpis, sollicitudin ac elit in, dignissim aliquet tellus. Nulla at ante tempus, pulvinar diam eu, faucibus nulla. Aliquam at posuere elit. Ut tincidunt accumsan tellus pharetra imperdiet. Nulla mattis a nulla et accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 5.00, 67, NULL, '2020-05-10', 'camiseta.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `rol`, `imagen`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '1234567890', 'admin', NULL),
(2, 'qwe', 'fgfd', 'asaxs@gmail.com', '$2y$04$xu8D0v80h5QTGogkzGPzSucNJs2O.e/WNZot/iTqFZprG9Ct1blOq', 'user', NULL),
(3, 'qwe', 'ddd', 'asaxs@gmail', '$2y$04$kEPMDby799be1SivwNHUB.MT8hufhcaU6OuOxOohGCudhseB5dxD.', 'user', NULL),
(6, 'gthy', 'pñolki', 'qwe@gmail.com', '$2y$04$RGQgf8RQHgFk/RxEDHMAZeUqxEXYWokjPSg9NhrrolEnhXuOr0m.S', 'user', NULL),
(7, 'eee', 'aaaaa', 'aa@gmail.com', '$2y$04$fyFrRFE7ZXY4QXuqzVDAyOYyCwvWztng7j82iuizO7s3Agc4Pmn86', 'user', NULL),
(8, 'qqq', 'www', 'ww@gmil.com', '$2y$04$IvmwSvgFydw78trgNFibH.8oGKwdrICDJsgjUd9iq1qPX2HWazx9K', 'user', NULL),
(9, 'Yassin', 'Vazquez', 'yassinovp@gmail.com', '$2y$04$PS232jbSYsTJNfHu0oBBtuHS6kDAN.0oQuDy7IlUapeXSHNKF/pY6', 'admin', NULL),
(10, 'Juan', 'Perez', 'juan@perez.com', '$2y$04$p64E1s3la1Aonn9Tgy.p..oVJXuzg23zngfRBoOO2M7QH9hNZJoSO', 'user', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_linea_pedido` (`pedido_id`),
  ADD KEY `fk_linea_producto` (`producto_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedido_usuario` (`usuario_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_producto_categoria` (`categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_mail` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lineas_pedidos`
--
ALTER TABLE `lineas_pedidos`
  ADD CONSTRAINT `fk_linea_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `fk_linea_producto` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
