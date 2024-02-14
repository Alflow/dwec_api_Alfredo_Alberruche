DROP DATABASE IF EXISTS restapitest123;
CREATE DATABASE IF NOT EXISTS restapitest123;
USE restapitest123;

CREATE TABLE `pokemon`
(
  `id`            INT(11) NOT NULL auto_increment ,
  `name`          VARCHAR(255) NOT NULL ,
  `location` VARCHAR(255) NOT NULL ,
  `type`   VARCHAR(255) NOT NULL ,
  `description`    VARCHAR(255) NOT NULL,
  `image`    VARCHAR(255) NOT NULL ,
  `created_at`    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `updated_at`    DATETIME on UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (`id`),
  UNIQUE `idx_name_unique` (`id`)
)
engine = innodb charset=utf8mb4 COLLATE utf8mb4_general_ci;



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



