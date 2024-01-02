CREATE INDEX idx_reviews_times ON am_reviews(TIMES);
CREATE INDEX idx_reviews_score ON am_reviews(SCORE);
CREATE INDEX idx_product_pid ON am_products(pId);
CREATE INDEX idx_product_categoryid ON am_products(category_id);

SELECT  am_products.category_id, am_categories.category_name, ROUND(AVG(am_reviews.Score)), ROUND(median(am_reviews.Score)),COUNT(am_reviews.pId)
FROM  am_reviews
JOIN am_products  ON am_products.pId = am_reviews.pId
JOIN am_categories  ON am_products.category_id = am_categories.category_id
WHERE EXTRACT(YEAR FROM am_reviews.Times) IN (2020, 2021)
GROUP BY  am_products.category_id, am_categories.category_name
ORDER BY  am_products.category_id;