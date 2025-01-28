CREATE TABLE IF NOT EXISTS `authors` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`first_name` text NOT NULL,
	`last_name` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `books` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`title` text NOT NULL,
	`description` text NOT NULL,
	`pages` int NOT NULL,
	`cover_img_path` text NOT NULL,
	`author_id` int NOT NULL,
	`publisher_id` int NOT NULL,
	`genre_id` int NOT NULL,
	`isbn` text,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `genres` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`name` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `users` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`username` text NOT NULL,
	`password` text NOT NULL,
	`creation_date` date NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `lists` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`name` text NOT NULL,
	`user_id` int NOT NULL,
	`description` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `publishers` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`name` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `books_list` (
	`list_id` int NOT NULL,
	`book_id` int NOT NULL
);


ALTER TABLE `books` ADD CONSTRAINT `books_fk5` FOREIGN KEY (`author_id`) REFERENCES `authors`(`id`);

ALTER TABLE `books` ADD CONSTRAINT `books_fk6` FOREIGN KEY (`publisher_id`) REFERENCES `publishers`(`id`);

ALTER TABLE `books` ADD CONSTRAINT `books_fk7` FOREIGN KEY (`genre_id`) REFERENCES `genres`(`id`);


ALTER TABLE `lists` ADD CONSTRAINT `lists_fk2` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `books_list` ADD CONSTRAINT `books_list_fk0` FOREIGN KEY (`list_id`) REFERENCES `lists`(`id`);

ALTER TABLE `books_list` ADD CONSTRAINT `books_list_fk1` FOREIGN KEY (`book_id`) REFERENCES `books`(`id`);