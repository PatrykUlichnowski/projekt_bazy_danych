-- Tabela authors
INSERT INTO authors (first_name, last_name) VALUES
('J.K.', 'Rowling'),
('George', 'Orwell'),
('Agatha', 'Christie'),
('J.R.R.', 'Tolkien'),
('Stephen', 'King'),
('F. Scott', 'Fitzgerald'),
('Jane', 'Austen'),
('Mark', 'Twain'),
('Charles', 'Dickens'),
('Ernest', 'Hemingway');

-- Tabela genres
INSERT INTO genres (name) VALUES
('Fantasy'),
('Science Fiction'),
('Mystery'),
('Historical'),
('Romance'),
('Horror'),
('Literature'),
('Thriller'),
('Non-Fiction'),
('Adventure');

-- Tabela users
INSERT INTO users (username, password, creation_date) VALUES
('user1', 'password1', '2025-01-01'),
('user2', 'password2', '2025-01-02'),
('user3', 'password3', '2025-01-03'),
('user4', 'password4', '2025-01-04'),
('user5', 'password5', '2025-01-05'),
('user6', 'password6', '2025-01-06'),
('user7', 'password7', '2025-01-07'),
('user8', 'password8', '2025-01-08'),
('user9', 'password9', '2025-01-09'),
('user10', 'password10', '2025-01-10');

-- Tabela publishers
INSERT INTO publishers (name) VALUES
('Penguin Books'),
('HarperCollins'),
('Simon & Schuster'),
('Random House'),
('Macmillan Publishers'),
('Hachette Livre'),
('Pearson'),
('Bloomsbury'),
('Scholastic Corporation'),
('Wiley');

-- Tabela books
INSERT INTO books (title, description, pages, cover_img_path, author_id, publisher_id, genre_id) VALUES
('Harry Potter and the Philosopher''s Stone', 'Fantasy novel about a young wizard', 223, 'path/to/cover1.jpg', 1, 9, 1),
('1984', 'Dystopian novel set in a totalitarian society', 328, 'path/to/cover2.jpg', 2, 1, 2),
('Murder on the Orient Express', 'Detective novel featuring Hercule Poirot', 256, 'path/to/cover3.jpg', 3, 2, 3),
('The Lord of the Rings', 'Epic high-fantasy novel', 1216, 'path/to/cover4.jpg', 4, 4, 1),
('The Shining', 'Horror novel about a haunted hotel', 447, 'path/to/cover5.jpg', 5, 2, 6),
('The Great Gatsby', 'Novel about the American dream', 180, 'path/to/cover6.jpg', 6, 3, 7),
('Pride and Prejudice', 'Romantic novel about manners and marriage', 432, 'path/to/cover7.jpg', 7, 8, 5),
('The Adventures of Tom Sawyer', 'Adventure novel about a young boy', 284, 'path/to/cover8.jpg', 8, 7, 10),
('A Tale of Two Cities', 'Historical novel set during the French Revolution', 341, 'path/to/cover9.jpg', 9, 6, 4),
('The Old Man and the Sea', 'Short novel about an old fisherman', 127, 'path/to/cover10.jpg', 10, 5, 7);

INSERT INTO lists (name, user_id, description) VALUES
('Sci-Fi Favorites', 1, 'A collection of the best sci-fi books.'),
('Fantasy Adventures', 2, 'Epic fantasy journeys.'),
('Mystery Novels', 3, 'Thrilling mystery stories.'),
('Biography Must-Reads', 1, 'Biographies you must read.'),
('Classic Literature', 2, 'Timeless classic books.'),
('Modern Fiction', 3, 'Stories from today\'s best authors.'),
('Historical Fiction', 1, 'Stories set in historical times.'),
('Self-Help and Wellness', 2, 'Books to improve yourself.'),
('Non-fiction Highlights', 3, 'Engaging non-fiction reads.'),
('Young Adult Series', 1, 'Popular young adult series.');

INSERT INTO publishers (name) VALUES
('Penguin Random House'),
('HarperCollins'),
('Simon & Schuster'),
('Macmillan Publishers'),
('Hachette Livre'),
('Scholastic Corporation'),
('Bloomsbury Publishing'),
('Pearson'),
('Elsevier'),
('Wiley');

INSERT INTO books_list (list_id, book_id) VALUES
(1, 1),
(1, 6),
(1, 4),
(2, 2),
(2, 9),
(2, 6),
(2, 5),
(3, 3),
(4, 4),
(4, 1),
(5, 8),
(5, 10),
(6, 1),
(7, 1),
(7, 7),
(7, 10),
(8, 2),
(8, 5),
(9, 6),
(10, 2);
