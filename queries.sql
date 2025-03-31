--Movie tuples
SELECT Title
FROM Movie
/
--Actor tuples
select name
from actor
/
--id of Kevin Bacon
select actorid
from actor 
where name = 'Kevin Bacon'
/
--list of movies that have scores greater than 7.0
select title
from movie 
where score >7.0
/
--list of movies that has a vote between 3k - 4k 
select title
from movie
where votes >= 3000
    and votes <=4000
/
--list of movies that have scores greater than 7.0 or year greater than 1990
select title
from movie 
where score >7.0
	or year >1990
/
--List of actors who are cast in movies that have scores greater than 7.0
select distinct actorid
from casting
where movieid in (
    select movieid
    from movie
    where score > 7.0
)
/
-- list movieid that have the cast Kevin Bacon
select movieid
from casting
where actorid in (
    select actorid
    from actor
    where name = 'Kevin Bacon'
)
/
-- list the titles of all the movies that cast the actor Kevin Bacon
select title
from movie
where movieid in (
    select movieid
    from casting
    where actorid = (
        select actorid
        from actor
        where name = 'Kevin Bacon'
    )
)

