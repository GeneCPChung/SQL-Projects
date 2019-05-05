-- Disticnt
-- SELECT DISTINCT author_lname FROM books;

-- SELECT CONCAT(author_fname, ' ', author_lname) FROM books;

-- SELECT DISTINCT author_fname, author_lname FROM books;


-- Order By
-- SELECT author_lname FROM books ORDER BY author_lname;

-- SELECT title FROM books ORDER BY title;

-- SELECT released_year FROM books ORDER BY released_year DESC;

-- SELECT title, released_year, pages FROM books ORDER BY  released_year;

-- SELECT title, released_year, pages FROM books ORDER BY  released_year DESC;

-- SELECT title, author_fname, author_lname FROM books ORDER BY 2;

-- SELECT title FROM  books LIMIT 5;

-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

-- SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,5;

-- Like '% %'
-- SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
 
-- SELECT title FROM books WHERE  title LIKE 'the';
 
-- SELECT title FROM books WHERE  title LIKE '%the';
 
-- SELECT title FROM books WHERE title LIKE '%the%';

-- Like "___"
-- SELECT title, stock_quantity FROM books;
     
-- SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
     
-- SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
     
-- (235)234-0987 LIKE '(___)___-____'
     
-- SELECT title FROM books;
     
-- SELECT title FROM books WHERE title LIKE '%\%%'
     
-- SELECT title FROM books WHERE title LIKE '%\_%'










