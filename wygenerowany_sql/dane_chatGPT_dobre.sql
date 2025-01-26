-- Authors Table
INSERT INTO `authors` (id, first_name, last_name, bio) VALUES
(1, 'John', 'Doe', 'A prolific author known for his mystery novels.'),
(2, 'Jane', 'Smith', 'A famous writer of science fiction books.'),
(3, 'Emily', 'Johnson', 'An acclaimed poet and essayist.'),
(4, 'Michael', 'Brown', 'Writes historical fiction set in medieval Europe.'),
(5, 'Sarah', 'Davis', 'Known for her romantic comedies.'),
(6, 'David', 'Wilson', 'Author of groundbreaking tech manuals.'),
(7, 'Laura', 'Martinez', 'Explores themes of identity and culture in her work.'),
(8, 'James', 'Anderson', 'Specializes in adventure novels for young adults.'),
(9, 'Sophia', 'Thomas', 'Renowned for her fantasy trilogies.'),
(10, 'Robert', 'Taylor', 'An award-winning mystery and crime writer.');

-- Books Table
INSERT INTO `books` (id, title, author_id, publisher, description) VALUES
(1, 'The Mystery of Shadows', 1, 'Mystery House', 'A gripping tale of secrets and betrayal.'),
(2, 'Beyond the Stars', 2, 'SciFi World', 'An epic journey through space and time.'),
(3, 'Poems from the Heart', 3, 'Literary Press', 'A collection of moving and thoughtful poetry.'),
(4, 'Knights of the Realm', 4, 'Historical Horizons', 'A thrilling story set in medieval times.'),
(5, 'Love in Bloom', 5, 'Romantic Reads', 'A delightful romantic comedy.'),
(6, 'Tech for the Future', 6, 'TechNow', 'A comprehensive guide to emerging technologies.'),
(7, 'Cultural Mosaic', 7, 'Global Voices', 'Essays exploring identity and belonging.'),
(8, 'Adventure Awaits', 8, 'Young Readers', 'An exciting adventure for young readers.'),
(9, 'The Enchanted Forest', 9, 'Fantasy Realm', 'A magical journey through a fantastical land.'),
(10, 'Crime and Punishment', 10, 'Thriller Press', 'A suspenseful crime novel.');

-- Genres Table
INSERT INTO `genres` (id, name) VALUES
(1, 'Mystery'),
(2, 'Science Fiction'),
(3, 'Poetry'),
(4, 'Historical Fiction'),
(5, 'Romance'),
(6, 'Technology'),
(7, 'Non-Fiction'),
(8, 'Young Adult'),
(9, 'Fantasy'),
(10, 'Thriller');

-- Subgenres Table
INSERT INTO `subgenres` (id, name, genre_id) VALUES
(1, 'Detective', 1),
(2, 'Space Opera', 2),
(3, 'Epic Poetry', 3),
(4, 'Medieval', 4),
(5, 'Romantic Comedy', 5),
(6, 'AI and Robotics', 6),
(7, 'Cultural Essays', 7),
(8, 'Teen Adventure', 8),
(9, 'Epic Fantasy', 9),
(10, 'Psychological Thriller', 10);

-- Book Genre Table
INSERT INTO `book_genre` (book_id, genre_id, subgenre_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- ISBN Numbers Table
INSERT INTO `isbn_num` (id, book_id, isbn_number, type, cover_img_path, pages) VALUES
(1, 1, 9781234567897, 'Hardcover', '/images/mystery1.jpg', 350),
(2, 2, 9782345678901, 'Paperback', '/images/scifi1.jpg', 420),
(3, 3, 9783456789012, 'Ebook', '/images/poetry1.jpg', 200),
(4, 4, 9784567890123, 'Hardcover', '/images/history1.jpg', 500),
(5, 5, 9785678901234, 'Paperback', '/images/romance1.jpg', 300),
(6, 6, 9786789012345, 'Ebook', '/images/tech1.jpg', 250),
(7, 7, 9787890123456, 'Hardcover', '/images/nonfiction1.jpg', 400),
(8, 8, 9788901234567, 'Paperback', '/images/ya1.jpg', 320),
(9, 9, 9789012345678, 'Ebook', '/images/fantasy1.jpg', 450),
(10, 10, 9780123456789, 'Hardcover', '/images/thriller1.jpg', 380);

-- Users Table
INSERT INTO `users` (id, username, password, creation_date, pref_language) VALUES
(1, 'user1', 'pass1', '2022-01-01', 'English'),
(2, 'user2', 'pass2', '2022-02-01', 'Spanish'),
(3, 'user3', 'pass3', '2022-03-01', 'French'),
(4, 'user4', 'pass4', '2022-04-01', 'German'),
(5, 'user5', 'pass5', '2022-05-01', 'Italian'),
(6, 'user6', 'pass6', '2022-06-01', 'English'),
(7, 'user7', 'pass7', '2022-07-01', 'Spanish'),
(8, 'user8', 'pass8', '2022-08-01', 'French'),
(9, 'user9', 'pass9', '2022-09-01', 'German'),
(10, 'user10', 'pass10', '2022-10-01', 'Italian');

-- Lists Table
INSERT INTO `lists` (id, name, user_id, type, description) VALUES
(1, 'Favorite Mysteries', 1, 'Private', 'A list of my favorite mystery books.'),
(2, 'Sci-Fi Collection', 2, 'Public', 'All my science fiction books.'),
(3, 'Poetry Classics', 3, 'Private', 'The best poetry I have read.'),
(4, 'Historical Reads', 4, 'Public', 'Historical fiction books I enjoyed.'),
(5, 'Romantic Reads', 5, 'Private', 'Romance books I love.'),
(6, 'Tech Manuals', 6, 'Private', 'My go-to technology books.'),
(7, 'Cultural Favorites', 7, 'Public', 'Books that explore culture and identity.'),
(8, 'YA Adventures', 8, 'Private', 'Adventure books for young adults.'),
(9, 'Fantasy Worlds', 9, 'Public', 'Fantasy books I admire.'),
(10, 'Thrilling Stories', 10, 'Private', 'Thrillers that kept me on edge.');

-- Lists Details Table
INSERT INTO `lists_details` (id, list_id, book_id, isbn_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10);

-- Shared Lists Table
INSERT INTO `shared_lists` (id, list_id, viewer_id, edit_perm) VALUES
(1, 2, 1, TRUE),
(2, 4, 3, FALSE),
(3, 6, 5, TRUE),
(4, 8, 7, FALSE),
(5, 10, 9, TRUE),
(6, 1, 2, TRUE),
(7, 3, 4, FALSE),
(8, 5, 6, TRUE),
(9, 7, 8, FALSE),
(10, 9, 10, TRUE);
