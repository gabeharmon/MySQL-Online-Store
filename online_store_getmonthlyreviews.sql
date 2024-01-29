#creates a view that shows reviews from each month since july

CREATE VIEW december23_reviews AS
SELECT
review_id,
user_id,
product_id,
rating,
review_text,
review_date
FROM reviews
WHERE review_date >= '2023-12-01' AND review_date < '2024-01-01';

CREATE VIEW november23_reviews AS
SELECT
review_id,
user_id,
product_id,
rating,
review_text,
review_date
FROM reviews
WHERE review_date >= '2023-11-01' AND review_date < '2023-12-01';
    
CREATE VIEW october23_reviews AS
SELECT
review_id,
user_id,
product_id,
rating,
review_text,
review_date
FROM reviews
WHERE review_date >= '2023-10-01' AND review_date < '2023-11-01';
    
CREATE VIEW september23_reviews AS
SELECT
review_id,
user_id,
product_id,
rating,
review_text,
review_date
FROM reviews
WHERE review_date >= '2023-09-01' AND review_date < '2023-10-01';
    
CREATE VIEW august23_reviews AS
SELECT
review_id,
user_id,
product_id,
rating,
review_text,
review_date
FROM reviews
WHERE review_date >= '2023-08-01' AND review_date < '2023-09-01';

CREATE VIEW july23_reviews AS
SELECT
review_id,
user_id,
product_id,
rating,
review_text,
review_date
FROM reviews
WHERE review_date >= '2023-07-01' AND review_date < '2023-08-01';