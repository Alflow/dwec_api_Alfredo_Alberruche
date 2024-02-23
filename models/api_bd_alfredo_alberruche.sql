DROP DATABASE IF EXISTS api_bd_alfredo_alberruche;
CREATE DATABASE IF NOT EXISTS api_bd_alfredo_alberruche;
USE api_bd_alfredo_alberruche;

CREATE TABLE `language`
(
  `id`            INT(11) NOT NULL auto_increment ,
  `name`          VARCHAR(255) NOT NULL ,
  `released_year` INT NOT NULL ,
  `githut_rank`   INT NULL ,
  `pypl_rank`     INT NULL ,
  `tiobe_rank`    INT NULL ,
  `created_at`    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `updated_at`    DATETIME on UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (`id`),
  UNIQUE `idx_name_unique` (`name`(255))
)
engine = innodb charset=utf8mb4 COLLATE utf8mb4_general_ci;


INSERT INTO language(id,name,released_year,githut_rank,pypl_rank,tiobe_rank) 
VALUES 
(1,'JavaScript',1995,1,3,7),
(2,'Python',1991,2,1,3),
(3,'Java',1995,3,2,2),
(4,'TypeScript',2012,7,10,42),
(5,'C#',2000,9,4,5),
(6,'PHP',1995,8,6,8),
(7,'C++',1985,5,5,4),
(8,'C',1972,10,5,1),
(9,'Ruby',1995,6,15,15),
(10,'R',1993,33,7,9),
(11,'Objective-C',1984,18,8,18),
(12,'Swift',2015,16,9,13),
(13,'Kotlin',2011,15,12,40),
(14,'Go',2009,4,13,14),
(15,'Rust',2010,14,16,26),
(16,'Scala',2004,11,17,34);



-- Crea la tabla de usuarios
CREATE TABLE `user`
(
  `email`         VARCHAR(255) NOT NULL ,
  `name`          VARCHAR(255) NOT NULL ,
  `password`      VARCHAR(255) NOT NULL ,
  `created_at`    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `updated_at`    DATETIME on UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (`email`)
);

-- todas las contraseñas de estos usuarios son y el correo es @gmail.edu Abc123??
INSERT INTO user(email,name,password) VALUES 
('alfredo@gmail.edu','Alfredo',"$2b$10$B5EfT04jwC1HnHeok0wUDeI/Pvp6LKqjWFfj0qOAUOFOfh7H7F.JK"),
('antonio@gmail.edu','Antonio',"$2b$10$B5EfT04jwC1HnHeok0wUDeI/Pvp6LKqjWFfj0qOAUOFOfh7H7F.JK"),
('test@gmail.edu','test',"$2b$10$B5EfT04jwC1HnHeok0wUDeI/Pvp6LKqjWFfj0qOAUOFOfh7H7F.JK");

-- Crea la tabla de libros

CREATE TABLE `book`
(
  `id`            INT(11) NOT NULL auto_increment ,
  `title`         VARCHAR(255) NOT NULL ,
  `img`           VARCHAR(255) NULL ,
  `created_at`    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `updated_at`    DATETIME on UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (`id`),
  UNIQUE `idx_name_unique` (`title`(255))
)
engine = innodb charset=utf8mb4 COLLATE utf8mb4_general_ci;

-- Inserta algunos libros de prueba

INSERT INTO book(id,title,img) VALUES 
(1,'Libro 1',"https://loremflickr.com/320/240"),
(2,'Libro 2',"https://loremflickr.com/320/240"),
(3,'Libro 3',"./app/assets/Javascript_Logo.png"),
(4,'Libro 4',"./app/assets/Javascript_Logo.png");





CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
)engine = innodb charset=utf8mb4 COLLATE utf8mb4_general_ci
;

INSERT INTO `pokemon` (`id`, `name`, `location`, `type`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Aquixal', 'A Coruña', 'Agua', 'Aquixal es un Pokémon tipo Agua que habita en las costas rocosas de la región...', 'http://localhost:3000/images/aquixal.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(2, 'Vinhalga', 'Pontevedra', 'Planta/Agua', 'Vinhalga es un Pokémon que combina características de las plantas de vid con las algas marinas...', 'http://localhost:3000/images/vinhalga.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(3, 'Muraluce', 'Lugo', 'Roca/Planta', 'Muraluce es un Pokémon que encarna la resistencia y la historia antigua de Lugo...', 'http://localhost:3000/images/muraluce.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(4, 'Termalix', 'Ourense', 'Fuego/Agua', 'Termalix es un Pokémon que vive en las aguas termales de Ourense...', 'http://localhost:3000/images/termalix.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(5, 'Sidralus', 'Asturias', 'Planta', 'Sidralus es un Pokémon que personifica el espíritu de Asturias...', 'http://localhost:3000/images/sidralus.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(6, 'Cantabrisea', 'Cantabria', 'Agua', 'Cantabrisea es un Pokémon que simboliza la imponente presencia del Mar Cantábrico...', 'http://localhost:3000/images/cantabrisea.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(7, 'Guggenferr', 'Vizcaya', 'Acero', 'Guggenferr es un Pokémon que simboliza la fusión de arte y tecnología...', 'http://localhost:3000/images/guggenferr.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(8, 'Flyschdra', 'Guipúzcoa', 'Agua', 'Flyschdra es un Pokémon que simboliza la majestuosa costa de Guipúzcoa...', 'http://localhost:3000/images/flyschdra.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(9, 'Gasteizor', 'Álava', 'Fantasma/Roca', 'Gasteizor es un Pokémon que encarna la historia medieval y las leyendas de Álava...', 'http://localhost:3000/images/gasteizor.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(10, 'Ferminox', 'Navarra', 'Normal', 'Ferminox es un Pokémon con la apariencia de un toro majestuoso y enérgico...', 'http://localhost:3000/images/ferminox.png', '2024-02-14 23:31:43', '2024-02-14 23:31:43'),
(11, 'Dualiwine', 'La Rioja', 'Planta', 'Dualiwine es un Pokémon que evoca los viñedos ondulantes de La Rioja...', 'http://localhost:3000/images/dualiwine.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(12, 'Celtispirit', 'Soria', 'Fantasma/Planta', 'Celtispirit es un Pokémon que encarna los misterios de los antiguos bosques...', 'http://localhost:3000/images/celtispirit.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(13, 'Pireneox', 'Huesca', 'Hielo', 'Pireneox es un Pokémon que personifica la magnificencia de los Pirineos de Huesca...', 'http://localhost:3000/images/pireneox.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(14, 'Ebrionwave', 'Zaragoza', 'Agua/Volador', 'Ebrionwave es un Pokémon que captura la esencia del río Ebro...', 'http://localhost:3000/images/ebrionwave.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(15, 'Mudéjarmon', 'Teruel', 'Roca/Fantasma', 'Mudéjarmon es un Pokémon que simboliza la arquitectura mudéjar de Teruel...', 'http://localhost:3000/images/mudejarmon.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(16, 'Románix', 'Lérida', 'Roca/Hielo', 'Románix es un Pokémon que encapsula la majestuosidad de los paisajes de montaña de Lérida...', 'http://localhost:3000/images/romanix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(17, 'Gladiaton', 'Tarragona', 'Roca', 'Gladiaton es un Pokémon que personifica la valentía y el espíritu de los antiguos gladiadores romanos...', 'http://localhost:3000/images/gladiaton.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(18, 'Gaudix', 'Barcelona', 'Roca/Psíquico', 'Gaudix es un Pokémon que refleja la singularidad y la creatividad de la arquitectura modernista...', 'http://localhost:3000/images/gaudix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(19, 'Murallix', 'Gerona', 'Roca/Fantasma', 'Murallix es un Pokémon que personifica las antiguas murallas y el legado histórico de Gerona...', 'http://localhost:3000/images/murallix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(20, 'Ceramix', 'Castellón', 'Roca', 'Ceramix es un Pokémon que personifica la tradición cerámica de Castellón...', 'http://localhost:3000/images/ceramix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(21, 'Fallarbol', 'Valencia', 'Fuego', 'Fallarbol encarna el espíritu de las Fallas de Valencia...', 'http://localhost:3000/images/fallarbol.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(22, 'Solfructo', 'Alicante', 'Planta', 'Solfructo es un Pokémon que simboliza la energía del sol...', 'http://localhost:3000/images/solfructo.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42'),
(23, 'Alcarapix', 'Guadalajara', 'Bicho', 'Alcarapix, el Pokémon Abeja Mielera, es conocido por su incansable trabajo...', 'http://localhost:3000/images/alcarapix.png', '2024-02-14 23:33:42', '2024-02-14 23:33:42');



DELIMITER $$

CREATE PROCEDURE `sp_search_language_by_id`(in langid int)
BEGIN
    SELECT name, githut_rank, pypl_rank, tiobe_rank, created_at
    FROM language
    where id = langid;
END $$

DELIMITER $$
CREATE PROCEDURE `sp_search_book_by_id`(in bookid int)
BEGIN
    SELECT id, title, img, created_at
    FROM book
    where id = bookid;
END $$
DELIMITER $$
CREATE PROCEDURE `sp_search_pokemon_by_id`(in pokemonId int)
BEGIN
    SELECT id, name, location, type, description, image, created_at, updated_at
    FROM pokemon
    where id = pokemonId;
END $$