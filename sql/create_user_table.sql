DROP TABLE carrot_market.user;

CREATE TABLE carrot_market.user (
 `created_at` DATETIME NOT NULL,
 `last_modified_at` DATETIME NOT NULL,
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `name` varchar(64) NOT NULL,
 PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
