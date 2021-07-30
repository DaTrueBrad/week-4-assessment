-- Artist table
-- #1
insert into artist(
  name
) values (
  'Stuart'
), (
  'Adam'
), (
  'Richard'
);
-- #2
select * from artist
limit 5;
-- Employee Table
-- #1
select first_name, last_name from employee
where lower(city) = lower('Calgary');
-- #2
select first_name, last_name from employee
where reports_to in (
  select employee_id from employee
  where first_name = 'Nancy' and last_name = 'Edwards'
);
-- #3
select count(city) from employee
where lower(city) = lower('Lethbridge');
-- invoice Table
-- #1
select count(billing_country) from invoice
where lower(billing_country) = lower('USA');
-- #2
select total from invoice
order by total desc
limit 1;
-- #3
select total from invoice
order by total
limit 1;
-- #4
select * from invoice
where total > 5;
-- #5
select count(*) from invoice
where total < 5;
-- #6
select sum(total) from invoice;
-- Join Queries
-- #1
select i.invoice_id from invoice i
join invoice_line il
on i.invoice_id = il.invoice_id
where il.unit_price > 0.99;
-- #2
select i.invoice_date, c.first_name, c.last_name from invoice i
join customer c
on i.customer_id = c.customer_id
-- #3
select e.first_name as support_first_name,
e.last_name as support_last_name,
c.first_name as customer_first_name,
c.last_name as customer_last_name
from employee e
join customer c
on e.employee_id = c.support_rep_id;
-- #4
select al.title, ar.name from album al
join artist ar
on al.artist_id = ar.artist_id