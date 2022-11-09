SELECT COUNT(DISTINCT(LAST_NAME)) FROM sakila.actor;

SELECT COUNT(DISTINCT(LANGUAGE_ID)) FROM sakila.film;

SELECT COUNT(*) FROM sakila.film
WHERE rating like 'PG-13';

SELECT release_year, rental_duration FROM sakila.film
where release_year = '2006'
ORDER BY rental_duration DESC
Limit 10;

SELECT Datediff((max(rental_date)), (min(rental_date))) FROM sakila.rental;


SELECT rental_date, Extract(month from rental_date) as month_field,
DAYNAME(rental_date) as Weakday
FROM SAKILA.RENTAL;


select rental_date,
CASE DAYNAME(rental_date)
WHEN 'SATURDAY' THEN 'WEEKEND'
WHEN 'SUNDAY' THEN 'WEEKEND'
ELSE 'WEEKDAY'
END as 'day_type'
from sakila.rental;


SELECT COUNT(rental_id)
FROM rental
WHERE rental_date > '2006-01-01';


