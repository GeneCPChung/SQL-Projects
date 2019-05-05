
-- CONCAT
SELECT 
CONCAT(author_fname, ' ', author_lname)
FROM books;

SELECT  CONCAT(author_fname, ' ', author_lname) AS 'Full Name' FROM books;

SELECT author_fname AS first, author_lname AS last,
CONCAT(author_fname, ' ', author_lname) AS full
FROM books;

SELECT CONCAT_WS(' - ', title, author_fname, author_lname)
FROM books;


-- SUBSTRING
SELECT SUBSTRING('Hello World', 1, 4);

SELECT SUBSTRING('Hello World', -7);

SELECT title FROM books;

SELECT SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);

SELECT SUBSTRING(title, 1, 10) AS 'Short Title' FROM books;

SELECT CONCAT
(
SUBSTRING(title, 1, 10), '...'
)
AS 'Short Title'
FROM books;


-- REPLACE
SELECT REPLACE('Hello World', 'Hell', '%$#@');

SELECT REPLACE('Hello World', 'l', '7');

SELECT REPLACE('Hello World', 'o', '0');

SELECT REPLACE('HellO World', 'o', '*');

SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');

SELECT REPLACE(title, 'e', '3');

SELECT
    SUBSTRING(
        REPLACE(title, 'e', '3'),
        1,
        10
    ) AS 'THE 3s'
FROM books;


-- REVERSE
SELECT REVERSE('MEOW MEOW');

SELECT REVERSE(author_fname) FROM books;


SELECT CONCAT('woof', REVERSE('woof'));

SELECT CONCAT(author_fname, ' - ', REVERSE(author_fname)) FROM books;


-- CHAR_LENGTH
SELECT CHAR_LENGTH('Hello World');

SELECT
  CONCAT(author_lname, 'is', CHAR_LENGTH(author_lname), ' characters long')
FROM books;

-- UPPER AND LOWER
SELECT LOWER(title) FROM books;
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;






