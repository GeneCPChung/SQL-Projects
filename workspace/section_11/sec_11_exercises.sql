SELECT 10 != 10;
--FALSE

SELECT 15> 14 && 99 - 5 <= 94;
--TRUE

SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;
--TRUE

SELECT * FROM books WHERE released_year < 1980;

SELECT title FROM books WHERE author_lname = 'Eggers' || author_lname = 'Chabon';

SELECT title FROM books WHERE author_lname = 'Lahiri' && released_year > 2000;

SELECT title, pages AS pages FROM books WHERE pages BETWEEN 100 AND 200;

SELECT title FROM books WHERE author_lname = 'Eggers' || author_lname = 'Chabon';

SELECT author_fname, author_lname, title FROM books WHERE author_lname LIKE 'C%' || author_lname LIKE 'S%';

SELECT title, author_lname,
        CASE
            WHEN title LIKE '%stories%' THEN 'Short Stories'
            WHEN title LIKE '%Just Kids%' || title LIKE '%A Heartbreaking Work%' THEN 'Memoir'
            ELSE 'Novel'
        END AS TYPE
FROM books;

SELECT author_fname, author_lname, 
    CASE
        WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*),' book') 
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books
GROUP BY author_lname, author_fname;


















