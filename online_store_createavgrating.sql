CREATE VIEW product_avg_rating AS
SELECT products.product_id, products.product_name, AVG(reviews.rating) AS average_rating
FROM products
LEFT JOIN reviews ON products.product_id = reviews.product_id
GROUP BY products.product_id, products.product_name
ORDER BY average_rating DESC;

