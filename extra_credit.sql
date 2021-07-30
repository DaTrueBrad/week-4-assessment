-- artist table
-- #1
select * from artist
where name like 'M%'
order by name desc
limit 10;
-- #2
select * from artist
where name like 'Black%'

-- #3
select * from artist
where name like '%Black%';
-- employee table
-- #1
select birth_date from employee
order by birth_date desc
limit 1;
-- #2
select birth_date from employee
order by birth_date asc
limit 1;
-- invoice table
-- #1
select count(*) from invoice
where billing_state in ('CA', 'TX', 'AZ');
-- #2
select avg(total) from invoice;
-- more join queries 
-- #1
select pt.track_id from playlist_track pt
join playlist p
on pt.playlist_id = p.playlist_id
where p.name = 'Music';
-- #2
select t.name from track t
join playlist_track p
on t.track_id = p.track_id
where p.playlist_id = 5;
-- #3
select t.name as track_name,
p.name as playlist_name
from track t
join playlist_track pt
on t.track_id = pt.track_id
join playlist p
on pt.playlist_id = p.playlist_id
-- #4
select t.name as track_name,
a.title as album_title
from album a
join track t
on a.album_id = t.album_id
join genre g
on t.genre_id = g.genre_id
where g.name = 'Alternative & Punk'