-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2024 a las 19:54:26
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
-- Base de datos: `restapitest123`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_search_pokemon_by_id` (IN `pokeId` INT)   BEGIN
    SELECT id, name, location, type, description,image, created_at
    FROM pokemon
    where id = pokeId;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `location`, `type`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Aquixal', 'A Coruña', 'Agua', 'Aquixal es un Pokémon tipo Agua que habita en las costas rocosas de la región...', 'static/images/aquixal.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(2, 'Vinhalga', 'Pontevedra', 'Planta/Agua', 'Vinhalga es un Pokémon que combina características de las plantas de vid con las algas marinas...', 'static/images/vinhalga.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(3, 'Muraluce', 'Lugo', 'Roca/Planta', 'Muraluce es un Pokémon que encarna la resistencia y la historia antigua de Lugo...', 'static/images/muraluce.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(4, 'Termalix', 'Ourense', 'Fuego/Agua', 'Termalix es un Pokémon que vive en las aguas termales de Ourense...', 'static/images/termalix.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(5, 'Sidralus', 'Asturias', 'Planta', 'Sidralus es un Pokémon que personifica el espíritu de Asturias...', 'static/images/sidralus.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(6, 'Cantabrisea', 'Cantabria', 'Agua', 'Cantabrisea es un Pokémon que simboliza la imponente presencia del Mar Cantábrico...', 'static/images/cantabrisea.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(7, 'Guggenferr', 'Vizcaya', 'Acero', 'Guggenferr es un Pokémon que simboliza la fusión de arte y tecnología...', 'static/images/guggenferr.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(8, 'Flyschdra', 'Guipúzcoa', 'Agua', 'Flyschdra es un Pokémon que simboliza la majestuosa costa de Guipúzcoa...', 'static/images/flyschdra.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(9, 'Gasteizor', 'Álava', 'Fantasma/Roca', 'Gasteizor es un Pokémon que encarna la historia medieval y las leyendas de Álava...', 'static/images/gasteizor.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(10, 'Ferminox', 'Navarra', 'Normal', 'Ferminox es un Pokémon con la apariencia de un toro majestuoso y enérgico...', 'static/images/ferminox.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(11, 'Dualiwine', 'La Rioja', 'Planta', 'Dualiwine es un Pokémon que evoca los viñedos ondulantes de La Rioja...', 'static/images/dualiwine.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(12, 'Celtispirit', 'Soria', 'Fantasma/Planta', 'Celtispirit es un Pokémon que encarna los misterios de los antiguos bosques...', 'static/images/celtispirit.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(13, 'Pireneox', 'Huesca', 'Hielo', 'Pireneox es un Pokémon que personifica la magnificencia de los Pirineos de Huesca...', 'static/images/pireneox.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(14, 'Ebrionwave', 'Zaragoza', 'Agua/Volador', 'Ebrionwave es un Pokémon que captura la esencia del río Ebro...', 'static/images/ebrionwave.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(15, 'Mudéjarmon', 'Teruel', 'Roca/Fantasma', 'Mudéjarmon es un Pokémon que simboliza la arquitectura mudéjar de Teruel...', 'static/images/mudejarmon.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(16, 'Románix', 'Lérida', 'Roca/Hielo', 'Románix es un Pokémon que encapsula la majestuosidad de los paisajes de montaña de Lérida...', 'static/images/romanix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(17, 'Gladiaton', 'Tarragona', 'Roca', 'Gladiaton es un Pokémon que personifica la valentía y el espíritu de los antiguos gladiadores romanos...', 'static/images/gladiaton.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(18, 'Gaudix', 'Barcelona', 'Roca/Psíquico', 'Gaudix es un Pokémon que refleja la singularidad y la creatividad de la arquitectura modernista...', 'static/images/gaudix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(19, 'Murallix', 'Gerona', 'Roca/Fantasma', 'Murallix es un Pokémon que personifica las antiguas murallas y el legado histórico de Gerona...', 'static/images/murallix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(20, 'Ceramix', 'Castellón', 'Roca', 'Ceramix es un Pokémon que personifica la tradición cerámica de Castellón...', 'static/images/ceramix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(21, 'Fallarbol', 'Valencia', 'Fuego', 'Fallarbol encarna el espíritu de las Fallas de Valencia...', 'static/images/fallarbol.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(22, 'Solfructo', 'Alicante', 'Planta', 'Solfructo es un Pokémon que simboliza la energía del sol...', 'static/images/solfructo.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(23, 'Alcarapix', 'Guadalajara', 'Bicho', 'Alcarapix, el Pokémon Abeja Mielera, es conocido por su incansable trabajo...', 'static/images/alcarapix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(24, 'Alcarapix 2', 'Guadalajara 2', 'Bicho2', 'Alcarapix, el Pokémon Abeja Mielera, es conocido por su incansable trabajo...2', 'static/images/alcarapix.png2', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(66, 'aaa', 'aaaaa', 'aaaa', 'aaaa', 'http://localhost:3000/images/image-1708021776344-ALGORITMOCSS.PNG', '2024-02-15 19:29:36', '2024-02-15 19:29:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`email`, `name`, `password`, `created_at`, `updated_at`) VALUES
('a@a.com', 'test', '$2b$10$tvzQEquj.XAFaL.sR4kmduyD/bSig.wNf4NAN7okX21KQ6JYq.SSa', '2024-02-15 17:27:40', '2024-02-15 17:27:40'),
('alfredotest@gmail.com', 'Alfredo test', '$2b$10$7TXDsEaMLGedkyEtGNgbWupMPvb861iuruBvaDSTjur0v/ViMCdSa', '2024-02-15 17:45:43', '2024-02-15 17:45:43'),
('incognito@a.com', 'INCOGNITO', '$2b$10$jzdVO98OtvWDsGhPks7rq.xGnp9pGojhlozBbSjNxgi2aOC/BfwYK', '2024-02-15 18:16:30', '2024-02-15 18:16:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name_unique` (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
