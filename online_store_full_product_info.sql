CREATE VIEW full_product_info AS
SELECT
c.category_id,
c.category_name,
p.product_id,
p.product_name
FROM categories c
JOIN products p ON c.category_id = p.category_id;
    
    