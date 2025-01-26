CREATE TABLE IF NOT EXISTS `authors` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`first_name` text NOT NULL,
	`last_name` text NOT NULL,
	`bio` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `books` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`title` text NOT NULL,
	`author_id` int NOT NULL,
	`publisher` text NOT NULL,
	`description` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `genres` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`name` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `subgenres` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`name` text NOT NULL,
	`genre_id` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `book_genre` (
	`book_id` int NOT NULL,
	`genre_id` int NOT NULL,
	`subgenre_id` int NOT NULL
);

CREATE TABLE IF NOT EXISTS `isbn_num` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`book_id` int NOT NULL,
	`isbn_number` int NOT NULL,
	`type` text NOT NULL,
	`cover_img_path` text NOT NULL,
	`pages` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `user_prefernces` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`user_id` int NOT NULL,
	`book_id` int NOT NULL,
	`isbn_id` int NOT NULL,
	`language` text NOT NULL,
	`type` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `users` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`username` text NOT NULL,
	`password` text NOT NULL,
	`creation_date` date NOT NULL,
	`pref_language` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `lists` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`name` text NOT NULL,
	`user_id` int NOT NULL,
	`type` text NOT NULL,
	`description` text NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `lists_details` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`list_id` int NOT NULL,
	`book_id` int NOT NULL,
	`isbn_id` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `shared_lists` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`list_id` int NOT NULL,
	`viewer_id` int NOT NULL,
	`edit_perm` boolean NOT NULL,
	PRIMARY KEY (`id`)
);


ALTER TABLE `books` ADD CONSTRAINT `books_fk2` FOREIGN KEY (`author_id`) REFERENCES `authors`(`id`);

ALTER TABLE `subgenres` ADD CONSTRAINT `subgenres_fk2` FOREIGN KEY (`genre_id`) REFERENCES `genres`(`id`);
ALTER TABLE `book_genre` ADD CONSTRAINT `book_genre_fk0` FOREIGN KEY (`book_id`) REFERENCES `books`(`id`);

ALTER TABLE `book_genre` ADD CONSTRAINT `book_genre_fk1` FOREIGN KEY (`genre_id`) REFERENCES `genres`(`id`);

ALTER TABLE `book_genre` ADD CONSTRAINT `book_genre_fk2` FOREIGN KEY (`subgenre_id`) REFERENCES `subgenres`(`id`);
ALTER TABLE `isbn_num` ADD CONSTRAINT `isbn_num_fk1` FOREIGN KEY (`book_id`) REFERENCES `books`(`id`);
ALTER TABLE `user_prefernces` ADD CONSTRAINT `user_prefernces_fk1` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);

ALTER TABLE `user_prefernces` ADD CONSTRAINT `user_prefernces_fk2` FOREIGN KEY (`book_id`) REFERENCES `books`(`id`);

ALTER TABLE `user_prefernces` ADD CONSTRAINT `user_prefernces_fk3` FOREIGN KEY (`isbn_id`) REFERENCES `isbn_num`(`id`);

ALTER TABLE `lists` ADD CONSTRAINT `lists_fk2` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`);
ALTER TABLE `lists_details` ADD CONSTRAINT `lists_details_fk1` FOREIGN KEY (`list_id`) REFERENCES `lists`(`id`);

ALTER TABLE `lists_details` ADD CONSTRAINT `lists_details_fk2` FOREIGN KEY (`book_id`) REFERENCES `books`(`id`);

ALTER TABLE `lists_details` ADD CONSTRAINT `lists_details_fk3` FOREIGN KEY (`isbn_id`) REFERENCES `isbn_num`(`id`);

ALTER TABLE `shared_lists` ADD CONSTRAINT `shared_lists_fk2` FOREIGN KEY (`viewer_id`) REFERENCES `users`(`id`);