create database MovieRating;
use MovieRating;
create table movie(
 mID int auto_increment primary key,
 title varchar(255),
 year varchar(255),
 director varchar(255)
);
create table reviewer(
rID int auto_increment primary key,
name varchar(255)
);
create table rating (
ratingID int primary key auto_increment,
rID int,
mID int,
foreign key (rID) references reviewer(rID),
foreign key (mID) references movie (mID),
star int,
ratingDate date
);
INSERT INTO reviewer (rID, name)
VALUES (201, 'Sarah Martinez'),
       (202, 'Daniel Lewis'),
       (203, 'Brittany Harris'),
       (204, 'Mike Anderson'),
       (205, 'Chris Jackson'),
       (206, 'Elizabeth Thomas'),
       (207, 'James Cameron'),
       (208, 'Ashley White');
       INSERT INTO rating (rID, mID, star,ratingdate)
VALUES (201, 101, 2, '2011-01-22'),
       (201, 101, 4, '2011-01-27'),
       (204, 101, 3, '2011-01-09'),
       (203, 103, 2, '2011-01-20'),
       (205, 103, 3, '2011-01-27'),
       (205, 104, 2, '2011-01-22'),
       (208, 104, 3, '2011-01-02'),
       (202, 106, 4, NULL),
       (206, 106, 5, '2011-01-19'),
       (206, 107, 3, '2011-01-15'),
       (207, 107, 5, '2011-01-20'),
       (203, 108, 2, '2011-01-30'),
       (203, 108, 4, '2011-01-12'),
       (205, 108, 4, NULL);
       INSERT INTO movie (mID, title, year, director)
VALUES (101, 'Gone with the Wind', 1939, 'Victor Fleming'),
       (102, 'Star Wars', 1977, 'George Lucas'),
       (103, 'The Sound of Music', 1965, 'Robert Wise'),
       (104, 'Ε.Τ.', 1982, 'Steven Spielberg'),
       (105, 'Titanic', 1997, 'James Cameron'),
       (106, 'Snow White', 1937, NULL),
       (107, 'Avatar', 2009, 'James Cameron'),
       (108, 'Raiders of the Lost Ark', 1981, 'Steven Spielberg');
       -- Ex1
       select title from movie where director ="Steven Spielberg";
       
       
       -- Ex2 
       select DISTINCT(year) from movie as m
       inner join rating as r on m.mId = r.mID where star between 4 and 5 ; 
       
       -- Ex3
       select title from movie as m 
       inner join rating as r on m.mID = r.mID where star = 0;
       
       -- Ex4 
       select distinct (name) from reviewer as review 
       inner join rating as rate on review.rID = rate.rID where ratingDate is null;
       
       -- Ex5
       -- order by name
       select name,star,title,ratingDate from rating as rate 
       inner join movie as m on rate.mID = m.mID 
       inner join reviewer as review on rate.rID = review.rID
       order by name;
       -- order by title
	   select name,star,title,ratingDate from rating as rate 
       inner join movie as m on rate.mID = m.mID 
       inner join reviewer as review on rate.rID = review.rID
       order by title;
	   -- order by star
	   select name,star,title,ratingDate from rating as rate 
       inner join movie as m on rate.mID = m.mID 
       inner join reviewer as review on rate.rID = review.rID
       order by star;
       
       -- Ex 6 
       select name from reviewer as review 
       inner join movie as m on r.mID = m.mID 
       inner join rating as r on review.rID = r.rID where name = "Gone with the Wind";
       
       
       -- lab3 
       
       
       -- Ex1
       
       show privileges;
       
       -- Ex2
       
       show databases;
       
       --  Ex3 
       select current_user();
       
       -- Ex 4 
      create user 'notvalsy'@'localhost' identified by'12345678';
      select user();
