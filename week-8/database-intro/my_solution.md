1) SELECT * FROM states;

2) SELECT * FROM regions;

3)SELECT state_name, population FROM states;

4)SELECT state_name, population FROM states ORDER BY population DESC;

5) SELECT state_name FROM states WHERE region_id = 7;

6)50 ORDER BY population_density ASC;

7) SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;

8) SELECT state_name, region_id FROM states ORDER BY region_id ASC;

9) SELECT region_name FROM regions WHERE region_name LIKE '%Central';

10)SELECT regions.region_name, states.state_name

   ...> FROM regions

   ...> INNER JOIN states

   ...> ON regions.id=states.region_id

   ...> ORDER BY region_id ASC;

###What are databases for?
  The are collections of data that are organized and stored for access, managed, and updated.
###What is a one-to-many relationship?
    When one or two things in a database have tomany relations within a database.

###What is a primary key? What is a foreign key? How can you determine which is which?
  Primary Key is a unique id that every database will have. Foreign key will be in a different
  table but it refers to the table that has the primary key. It helps prevent a distrubtion in
  from one table to the next. Also the foreign key will have and id that points to the primary.

###How can you select information out of a SQL database? What are some general guidelines for that? Some of the framework used to pull data are: SELECT/  SELECT *(for select all)/  SELECT FROM ORDER BY/ SELECT FROM WHERE AND|OR/  and many more. The idea is that you are almost speaking
to the computer. If you are asked to get something, you should almost be able to type that into
the system.

