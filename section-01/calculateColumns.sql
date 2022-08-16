-- Calculations on existing data, sends back an ?columnname?
SELECT name, (population / area) FROM cities;

-- renaming a calculated column
SELECT name, (population / area) AS population_density
FROM cities;
