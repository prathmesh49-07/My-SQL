use imdb;
select * from movies;
#Basic movie analysis;
select count(*)as movie_count from movies;
select count(distinct Director)as unique_directors from movies;
select count(distinct Writer)as unique_writer from movies;
select avg(`Rating (Out of 10)`)as avg_rating from movies;
select max(`Rating (Out of 10)`)as highest_rating from movies;
select min(`Rating (Out of 10)`)as lowest_rating from movies;
select avg(`Runtime (Minutes)`)as avg_runtime from movies;
select Title,`Runtime (Minutes)` from movies order by `Runtime (Minutes)` desc limit 1;
select Title,`Runtime (Minutes)` from movies order by `Runtime (Minutes)`asc limit 1;
select sum(`Number of Ratings (in thousands)`) as total_number_of_rating from movies;
#rating analysis;
select title,`Rating (Out of 10)` from movies where `Rating (Out of 10)`>"8";
select title,`Rating (Out of 10)` from movies where `Rating (Out of 10)`<"5";
select title,`Rating (Out of 10)` from movies order by `Rating (Out of 10)` desc limit 10;
select title,`Rating (Out of 10)` from movies order by `Rating (Out of 10)`asc limit 10;
select count(title)as film_count from movies where `Rating (Out of 10)`>"7";
select count(title) as film_count from movies where `Rating (Out of 10)` between "6" and "7";
select `Release Year`,avg(`Rating (Out of 10)`) as avg_rating from movies group by `Release Year`;
select `Release Year`,`Rating (Out of 10)` from movies where `Rating (Out of 10)`>(select avg(`Rating (Out of 10)`) from movies)
 order by `Rating (Out of 10)` desc limit 1;
 select title,`Rating (Out of 10)` from movies where `Rating (Out of 10)`>(select avg(`Rating (Out of 10)`) from movies )
 order by `Rating (Out of 10)` desc ;
 select title,`Number of Ratings (in thousands)` from movies where `Number of Ratings (in thousands)`>"100 thousand";
 #Release year & runtime analysis;
 select count(title)as film_count,`Release Year` from movies group by `Release Year`;
 select count(title)as film_count ,`Release Year` from movies  group by `Release Year` order by film_count desc ;
 select count(title)as film_count,`Release Year` from movies group by `Release Year` order by film_count asc;
 select `Release Year`,avg(`Runtime (Minutes)`)as avg_runtime from movies group by `Release Year`;
 select `Release Year`,`Runtime (Minutes)` from movies where `Runtime (Minutes)`>(select avg(`Runtime (Minutes)`)from movies) 
 order by `Runtime (Minutes)`desc limit 1;
 select title,`Runtime (Minutes)` from movies where `Runtime (Minutes)`>150;
 select count(title)as movie_count from movies where`Runtime (Minutes)` between 90 and 120 ;
 select title,`Runtime (Minutes)`,`Rating (Out of 10)` from movies where `Runtime (Minutes)`>120 and `Rating (Out of 10)`>8;
 select title,`Release Year` from movies where`Release Year`>2020;
 select title,`Release Year` from movies where `Release Year` between 2015 and 2020;
 #directores and Writer analysis 
 use imdb;
 select count(title)as movie_count,Director from movies group by Director;
 select count(title)as movie_count ,Director from movies group by Director order by movie_count desc ;
 select Director,avg(`Rating (Out of 10)`)as avg_rating from movies group by Director;
 select Director,`Rating (Out of 10)` from movies where `Rating (Out of 10)`>7;
 select Director,`Rating (Out of 10)` from movies order by `Rating (Out of 10)` desc ;
 select count(Title),Writer from movies group by Writer;
 select count(Title)as movie_count,Writer from movies group by Writer order by movie_count desc ;
 select Director,count(*) as total_movies from movies group by Director having count(*)>3;
 select Director,avg(`Runtime (Minutes)`) as avg_runtime from movies group by Director;
 select Director,`Rating (Out of 10)` from movies where `Rating (Out of 10)`>(select avg(`Rating (Out of 10)`)from movies);
 
 #gener rating & financial analysis;
 select count(Title) as movies_count ,`Motion Picture Rating` from movies group by `Motion Picture Rating`;
 select count(Title)as movies_count ,`Motion Picture Rating` from movies group by `Motion Picture Rating` order by movies_count desc;
 select `Motion Picture Rating`,avg(`Rating (Out of 10)`)as avg_rating from movies group by `Motion Picture Rating`;
 select count(Title)as movie_count,`Main Genres` from movies group by `Main Genres`;
 select Title,sum(`Gross worldwide (in millions)`) as worldwild_gross from movies group by Title order by worldwild_gross desc;
 select Title,sum(`Gross in US & Canada (in millions)`)as gross_in_us_canada from movies group by Title
 order by gross_in_us_canada desc ;
 select `Release Year`,avg(`Gross worldwide (in millions)`)as avg_worldwild_gross from movies group by `Release Year`;
 select `Motion Picture Rating`,avg(`Gross worldwide (in millions)`)as avg_worldwild_gross from movies group by `Motion Picture Rating`;
 select Title,`Budget (in millions)` from movies where `Budget (in millions)`>100;
 select Title,`Budget (in millions)`,`Gross worldwide (in millions)` from movies where `Budget (in millions)`>0 and `Gross worldwide (in millions)`
 is not null order by `Gross worldwide (in millions)` desc limit 5;
 
 
 
 
 
 
 
 





