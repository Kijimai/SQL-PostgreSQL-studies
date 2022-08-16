-- Selecting everything from a table
SELECT * FROM cities;

-- Selecting specific columns from a table
SELECT name, country FROM cities;
SELECT name, population FROM cities;

-- Selecting the same column multiple times
SELECT name, name, name FROM cities;