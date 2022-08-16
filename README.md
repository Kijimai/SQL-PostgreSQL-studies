# SQL and PostgreSQL

## - Simple but Powerful - SQL Statements

### Database Design

Questions to ask ourselves:

- What kind of <i>thing</i> are we storing?
- What properties does this thing have?
- What <i>type</i> of data does each of those properties contain?

i.e.

- Storing a list of cities
- Each city has a name, country, population and area
- Types of data:

<table>
  <tbody>
    <tr>
      <td>
        Name
      </td>
      <td>
        string
      </td>
   </tr>
    <tr>
      <td>
        Country
      </td>
      <td>
        string
      </td>
    </tr>
    <tr>
      <td>
        Population
      </td>
      <td>
        number
      </td>
    </tr>
    <tr>
      <td>
        Area
      </td>
      <td>
        number
      </td>
    </tr>
  </tbody>
</table>

### <b>Analyzing CREATE TABLE</b>

Keywords: CREATE, TABLE
<br>Identifier: cities

- Tell the database what we want to do something. Always written out in capital letters.
- Tell the database what thing we want to act on. Always written out in lower case letters.

```SQL
CREATE TABLE cities(
	name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
)
```

### Column Data Types

- VARCHAR(50)
  - Variable length character. Text. If we put in a string longer than 50 characters, we'll get an error.
- INTEGER
  - Number without a decimal. -2,147,483,647 to 2,147,483,647
    (Anything larger or smaller will give an error!)

### Calculations on columns

Show the name of the cities and the population density from the cities table.
Population is divided by area and shown as a new column called population_density with the updated data.

```SQL
SELECT name, (population / area) AS population_density
FROM cities;
```

### String Operations and Functions

Existing String Functions:

- || (Join two strings)
- CONCAT() Join two strings
- LOWER() Gives a lower case string
- LENGTH() Gives a number of a character in a string
- UPPER() Gives an upper case string

```SQL
-- Unspaced concatenation (output example: TokyoJapan)
SELECT (name || country) AS column_rename_here
FROM cities;
-- With a comma and a space, (output example: Tokyo, Japan)
SELECT (name || ', ' || country) AS column_rename_here
FROM cities;

-- With the CONCAT() operation
SELECT CONCAT(name, country) AS location
FROM cities;

-- With spacing
SELECT CONCAT(name,', ',country) AS location
FROM cities;

-- With capitalization on the names
SELECT CONCAT(UPPER(name),', ',UPPER(country)) AS location
FROM cities;

--With lowercase
SELECT CONCAT(LOWER(name),', ',LOWER(country)) AS location
FROM cities;

-- Length shows the length of a string, (output: length of the row item)
SELECT LENGTH(name) FROM cities;
```

### Filtering Records
