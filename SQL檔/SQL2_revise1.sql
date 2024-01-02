CREATE INDEX idx_am_customer_cAge_cMarried ON am_customer(cAge, cMarried);
CREATE INDEX idx_am_reviews_Score ON am_reviews(Score);

SELECT /*+ INDEX(am_reviews idx_am_reviews_Score)  INDEX(am_customer idx_am_customer_cAge_cMarried) */
am_reviews.rId, am_reviews.cId, am_customer.cgender, am_customer.cage, am_reviews.Score, am_reviews.summaries
FROM am_reviews
JOIN am_customer ON am_reviews.cId = am_customer.cId
WHERE am_customer.cAge > 30 AND am_customer.cMarried = 1 AND am_reviews.Score >= 4;
