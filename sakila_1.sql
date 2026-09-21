use sakila;
select count(*)as total_count from film;
select count(distinct title)as unique_count from film;
select min(length)as min_length,max(length)as max_length ,round(avg(length),2)as avg_length from film ;
select min(rental_rate)as min_rental ,max(rental_rate)as max_rental,avg(rental_rate)as avg_rental from film;
select min(replacement_cost)as min_replacement,max(replacement_cost)as max_replacement, avg(replacement_cost)as avg_replacement from film;
select distinct rating from film;
select rating,count(*) as film_count from film group by rating;
select release_year,count(*)as film_year from film group by release_year;
select rating,avg(length)from film group by rating;
select rating, avg(rental_rate)from film group by rating;
select rating ,AVG(replacement_cost)from film group by rating;
select rental_duration ,count(*) as film_count from film group by rental_duration;
select title,length from film where length=(select max(length)from film);
select title,length from film where length=(select min(length)from film);
select title,rental_rate from film where rental_rate=(select max(rental_rate)from film);
select title , length from film order by length desc limit 10;
select title,length from film order by length asc limit 10;
select title,rental_rate from film order by rental_rate desc limit 10;
select title,replacement_cost from film order by replacement_cost desc limit 10;
select title , rental_rate from film order by rental_rate asc limit 10;
select title ,length from film where  length >(select avg(length)from film);
select title,rental_rate from film where rental_rate>(select avg(rental_rate)from film);
select title,replacement_cost from film where replacement_cost>(select avg(replacement_cost)from film);
select  rental_duration,avg(rental_rate)from film group by rental_duration;
select rental_duration ,avg(length)from film group by rental_duration;
select rental_duration,avg(replacement_cost)from film group by rental_duration;
select rating,avg(length)from film group by rating order by rating   desc limit 1;
select rating,avg(rental_rate)from film group by rating order by rating desc limit 1;
select rating , avg(replacement_cost)from film group by rating order by rating desc limit 1;
select rating ,count(*) as fim_count from film group by rating order by rating desc limit 1;
select title ,length,rental_rate from film where length>(select avg(length)from film) and rental_rate>(select avg(rental_rate)from film);
select title , length , replacement_cost from film where length>(select avg(length)from film)and
 replacement_cost>(select avg(replacement_cost)from film )limit 1;
 select title , rental_rate,replacement_cost from film 
 where rental_rate>(select avg(rental_rate)from film)and replacement_cost<(select avg(replacement_cost)from film) limit 1;
 select title,rental_rate,replacement_cost from film where rental_rate <(select avg(rental_rate)from film)
 and replacement_cost>(select avg(replacement_cost)from film) limit 1;
 select rating,rental_duration,avg(rental_rate) as avg_rental from film group by rating,rental_duration order by avg_rental desc limit 1;
 select rating ,rental_duration ,avg(length)as avg_length from film group by rating ,rental_duration order by avg_length desc limit 1;
 select rating,max(length),min(length), max(length)-min(length) as length_range from film group by rating ;
 select title , length , rental_rate,(rental_rate/length) as rental_rate_permin from film order by rental_rate_permin desc limit 1;
 select title , length,rental_rate ,(rental_rate/length)as rental_rate_permin from film order by rental_rate_permin desc limit 10;
 select title , length ,replacement_cost,(replacement_cost/length)as replacement_cost_permin  from film 
 order by replacement_cost_permin desc limit 10;
 select rating , avg(rental_rate/length)as avg_rental_permin from film group by rating order by avg_rental_permin desc limit 1;
 select rating ,avg(replacement_cost/length)as avg_replacement_cost_permin from film group by rating order by avg_replacement_cost_permin 
 desc limit 1;
 select rating, case when length=90 then "short"  when length between 90 and 120 then "midium" else "long"end category, count(*) as film_count
  from film group by rating ,category;
  select rental_rate ,case when rental_rate=1.99 then "low"when rental_rate between 1.99 and 2.98 then "midium"else "high" end category
  ,count(*) as film_count from film  group by rental_rate order by category ;
select rating,length ,avg(length)as avg_length from film group by rating ,length order by avg_length desc limit 1;
select rental_rate ,title , length  from film where length >(select avg(length)from film)and rental_rate<(select avg(rental_rate)from film) ;
select rating ,count(*)as film_count ,avg(length)as avg_length,avg(rental_rate)as avg_length,avg(replacement_cost) from film group by rating 
order by rating;








