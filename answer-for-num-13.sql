Problem 13
----------

The query below shows some brand information about each model 
in the models table whose brand has been discontinued.

  SELECT b.name,
         m.name,
         m.year,
         b.discontinued
  FROM models AS m
    LEFT JOIN brands AS b
      ON m.brand_name = b.name
  WHERE b.discontinued IS NOT NULL
  ORDER BY b.name, m.name, m.year;

Task: Modify the query to add another field to the results that gives 
the number of years from the year of the model until the brand becomes 
discontinued.

Display this new field with the name years_until_brand_discontinued. The correct
result set is:

    name    |       name       | year | discontinued | years_until_brand_discontinued
------------+------------------+------+--------------+--------------------------------
 Austin     | Mini             | 1959 |         1987 |                             28
 Austin     | Mini             | 1963 |         1987 |                             24
 Austin     | Mini Cooper      | 1961 |         1987 |                             26
 Austin     | Mini Cooper      | 1964 |         1987 |                             23
 Austin     | Mini Cooper S    | 1963 |         1987 |                             24
 Fairthorpe | Rockette         | 1960 |         1976 |                             16
 Hillman    | Minx Magnificent | 1950 |         1981 |                             31
 Plymouth   | Fury             | 1964 |         2001 |                             37
 Pontiac    | Bonneville       | 1964 |         2010 |                             46
 Pontiac    | GTO              | 1964 |         2010 |                             46
 Pontiac    | Grand Prix       | 1962 |         2010 |                             48
 Pontiac    | Grand Prix       | 1963 |         2010 |                             47
 Pontiac    | Grand Prix       | 1964 |         2010 |                             46
 Pontiac    | LeMans           | 1964 |         2010 |                             46
 Pontiac    | Tempest          | 1961 |         2010 |                             49
 Rambler    | Classic          | 1963 |         1969 |                              6
 Studebaker | Avanti           | 1961 |         1967 |                              6
 Studebaker | Avanti           | 1962 |         1967 |                              5
 Studebaker | Avanti           | 1963 |         1967 |                              4
 Studebaker | Avanti           | 1964 |         1967 |                              3
(20 rows)



--------------------------------------------------------------------------------------------------------------
-- MY ANSWER --

SQL [13]> SELECT b.name, m.name, m.year, b.discontinued, b.discontinued - m.year AS years_until_brand_discontinued
... [13]> FROM models AS m
... [13]> LEFT JOIN brands AS b ON m.brand_name = b.name
... [13]> WHERE b.discontinued IS NOT NULL
... [13]> ORDER BY b.name, m.name, m.year;

    name    |       name       | year  | discontinued | years_until_brand_discontinued 
------------+------------------+-------+--------------+--------------------------------
 Austin     | Mini             |  1959 |         1987 |                             28 
 Austin     | Mini             |  1963 |         1987 |                             24 
 Austin     | Mini Cooper      |  1961 |         1987 |                             26 
 Austin     | Mini Cooper      |  1964 |         1987 |                             23 
 Austin     | Mini Cooper S    |  1963 |         1987 |                             24 
 Fairthorpe | Rockette         |  1960 |         1976 |                             16 
 Hillman    | Minx Magnificent |  1950 |         1981 |                             31 
 Plymouth   | Fury             |  1964 |         2001 |                             37 
 Pontiac    | Bonneville       |  1964 |         2010 |                             46 
 Pontiac    | Grand Prix       |  1962 |         2010 |                             48 
 Pontiac    | Grand Prix       |  1963 |         2010 |                             47 
 Pontiac    | Grand Prix       |  1964 |         2010 |                             46 
 Pontiac    | GTO              |  1964 |         2010 |                             46 
 Pontiac    | LeMans           |  1964 |         2010 |                             46 
 Pontiac    | Tempest          |  1961 |         2010 |                             49 
 Rambler    | Classic          |  1963 |         1969 |                              6 
 Studebaker | Avanti           |  1961 |         1967 |                              6 
 Studebaker | Avanti           |  1962 |         1967 |                              5 
 Studebaker | Avanti           |  1963 |         1967 |                              4 
 Studebaker | Avanti           |  1964 |         1967 |                              3 
(20 rows)

(results do not match answer)