select * 
from
lists;

update books 
set cover_img_path = concat('./img/', id,'.png') 
where id < 100;

SELECT l.name, l.description
                from lists l
                join users u
                on l.user_id = u.id
                where u.username = 'user1'
                group by l.name, l.description;
                
select * from users;

SELECT b.title, a.first_name, a.last_name, b.description, p.name, b.cover_img_path
                    from books b
                    join authors a
                    on b.author_id = a.id
                    join publishers p
                    on b.publisher_id = p.id
                    where LOWER(b.title) LIKE CONCAT('%','harry','%');
 
select * from lists; 
SELECT b.title, b.description, b.cover_img_path, 
                            p.name as publisher, g.name as genre, a.first_name, a.last_name
                    from lists l
                    join books_list bl
                    on l.id = bl.list_id
                    join books b
                    on bl.book_id = b.id
                    join publishers p
                    on b.publisher_id = p.id
                    join genres g
                    on b.genre_id = g.id
                    join authors a
                    on b.author_id = a.id
                    where l.name = 'Sci-Fi Favorites'