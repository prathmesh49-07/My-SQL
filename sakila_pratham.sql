
Use sakila ;
select count(*) as total_film from film;
select count(distinct title) as Unique_title from film ;
Select MIN(length) AS min_length , MAX(length) AS max_length ,round(AVG(length),2 )AS avg_length from film;
select MIN(rental_rate) as min_rentalrate, MAX(rental_rate) as max_rentalrate,round (AVG(rental_rate),2 )as avg_rentalrate from film;
select MIN(replacement_cost) as min_replacementcost , MAX(replacement_cost) AS max_replacementcost, round(AVG(replacement_cost),2) AS avg_replacementcost from film ;
select distinct rating from film;
select rating, count(*)as countby_rating  from film group by rating; 
select release_year , count(*)as countby_year from film group by release_year;
select rating, avg(length)as avg_length from film group by rating;
select rating , avg(rental_rate) as avg_rentalrate from film group by rating;
select rating , avg(replacement_cost)as avg_replacementcost from film group by rating ;
select rental_duration,count(*)as film_count from film group by rental_duration;
select  title , length from film where length=185;
select title , length from film where length=(select max(length)from film);
select title , length from film where length =(select min(length)from film );
select title, rental_rate from film where rental_rate=(select max(rental_rate)from film );
select title , length from film order by  length desc limit 10;
select title , length from film order by length asc limit 10;
select title, rental_rate from film order by rental_rate desc limit 10;
select title , replacement_cost from film order by replacement_cost desc limit 10;
select title , length from film where length >(select avg(length)from film) order by length desc;
select title, rental_rate from film where rental_rate>(select avg(rental_rate)from film ) order by  rental_rate desc;
select title, replacement_cost from film where replacement_cost> (select avg(replacement_cost)from film )order by replacement_cost desc;
select rental_duration ,avg(length)from film group by rental_duration;
select rental_duration, avg (rental_rate)from film group by rental_duration;
select rental_duration, avg (replacement_cost)from film group by rental_duration;
select rating, avg(length)from film group by rating order by avg(length) desc limit 1;
select rating , avg (rental_rate)from film group by rating order by avg(rental_rate) desc limit 1;
select rating , count(*) as film_count from film group by rating order by film_count desc limit 1;
select title , length, rental_rate from film where length >(select avg(length)from film )and rental_rate>(select avg(
    rental_rate)from film );
    use sakila;
    select title, length , replacement_cost from film where length> (select avg(length)from film) and replacement_cost >(select 
    avg(replacement_cost)from film);
select title , rental_rate , replacement_cost from film where rental_rate>(select avg(rental_rate)from film )and replacement_cost<
(select avg(replacement_cost)from film);
select rating , rental_duration ,avg (rental_rate)as avgrental_rate from film 
group by rating,rental_duration;
select rating , rental_duration , avg(length)as avg_length from film group by rating , rental_duration ;
use sakila;
select  rating , rental_duration , avg(replacement_cost)as avg_replacemenet from film group by rating ,rental_duration;
select rating,rental_duration,avg(rental_rate)as avg_rental from film group by rating ,rental_duration order by avg_rental desc limit 1;
select rating , rental_duration , avg(length)as avg_length from film group by rating, rental_duration order by avg_length desc limit 1;
select rating , rental_duration , avg(rental_rate)as avg_rental from film group by rating , rental_duration order by avg_rental desc limit 1;
select rating ,rental_duration , avg(length)as avg_length from film group by rating, rental_duration order by avg_length desc limit 1;
SELECT rating , min(length),max(length),max(length)-min(length) AS length_rang from film group by rating;
select rating , min(length), max(length),max(length)-min(length)as length_rang from film group by rating;
select title,rental_rate,length,(rental_rate/length)as rental_rate_per_min from film
order by rental_rate_per_min desc;
select title,rental_rate, length ,(rental_rate)as rental_rate_permin
from film order by rental_rate_permin desc  limit 10;
select title,replacement_cost,length,(replacement_cost/length)as replacement_cost_permin from film 
order by replacement_cost_permin desc limit 10;
select rating ,avg(rental_rate/length)as avg_rentalrate_permin from film group by rating order by avg_rentalrate_permin desc limit 1;
select rating , avg(replacement_cost /length)as avg_replacementcost_permin  from film group by rating order by avg_replacementcost_permin 
desc limit 1;
select case when length<90 then"short" when length between 90 and 120 then"med" else "long" end as category , count(*)as film_count from film group by 
category;
select case when rental_rate <2.55 then "low" when rental_rate between 2.55 and 3.55 then "med" else "long" end as rate_category ,
count(*) as rate_count
from film group by rate_category ;
select rating,case when length <90 then "short" when length between 90 and 120 then "med" else "long" end as category,count(*)as
 film_count from film group by rating , category;
select title , length , rental_rate from film where length>(select avg(length)from film )and rental_rate<(select(rental_rate)from film);










