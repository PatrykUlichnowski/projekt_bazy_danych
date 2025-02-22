INSERT INTO authors (id, first_name, last_name) VALUES
(1, 'George', 'Orwell'),
(2, 'J.K.', 'Rowling'),
(3, 'J.R.R.', 'Tolkien'),
(4, 'Agatha', 'Christie'),
(5, 'Jane', 'Austen'),
(6, 'Gabriel', 'García Márquez'),
(7, 'F. Scott', 'Fitzgerald'),
(8, 'Harper', 'Lee'),
(9, 'Mark', 'Twain'),
(10, 'Ernest', 'Hemingway'),
(11, 'Charles', 'Dickens'),
(12, 'Leo', 'Tolstoy'),
(13, 'Stephen', 'King'),
(14, 'Isaac', 'Asimov'),
(15, 'Arthur', 'Conan Doyle'),
(16, 'Virginia', 'Woolf'),
(17, 'Franz', 'Kafka'),
(18, 'Oscar', 'Wilde'),
(19, 'Herman', 'Melville'),
(20, 'J.D.', 'Salinger'),
(21, 'C.S.', 'Lewis'),
(22, 'Toni', 'Morrison'),
(23, 'Kurt', 'Vonnegut'),
(24, 'Margaret', 'Atwood'),
(25, 'Fyodor', 'Dostoevsky'),
(26, 'Jack', 'London'),
(27, 'Jules', 'Verne'),
(28, 'Ray', 'Bradbury'),
(29, 'George R.R.', 'Martin'),
(30, 'Suzanne', 'Collins'),
(31, 'Dan', 'Brown'),
(32, 'John', 'Steinbeck'),
(33, 'Emily', 'Brontë'),
(34, 'Aldous', 'Huxley'),
(35, 'Douglas', 'Adams'),
(36, 'Edgar', 'Allan Poe'),
(37, 'Victor', 'Hugo'),
(38, 'Mary', 'Shelley'),
(39, 'H.G.', 'Wells'),
(40, 'E.M.', 'Forster'),
(41, 'Thomas', 'Hardy'),
(42, 'Paulo', 'Coelho'),
(43, 'Sylvia', 'Plath'),
(44, 'Marcel', 'Proust'),
(45, 'Robert Louis', 'Stevenson'),
(46, 'J.D.', 'Robb'),
(47, 'Anne', 'Rice'),
(48, 'Elena', 'Ferrante'),
(49, 'Patrick', 'Rothfuss'),
(50, 'Neil', 'Gaiman');

INSERT INTO publishers (id, name) VALUES
(1, 'Penguin Books'),
(2, 'HarperCollins'),
(3, 'Random House'),
(4, 'Hachette Book Group'),
(5, 'Macmillan Publishers'),
(6, 'Simon & Schuster'),
(7, 'Scholastic'),
(8, 'Bloomsbury'),
(9, 'Oxford University Press'),
(10, 'Vintage Books'),
(11, 'Knopf Doubleday'),
(12, 'Tor Books'),
(13, 'Little, Brown and Company'),
(14, 'Crown Publishing'),
(15, 'Faber & Faber'),
(16, 'Avon Books'),
(17, 'Doubleday'),
(18, 'Del Rey'),
(19, 'William Morrow'),
(20, 'Grove Atlantic'),
(21, 'St. Martins Press'),
(22, 'G.P. Putnams Sons'),
(23, 'Anchor Books'),
(24, 'Orbit'),
(25, 'Harlequin'),
(26, 'Ballantine Books'),
(27, 'Viking Press'),
(28, 'Pantheon Books'),
(29, 'Bantam Books'),
(30, 'Ace Books'),
(31, 'W.W. Norton'),
(32, 'Harcourt'),
(33, 'Beacon Press'),
(34, 'Houghton Mifflin Harcourt'),
(35, 'Ecco Press'),
(36, 'Tor Forge'),
(37, 'New Directions'),
(38, 'Graywolf Press'),
(39, 'Europa Editions'),
(40, 'Candlewick Press'),
(41, 'Algonquin Books'),
(42, 'Grand Central Publishing'),
(43, 'Headline'),
(44, 'Andrews McMeel Publishing'),
(45, 'Walker Books'),
(46, 'Titan Books'),
(47, 'Titan Publishing Group'),
(48, 'Orbit Books'),
(49, 'Pushkin Press'),
(50, 'Archipelago Books');

INSERT INTO genres (id, name) VALUES
(1, 'Fiction'),
(2, 'Fantasy'),
(3, 'Science Fiction'),
(4, 'Mystery'),
(5, 'Thriller'),
(6, 'Historical Fiction'),
(7, 'Romance'),
(8, 'Horror'),
(9, 'Young Adult'),
(10, 'Biography'),
(11, 'Non-Fiction'),
(12, 'Classics'),
(13, 'Adventure'),
(14, 'Drama'),
(15, 'Poetry'),
(16, 'Satire'),
(17, 'Childrens'),
(18, 'Dystopian'),
(19, 'Graphic Novel'),
(20, 'Memoir'),
(21, 'Crime'),
(22, 'Humor'),
(23, 'Magical Realism'),
(24, 'Short Stories'),
(25, 'Self-Help'),
(26, 'Philosophy'),
(27, 'Psychology'),
(28, 'Religion'),
(29, 'Spirituality'),
(30, 'Education'),
(31, 'Travel'),
(32, 'Art'),
(33, 'Cookbooks'),
(34, 'Anthology'),
(35, 'Essays'),
(36, 'Sports'),
(37, 'Music'),
(38, 'Technology'),
(39, 'Politics'),
(40, 'Economics'),
(41, 'Business'),
(42, 'Environment'),
(43, 'Science'),
(44, 'Health'),
(45, 'Parenting'),
(46, 'Relationships'),
(47, 'True Crime'),
(48, 'Western'),
(49, 'War'),
(50, 'Coming-of-Age');

INSERT INTO books (id, title, author_id, publisher_id, genre_id, description, isbn, pages, cover_img_path) VALUES
(1, '1984', 1, 1, 1, "A dystopian novel exploring the dangers of totalitarianism.", "9780140817744", 328, "path"),
(2, 'Harry Potter and the Philosophers Stone', 2, 2, 2, "A magical adventure featuring a young wizard discovering his destiny.", "9780439362139", 223, "path"),
(3, 'The Hobbit', 3, 3, 2, "A fantasy tale about a reluctant hero on a quest to reclaim a lost kingdom.", "9780345339683", 310, "path"),
(4, 'Murder on the Orient Express', 4, 4, 4, "A classic mystery novel set aboard a luxurious train.", "9780063160354", 256, "path"),
(5, 'Pride and Prejudice', 5, 5, 6, "A timeless romance that explores themes of class and societal expectations.", "9780140430721", 279, "path"),
(6, 'One Hundred Years of Solitude', 6, 6, 1, "A sweeping family saga set in a small South American town.", "9780060883287", 417, "path"),
(7, 'The Great Gatsby', 7, 7, 1, "A tragic story of wealth, ambition, and the American Dream.", "9780199536405", 180, "path"),
(8, 'To Kill a Mockingbird', 8, 8, 6, "A gripping tale of racial injustice in the Deep South.", "9780060935467", 281, "path"),
(9, 'The Adventures of Tom Sawyer', 9, 9, 3, "The adventures of a mischievous boy along the Mississippi River.", "9780192806826", 224, "path"),
(10, 'The Old Man and the Sea', 10, 10, 6, "A powerful novella about struggle and perseverance at sea.", "9781476787848", 127, "path"),
(11, 'A Tale of Two Cities', 11, 11, 6, "A historical drama set during the French Revolution.", "9780582030473", 341, "path"),
(12, 'War and Peace', 12, 12, 6, "A monumental novel chronicling the lives of aristocratic families during wartime.", "9780199232765", 1225, "path"),
(13, 'The Shining', 13, 13, 8, "A chilling horror story about a haunted hotel.", "9780307743657", 447, "path"),
(14, 'Foundation', 14, 14, 3, "A science fiction classic about the rise and fall of a galactic empire.", "9780553293357", 244, "path"),
(15, 'Sherlock Holmes: A Study in Scarlet', 15, 15, 4, "The first case of the world's greatest detective.", "9780486469332", 108, "path"),
(16, 'To the Lighthouse', 16, 16, 6, "A lyrical exploration of memory and family on a remote island.", "9780156907392", 209, "path"),
(17, 'The Metamorphosis', 17, 17, 6, "A surreal story about a man transformed into an insect.", "9780385095013", 96, "path"),
(18, 'The Picture of Dorian Gray', 18, 18, 6, "A tale of vanity, youth, and moral corruption.", "9780141439570", 254, "path"),
(19, 'Moby-Dick', 19, 19, 3, "An epic sea adventure driven by vengeance.", "9780142437247", 635, "path"),
(20, 'The Catcher in the Rye', 20, 20, 6, "A coming-of-age novel set in post-war America.", "9780316769488", 277, "path"),
(21, 'The Chronicles of Narnia', 21, 21, 2, "A magical world where children discover a portal to another realm.", "9780066238500", 767, "path"),
(22, 'Beloved', 22, 22, 6, "A haunting story of slavery, memory, and redemption.", "9781400033416", 324, "path"),
(23, 'Slaughterhouse-Five', 23, 23, 6, "A satirical exploration of war, fate, and free will.", "9780385333843", 215, "path"),
(24, 'The Handmaids Tale', 24, 24, 6, "A dystopian future where women fight for survival and independence.", "9780385490812", 311, "path"),
(25, 'Crime and Punishment', 25, 25, 4, "A psychological exploration of guilt and redemption.", "9780199536368", 545, "path"),
(27, 'Twenty Thousand Leagues Under the Sea', 27, 27, 3, "An underwater journey of discovery and danger.", "9780553212525", 374, "path"),
(28, 'Fahrenheit 451', 28, 28, 3, "A cautionary tale about censorship and intellectual freedom.", "9780345342966", 194, "path"),
(29, 'A Game of Thrones', 29, 29, 2, "A sprawling fantasy epic of power, politics, and dragons.", "9780553593715", 694, "path"),
(30, 'The Hunger Games', 30, 30, 2, "A dystopian fight for survival in a televised death match.", "9780439023528", 374, "path"),
(31, 'The Da Vinci Code', 31, 31, 4, "A modern thriller involving secret societies and ancient conspiracies.", "9780307474278", 489, "path"),
(32, 'Of Mice and Men', 32, 32, 6, "A moving story of friendship and hardship during the Great Depression.", "9780140177398", 112, "path"),
(33, 'Wuthering Heights', 33, 33, 6, "A gothic romance set on the Yorkshire moors.", "9780553212587", 416, "path"),
(34, 'Brave New World', 34, 34, 1, "A disturbing vision of a future dominated by technology and control.", "9780060850524", 288, "path"),
(35, 'The Hitchhikers Guide to the Galaxy', 35, 35, 3, "A humorous adventure through space and time.", "9780345391803", 216, "path"),
(36, 'The Raven', 36, 36, 14, "A dark, poetic tale of love and loss.", "9780486266856", 32, "path"),
(37, 'Les Misérables', 37, 37, 6, "A sweeping story of love, revolution, and redemption.", '9783161484100', 1232, "path"),
(38, 'Frankenstein', 38, 38, 3, "A haunting tale exploring the tragic consequences of creating life and desperate search for acceptance.", '9781234567897', 280, "path"),
(39, 'The War of the Worlds', 39, 39, 3, "A pioneering work of science fiction exploring the limits of human ambition.", '9780198526636', 192, "path"),
(40, 'A Passage to India', 40, 40, 6, "A poignant story of cultural clashes and colonialism in India.", '9780141441167', 368, "path"),
(41, 'Tess of the dUrbervilles', 41, 41, 6, "A tragic love story set in rural England.", '9780140435143', 518, "path"),
(42, 'The Alchemist', 42, 42, 1, "An inspirational tale of following one's dreams.", '9780061122415', 208, "path"),
(43, 'The Bell Jar', 43, 43, 14, "A semi-autobiographical account of mental health struggles.", '9780060837020', 244, "path"),
(44, 'In Search of Lost Time', 44, 44, 6, "An epic narrative about memory, love, and loss.", '9780142437964', 4215, "path"),
(45, 'Treasure Island', 45, 45, 3, "A thrilling quest for hidden treasure.", '9780199553976', 240, "path"),
(46, 'Naked in Death', 46, 46, 4, "A futuristic crime novel with a strong female lead.", '978042172849', 308, "path"),
(47, 'Interview with the Vampire', 47, 47, 8, "A dark romance between mortals and immortals.", '978034337677', 371, "path"),
(48, 'My Brilliant Friend', 48, 48, 6, "An intimate portrayal of friendship and personal growth in Naples.", '978160450786', 331, "path"),
(49, 'The Name of the Wind', 49, 49, 2, "A richly imagined fantasy tale of magic and mystery.", '978075404079', 662, "path"),
(50, 'American Gods', 50, 50, 2, "A modern fantasy blending mythology with contemporary themes.", '9780062472106', 635, "path");


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

INSERT INTO lists (name, user_id, description) VALUES
('Sci-Fi Favorites', 1, 'A collection of the best sci-fi books.'),
('Fantasy Adventures', 2, 'Epic fantasy journeys.'),
('Mystery Novels', 3, 'Thrilling mystery stories.'),
('Biography Must-Reads', 1, 'Biographies you must read.'),
('Classic Literature', 2, 'Timeless classic books.'),
('Modern Fiction', 3, 'Stories from todays best authors.'),
('Historical Fiction', 1, 'Stories set in historical times.'),
('Self-Help and Wellness', 2, 'Books to improve yourself.'),
('Non-fiction Highlights', 3, 'Engaging non-fiction reads.'),
('Young Adult Series', 1, 'Popular young adult series.');

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