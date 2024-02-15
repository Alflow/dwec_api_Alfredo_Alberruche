DROP DATABASE IF EXISTS restapitest123;
CREATE DATABASE IF NOT EXISTS restapitest123;
USE restapitest123;

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

