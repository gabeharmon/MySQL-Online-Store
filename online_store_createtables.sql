CREATE DATABASE online_store_final;
USE online_store_final;

CREATE TABLE users (
user_id INT PRIMARY KEY,
username VARCHAR(100) UNIQUE,
email VARCHAR(100) UNIQUE,
password VARCHAR(100),
full_name VARCHAR(100)
);


CREATE TABLE categories (
category_id INT PRIMARY KEY,
category_name VARCHAR(100)
);


CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(10, 2),
quantity INT,
category_id INT,
FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


CREATE TABLE orders (
order_id INT PRIMARY KEY,
user_id INT,
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) REFERENCES users(user_id)
);


CREATE TABLE reviews (
review_id INT PRIMARY KEY,
user_id INT,
product_id INT,
rating INT,
review_text TEXT,
review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO users (user_id, username, email, password, full_name) VALUES
(1, 'bob_barker', 'barkerbob@gmail.com', 'bobspassword123', 'Bob Barker'),
(2, 'jjstacy', 'jjstacy@aol.com', 'jjjj456', 'Jen Stacy'),
(3, 'ryanreynolds', 'ryanreynolds@gmail.com', 'ryanryanryan', 'Ryan Reynolds'),
(4, 'jimjones24', 'jimjones@outlook.com', 'BIGDOG224', 'Jim Jones'),
(5, 'dillonbrooks', 'ddillonbbrooks@gmail.com', 'LetMeIn', 'Dillon Brooks');


INSERT INTO categories (category_id, category_name) VALUES
(1, 'Clothing'),
(2, 'Workout'),
(3, 'Home'),
(4, 'Garden'),
(5, 'Toys');


INSERT INTO products (product_id, product_name, price, quantity, category_id) VALUES
(1, 'Hat', 999.99, 50, 1),
(2, 'Massage Gun', 19.99, 100, 2),
(3, 'Book Light', 9.99, 200, 3),
(4, 'Hammock', 29.99, 30, 4),
(5, 'Stress Ball', 39.99, 50, 5);


INSERT INTO orders (order_id, user_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


INSERT INTO reviews (review_id, user_id, product_id, rating, review_text) VALUES
(1, 1, 1, 5, 'Great hat, fits well!'),
(2, 2, 2, 4, 'Worked pretty well. Soreness gone.'),
(3, 3, 3, 3, 'A bit flimsy at the base...'),
(4, 4, 4, 5, 'Very comfortable!'),
(5, 5, 5, 4, 'Helps me reduce stress at work.');