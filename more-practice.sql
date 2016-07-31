-- Include your solutions to the More Practice problems in this file.



-- INSERT

cars=# BEGIN;
BEGIN
cars=# INSERT INTO models (year, brand_name, name) VALUES (2015, 'Chevrolet', 'Malibu');
INSERT 0 1
cars=# INSERT INTO models (year, brand_name, name) VALUES (2015, 'Subaru', 'Outback');
INSERT 0 1
cars=# COMMIT;
COMMIT


cars=# SELECT * FROM models WHERE year = 2015;
 id | year | brand_name |  name   
----+------+------------+---------
 48 | 2015 | Chevrolet  | Malibu
 49 | 2015 | Subaru     | Outback
(2 rows)




-- CREATE TABLE

cars=# CREATE TABLE awards(
cars(# id SERIAL PRIMARY KEY,
cars(# name VARCHAR(40) NOT NULL,
cars(# year INTEGER NOT NULL,
cars(# winner_id INTEGER
cars(# );
CREATE TABLE


cars=# \dt
         List of relations
 Schema |  Name  | Type  |  Owner  
--------+--------+-------+---------
 public | awards | table | vagrant
 public | brands | table | vagrant
 public | models | table | vagrant
(3 rows)




-- More INSERT

cars=# BEGIN;
BEGIN
cars=# INSERT INTO awards (name, year, winner_id) VALUES ('IIHS Safety Award', 2015, 49);
INSERT 0 1
cars=# INSERT INTO awards (name, year, winner_id) VALUES ('IIHS Safety Award', 2015, 50);
INSERT 0 1
cars=# COMMIT;
COMMIT


cars=# SELECT * FROM awards;
 id |       name        | year | winner_id 
----+-------------------+------+-----------
  1 | IIHS Safety Award | 2015 |        49
  2 | IIHS Safety Award | 2015 |        50
(2 rows)




