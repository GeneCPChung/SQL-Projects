CREATE TABLE cats
(
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
);

SELECT * FROM cats WHERE cat_id;

DELETE FROM cats WHERE age=4;

DELETE FROM cats WHERE age=cat_id;