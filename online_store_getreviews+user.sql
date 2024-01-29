CREATE VIEW reviews_plus_user AS
SELECT reviews.review_id, reviews.review_date, users.full_name AS reviewer_name, products.product_name, reviews.rating, reviews.review_text
FROM reviews
JOIN users ON reviews.user_id = users.user_id
JOIN products ON reviews.product_id = products.product_id
ORDER BY reviews.review_date DESC;

