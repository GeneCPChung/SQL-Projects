--FIND THE 5 OLDEST USERS
SELECT * 
FROM users
ORDER BY created_at ASC LIMIT 5;

--WHAT DAY OF THE WEEK DO MOST USERS REGISTER ON
SELECT
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;


--IDENTIFY INACTIVE USERS
SELECT *
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;













