-- Goal

-- Write a SELECT statement to retrieve both rows inserted into the movies table.  Select both the title column and the box_office column.
-- CREATE TABLE movies (
--     title VARCHAR(60),
--     box_office INTEGER
-- );

INSERT INTO movies (title, box_office)
VALUES 
    ('The Avengers', 1500000000),
    ('Batman v Superman', 873000000);
    

-- WRITE YOUR SOLUTION BELOW THIS LINE!
SELECT title, box_office FROM movies;    