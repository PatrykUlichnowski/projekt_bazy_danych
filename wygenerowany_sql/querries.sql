SELECT b.title, a.first_name, a.last_name, b.description, b.publisher, i.cover_img_path, i.isbn_number
                from books b
                join authors a
                on b.author_id = a.id
                join isbn_num i 
                on b.id = i.book_id;

update isbn_num 
set cover_img_path = concat('./projekt_bazy/img/', isbn_number,'.png') 
where id < 100;

-- select username, password
-- from users

-- select l.name, l.description
-- from lists l
-- join users u
-- on l.user_id = u.id
-- where u.username = ;

SELECT l.name, l.description, count(ld.book_id) as counter
                from lists l
                join users u
                on l.user_id = u.id
                join lists_details ld
                on l.id = ld.list_id
                where l.id = 1
                group by l.name, l.description;

select * from lists_details;
select * from lists;

insert into lists_details (list_id)
VALUES (11);