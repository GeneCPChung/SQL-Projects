-- Count
SELECT COUNT(*) FROM books;

SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

SELECT title FROM books WHERE title LIKE '%the%';

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

-- GROUP BY
SELECT title, author_lname FROM books GROUP BY author_lname;

SELECT title, author_lname, COUNT(*) FROM books GROUP BY author_lname;

SELECT title, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

SELECT released_year FROM books;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year
FROM books GROUP BY released_year;

-- MIN / MAX
SELECT MIN(released_year) FROM books;

SELECT MIN(pages) FROM books;

SELECT MAX(released_year) FROM books;

SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages)
                FROM books);
--Alternate solution to above
SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

--MIN / MAX with GROUP BY
SELECT author_fname, author_lname, MIN(released_year)
FROM books GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, MAX(pages)
FROM books GROUP BY author_fname, author_lname;

SELECT
    CONCAT(author_fname, ' ', author_lname) AS author,
    MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
        author_fname;
        
--SUM
SELECT SUM(pages) FROM books;

SELECT SUM(released_year) FROM books;

SELECT author_fname, author_lname, SUM(pages)
FROM books
GROUP BY author_lname, author_fname;

--AVG
SELECT AVG(released_year) FROM books;

SELECT AVG(stock_quantity)
FROM books
GROUP BY released_year;

SELECT released_year,
AVG(stock_quantity)
FROM books
GROUP BY released_year;

SELECT author_fname, author_lname
AVG(pages)
FROM books
GROUP BY author_lname, author_fname;











































