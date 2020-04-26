-- SELECT *
-- FROM invoice i
-- JOIN invoice_line il ON il.invoice_id = i.invoice_id
-- WHERE il.unit_price > 0.99;

-- SELECT i.invoice_date, c.first_name, c.last_name, i.total
-- FROM invoice i
-- JOIN customer c ON i.customer_id = c.customer_id;

-- SELECT c.first_name, c.last_name, e.first_name, e.last_name
-- FROM customer c
-- JOIN employee e ON c.support_rep_id = e.employee_id;

-- SELECT al.title, ar.name
-- FROM album al
-- JOIN artist ar ON al.artist_id = ar.artist_id;

-- SELECT pt.track_id
-- FROM playlist_track pt
-- JOIN playlist p ON p.playlist_id = pt.playlist_id
-- WHERE p.name = 'Music';

-- SELECT t.name
-- FROM track t
-- JOIN playlist_track pt ON pt.track_id = t.track_id
-- WHERE pt.playlist_id = 5;

-- SELECT t.name, p.name
-- FROM track t
-- JOIN playlist_track pt ON t.track_id = pt.track_id
-- JOIN playlist p ON pt.playlist_id = p.playlist_id;

-- SELECT t.name, a.title
-- FROM track t
-- JOIN album a ON t.album_id = a.album_id
-- JOIN genre g ON g.genre_id = t.genre_id
-- WHERE g.name = 'Alternative & Punk';

-- SELECT *
-- FROM invoice
-- WHERE invoice_id IN ( SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99 );

-- SELECT *
-- FROM playlist_track
-- WHERE playlist_id IN (SELECT playlist_id FROM playlist WHERE name = 'Music';

-- SELECT name
-- FROM track
-- WHERE track_id IN ( SELECT track_id FROM playlist_track WHERE playlist_id = 5 );

-- SELECT *
-- FROM track
-- WHERE genre_id IN ( SELECT genre_id FROM genre WHERE name = 'Comedy' );

-- SELECT *
-- FROM track
-- WHERE album_id IN ( SELECT album_id FROM album WHERE title = 'Fireball' );

-- SELECT *
-- FROM track
-- WHERE album_id IN ( 
--   SELECT album_id FROM album WHERE artist_id IN ( 
--     SELECT artist_id FROM artist WHERE name = 'Queen'
--   )
-- ); 

-- UPDATE customer
-- SET fax = null
-- WHERE fax IS NOT null;

-- UPDATE customer
-- SET company = 'Self'
-- WHERE company IS null;

-- UPDATE customer 
-- SET last_name = 'Thompson' 
-- WHERE first_name = 'Julia' AND last_name = 'Barnett';

-- UPDATE customer
-- SET support_rep_id = 4
-- WHERE email = 'luisrojas@yahoo.cl';

-- UPDATE track
-- SET composer = 'The darkness around us'
-- WHERE genre_id = ( SELECT genre_id FROM genre WHERE name = 'Metal' )
-- AND composer IS null;

-- SELECT COUNT(*), g.name
-- FROM track t
-- JOIN genre g ON t.genre_id = g.genre_id
-- GROUP BY g.name;

-- SELECT COUNT(*), g.name
-- FROM track t
-- JOIN genre g ON g.genre_id = t.genre_id
-- WHERE g.name = 'Pop' OR g.name = 'Rock'
-- GROUP BY g.name;

-- SELECT ar.name, COUNT(*)
-- FROM album al
-- JOIN artist ar ON ar.artist_id = al.artist_id
-- GROUP BY ar.name;

-- SELECT DISTINCT composer
-- FROM track;

-- SELECT DISTINCT billing_postal_code
-- FROM invoice;

-- SELECT DISTINCT company
-- FROM customer;

-- CREATE TABLE practice_delete ( name TEXT, type TEXT, value INTEGER );
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'bronze', 50);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'bronze', 50);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'bronze', 50);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'silver', 100);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'silver', 100);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);
-- INSERT INTO practice_delete ( name, type, value ) VALUES ('delete', 'gold', 150);

-- SELECT * FROM practice_delete;

-- DELETE 
-- FROM practice_delete 
-- WHERE type = 'bronze';

-- DELETE 
-- FROM practice_delete 
-- WHERE type = 'silver';

-- DELETE 
-- FROM practice_delete 
-- WHERE value = 150;

-- create table users (
--   id serial primary key,
--   name VARCHAR(50),
--   email varchar(100)
-- );
-- create table products (
-- 	id serial primary key,
--   name VARCHAR(100),
--   price numeric
-- );

-- create table orders (
-- 	id serial primary key,
--   product int references products(id)
-- );

-- insert into users (name, email) values ('mchale', 'mchale@me.com');
-- insert into users (name, email) values ('mchalepage', 'mchalepage@me.com');
-- insert into users (name, email) values ('mchalemp', 'mchale@page.com');

-- insert into products (name, price) values ('almonds', 3);
-- insert into products (name, price) values ('almond milk', 4);
-- insert into products (name, price) values ('almond butter', 6);

-- insert into orders (product) values (1);
-- insert into orders (product) values (2);
-- insert into orders (product) values (3);

-- select * from orders where id = 1;
-- select * from orders;

-- select
-- 	SUM(product) from orders as total where id = 2;

-- alter table users
-- add column orders_id int references orders(id);

-- alter table orders
-- add column user_id int references users(id);

-- select * from orders
-- where user_id = 1;

-- select
-- sum(orders_id) from users as total;