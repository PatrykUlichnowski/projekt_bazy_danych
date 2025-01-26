-- Authors data
INSERT INTO `authors` (`first_name`, `last_name`, `bio`) VALUES
('John', 'Doe', 'John Doe is a prolific author known for his mystery novels.'),
('Jane', 'Smith', 'Jane Smith is a popular author of romance novels.'),
('Alice', 'Johnson', 'Alice Johnson writes science fiction and fantasy.'),
('Robert', 'Brown', 'Robert Brown specializes in historical fiction.'),
('Emma', 'Davis', 'Emma Davis is a children\'s book author.'),
('Michael', 'Wilson', 'Michael Wilson writes thrilling crime stories.'),
('Olivia', 'Martinez', 'Olivia Martinez is a poet and essayist.'),
('William', 'Garcia', 'William Garcia writes non-fiction books on science.'),
('Sophia', 'Anderson', 'Sophia Anderson is a novelist and playwright.'),
('James', 'Lee', 'James Lee is a fantasy writer.');

-- Books data
INSERT INTO `books` (`title`, `author_id`, `publisher`, `description`) VALUES
('Mystery Book', 1, 'Mystery House', 'A thrilling mystery novel by John Doe.'),
('Romance Novel', 2, 'Love Press', 'A heartwarming romance by Jane Smith.'),
('Sci-Fi Adventure', 3, 'Sci-Fi Publishing', 'An exciting science fiction adventure by Alice Johnson.'),
('Historical Saga', 4, 'History Press', 'An epic historical saga by Robert Brown.'),
('Children\'s Fairytale', 5, 'Kids Books', 'A charming children\'s fairytale by Emma Davis.'),
('Crime Thriller', 6, 'Crime Press', 'A gripping crime thriller by Michael Wilson.'),
('Poetry Collection', 7, 'Literary Press', 'A collection of poems by Olivia Martinez.'),
('Science Book', 8, 'Knowledge Press', 'A non-fiction book on science by William Garcia.'),
('Novel and Play', 9, 'Drama House', 'A novel and play by Sophia Anderson.'),
('Fantasy Epic', 10, 'Fantasy Press', 'A fantasy epic by James Lee.');

-- Genres data
INSERT INTO `genres` (`name`) VALUES
('Mystery'),
('Romance'),
('Science Fiction'),
('Historical Fiction'),
('Children\'s'),
('Crime'),
('Poetry'),
('Non-Fiction'),
('Drama'),
('Fantasy');

-- Subgenres data
INSERT INTO `subgenres` (`name`, `genre_id`) VALUES
('Crime', 1),
('Paranormal', 1),
('Contemporary', 2),
('Dystopian', 3),
('Space Opera', 3),
('Epic', 4),
('Fairytale', 5),
('Thriller', 6),
('Lyric', 7),
('Play', 9);

-- Book_genre data
INSERT INTO `book_genre` (`book_id`, `genre_id`, `subgenre_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 5),
(4, 4, 6),
(5, 5, 7),
(6, 6, 8),
(7, 7, 9),
(8, 8, NULL),
(9, 9, 10),
(10, 10, NULL);

-- ISBN_num data
INSERT INTO `isbn_num` (`book_id`, `isbn_number`, `type`, `cover_img_path`, `pages`) VALUES
(1, 1234567890, 'Hardcover', 'path/to/cover1.jpg', 320),
(2, 2345678901, 'Paperback', 'path/to/cover2.jpg', 280),
(3, 3456789012, 'Ebook', 'path/to/cover3.jpg', 350),
(4, 4567890123, 'Hardcover', 'path/to/cover4.jpg', 400),
(5, 5678901234, 'Paperback', 'path/to/cover5.jpg', 150),
(6, 6789012345, 'Ebook', 'path/to/cover6.jpg', 300),
(7, 7890123456, 'Hardcover', 'path/to/cover7.jpg', 250),
(8, 8901234567, 'Paperback', 'path/to/cover8.jpg', 360),
(9, 9012345678, 'Ebook', 'path/to/cover9.jpg', 420),
(10, 1123456789, 'Hardcover', 'path/to/cover10.jpg', 280);

-- User_prefernces data
INSERT INTO `user_prefernces` (`user_id`, `book_id`, `isbn_id`, `language`, `type`) VALUES
(1, 1, 1, 'English', 'Hardcover'),
(2, 2, 2, 'Polish', 'Paperback'),
(3, 3, 3, 'English', 'Ebook'),
(4, 4, 4, 'French', 'Hardcover'),
(5, 5, 5, 'German', 'Paperback'),
(6, 6, 6, 'Spanish', 'Ebook'),
(7, 7, 7, 'Italian', 'Hardcover'),
(8, 8, 8, 'Dutch', 'Paperback'),
(9, 9, 9, 'Russian', 'Ebook'),
(10, 10, 10, 'Chinese', 'Hardcover');

-- Users data
INSERT INTO `users` (`username`, `password`, `creation_date`, `pref_language`) VALUES
('janedoe', 'password123', '2025-01-24', 'English'),
('johndoe', 'securepass', '2025-01-24', 'Polish'),
('alicjaj', 'mypassword', '2025-01-24', 'English'),
('robbob', 'historical123', '2025-01-24', 'French'),
('emma_d', 'kidsbooks', '2025-01-24', 'German'),
('michael_w', 'crimepass', '2025-01-24', 'Spanish'),
('olivia_m', 'poetlife', '2025-01-24', 'Italian'),
('william_g', 'scienceislife', '2025-01-24', 'Dutch'),
('sophia_a', 'dramaqueen', '2025-01-24', 'Russian'),
('james_l', 'fantasypass', '2025-01-24', 'Chinese');

-- Lists data
INSERT INTO `lists` (`name`, `user_id`, `type`, `description`) VALUES
('Favorites', 1, 'Reading List', 'List of favorite books'),
('Wishlist', 2, 'Reading List', 'Books to be read next'),
('Archived', 3, 'Collection', 'Books already read'),
('Top Mystery', 1, 'Genre List', 'Top mystery books'),
('Romantic Reads', 2, 'Genre List', 'Must-read romance novels'),
('Sci-Fi Classics', 3, 'Genre List', 'Essential science fiction books'),
('Historical Gems', 4, 'Genre List', 'Great historical fiction books'),
('Kids Collection', 5, 'Genre List', 'Best children\'s books'),
('Crime Thrillers', 6, 'Genre List', 'Top crime novels'),
('Poetry Anthology', 7, 'Genre List', 'Best poetry collections');

-- Lists_details data
INSERT INTO `lists_details` (`list_id`, `book_id`, `isbn_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 1),
(5, 2, 2),
(6, 3, 3),
(7, 4, 4),
(8, 5, 5),
(9, 6, 6),
(10, 7, 7);

-- Shared_lists data
INSERT INTO `shared_lists` (`list_id`, `viewer_id`, `edit_perm`) VALUES
(1, 2, TRUE),
(2, 3, FALSE),
(3, 1, TRUE),
(4, 5, TRUE),
(5, 6, FALSE),
(6, 7, TRUE),
(7, 8, FALSE),
(8, 9, TRUE),
(9, 10, FALSE),
(10, 1, TRUE);
