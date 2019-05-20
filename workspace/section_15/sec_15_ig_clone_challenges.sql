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
SELECT username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;


--WHO GOT THE MOST LIKES
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;


--AVERAGE USER POSTINGS
SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS Avg;
    

--TOP 5 MOST USED HASHTAGS
SELECT 
    tags.tag_name,
    COUNT(*) AS total
FROM photo_tags
JOIN tags
    ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

--FINDING BOTS

SELECT 
    username,
    COUNT(*) as num_likes
FROM users
INNER JOIN likes
    ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING num_likes = (SELECT COUNT(*) FROM photos);
    








































