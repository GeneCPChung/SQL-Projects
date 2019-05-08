{"filter":false,"title":"sec_12_one_to_many.sql","tooltip":"/section_12/sec_12_one_to_many.sql","undoManager":{"mark":4,"position":4,"stack":[[{"start":{"row":0,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["CREATE TABLE customers(","    id INT AUTO_INCREMENT PRIMARY KEY,","    first_name VARCHAR(100),","    last_name VARCHAR(100),","    email VARCHAR(100)",");"],"id":1}],[{"start":{"row":5,"column":2},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":6,"column":0},"end":{"row":7,"column":0},"action":"insert","lines":["",""]},{"start":{"row":7,"column":0},"end":{"row":8,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":7,"column":0},"end":{"row":13,"column":2},"action":"insert","lines":["CREATE TABLE orders(","    id INT AUTO_INCREMENT PRIMARY KEY,","    order_date DATE,","    amount DECIMAL(8,2),","    customer_id INT,","    FOREIGN KEY(customer_id) REFERENCES customers(id)",");"],"id":3}],[{"start":{"row":14,"column":0},"end":{"row":15,"column":0},"action":"insert","lines":["",""],"id":4}],[{"start":{"row":15,"column":0},"end":{"row":27,"column":33},"action":"insert","lines":["INSERT INTO customers (first_name, last_name, email) ","VALUES ('Boy', 'George', 'george@gmail.com'),","       ('George', 'Michael', 'gm@gmail.com'),","       ('David', 'Bowie', 'david@gmail.com'),","       ('Blue', 'Steele', 'blue@gmail.com'),","       ('Bette', 'Davis', 'bette@aol.com');","       ","INSERT INTO orders (order_date, amount, customer_id)","VALUES ('2016/02/10', 99.99, 1),","       ('2017/11/11', 35.50, 1),","       ('2014/12/12', 800.67, 2),","       ('2015/01/03', 12.50, 2),","       ('1999/04/11', 450.25, 5);"],"id":5}]]},"ace":{"folds":[],"scrolltop":122,"scrollleft":0,"selection":{"start":{"row":14,"column":0},"end":{"row":14,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":4,"state":"start","mode":"ace/mode/sql"}},"timestamp":1557201587590,"hash":"83607a3357fd191fe3892f0d7ca90187546df560"}