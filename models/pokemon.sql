-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2024 a las 00:34:50
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
-- Base de datos: `api_bd_alfredo_alberruche`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--
CREATE DATABASE api_bd_alfredo_alberruche;

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
(23, 'Alcarapix', 'Guadalajara', 'Bicho', 'Alcarapix, el Pokémon Abeja Mielera, es conocido por su incansable trabajo...', 'static/images/alcarapix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42');




--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name_unique` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;







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
('ALFONSITO@FONSITOALFON.COM', 'ALFONDO', '$2b$10$f3e2PkCQkB6iNm5CcljuoOB365sfngAO4TbPLsFZ4bm2vQaTZUthe', '2024-02-18 19:44:35', '2024-02-18 19:44:35'),
('alfredotest@gmail.com', 'Alfredo test', '$2b$10$7TXDsEaMLGedkyEtGNgbWupMPvb861iuruBvaDSTjur0v/ViMCdSa', '2024-02-15 17:45:43', '2024-02-15 17:45:43'),
('ASDADASD@DFSDF.COM', 'DASFCASDF', '$2b$10$/PeWdFv9TBD64bUuOcawM.uD7I8Z2u0m6u24oEvxt5rtw/t3piaae', '2024-02-18 17:57:19', '2024-02-18 17:57:19'),
('cihix47812@kxgif.com', 'SDDSDDD', '$2b$10$mvzYY24mtrTt7OnIXZEVQeP5YzkmdkF/Juk0QykKlU95loKtkw4OS', '2024-02-18 17:18:42', '2024-02-18 17:18:42'),
('cihix4DSADA7812@kxgif.com', 'ASASASASS', '$2b$10$QgcFEM0GShsQYn1bsHQLnulhbwWtfcC.DuPH4.rXzIuelaKh53JAK', '2024-02-18 17:19:13', '2024-02-18 17:19:13'),
('dsfsdf', 'fdsfsf', '$2b$10$Pkmpn0pnFOq.yOu61IxqVuP..1B8uOMmkajJpNDhEacJ04MtfwIIS', '2024-02-17 19:51:10', '2024-02-17 19:51:10'),
('incognito@a.com', 'INCOGNITO', '$2b$10$jzdVO98OtvWDsGhPks7rq.xGnp9pGojhlozBbSjNxgi2aOC/BfwYK', '2024-02-15 18:16:30', '2024-02-15 18:16:30'),
('inSASl@gmail.com', 'ASASAAS', '$2b$10$XuwEsRLg/SiHOP6irTiGje6P3u1Uirpo3u0vDVFCes4uO4uTElCzG', '2024-02-18 17:56:35', '2024-02-18 17:56:35'),
('jaADSDADfete7875@anawalls.com', 'ASDASDASD', '$2b$10$WXEYEHAK8BLl4VsEbWKk/u7cdfL56avByThgrfW/ClWDZA9JBYi0.', '2024-02-18 17:56:55', '2024-02-18 17:56:55'),
('jafete7SSS875@anawalls.com', 'SSSS', '$2b$10$2DPFnSXvISNYbKoM60swDOKNGJqVIF3O/r7JlKohwM1nncAieACUe', '2024-02-18 17:55:41', '2024-02-18 17:55:41'),
('NUEsVOssssssssNUEVO', 'ALBERsTaaaaaaaaaO NUEVO NUEVO', '$2b$10$H2TaWBREUZeXkNd1RfN.zOcaxIwtW5q2KEzPX8OYj9FLOmsKBCOIK', '2024-02-17 19:36:33', '2024-02-17 19:36:33'),
('NUEVONUEVO', 'ALBERTO NUEVO NUEVO', '$2b$10$lTe0x.8W92tcqC29ccTZzufqYK5MlYWUhRpSFwDyg1.0DGqsCKoM6', '2024-02-17 19:31:16', '2024-02-17 19:31:16'),
('NUEVOssssssssNUEVO', 'ALBERTaaaaaaaaaO NUEVO NUEVO', '$2b$10$dBwow3H3jm1fGNOhEN7Qf.z5KSyKFMHSpuOJquqnEMgpguuyfR.Lu', '2024-02-17 19:35:28', '2024-02-17 19:35:28'),
('ooooo', 'oooo NUoooEVO NUEVO', '$2b$10$k9MMXhqKrCvj2s92K0r1auifVgDE9BYfV/BH17uofCbJrYfByUJuy', '2024-02-17 19:45:09', '2024-02-17 19:45:09'),
('pmorop@gmail.edu', 'pmorop', '$2b$10$6KTMXf.aPj/bK/6CtBYd.uHf2bTIfIEfuzFQETkAIe/eA5.OGgzLq', '2024-02-21 11:56:10', '2024-02-21 11:56:10'),
('sddasd', 'sadasd', '$2b$10$saW0SMZ3UOQOJ2AqjlTpSONX92IIp3kIXO5nc0lZ4RrDZ6qntzXzu', '2024-02-17 19:53:12', '2024-02-17 19:53:12'),
('xolemib348@visignal.com', 'ASDADSADAD', '$2b$10$WL8.Q/TNwD7KCThmm1n8Uu4dZGHBOypnoBwo9MFRnN1bgtkBtie/q', '2024-02-18 17:17:08', '2024-02-18 17:17:08'),
('xolemib348asdad@visignal.com', 'dasdadas', '$2b$10$nj7rLVgZjPXEx/h39c8Y8uiUFcKKbGGxuTTr2slt5cAWacJY7L5K.', '2024-02-18 17:23:19', '2024-02-18 17:23:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- DELIMITADORES
--

DELIMITER $$
CREATE PROCEDURE `sp_search_pokemon_by_id`(in pokeId int)
BEGIN
    SELECT id, name, location, type, description,image, created_at
    FROM pokemon
    where id = pokeId;
END $$

