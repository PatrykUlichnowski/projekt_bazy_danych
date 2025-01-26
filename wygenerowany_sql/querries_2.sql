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
                
select * from books;