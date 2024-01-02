SELECT am_reviews.rId, am_reviews.cId, am_customer.cgender, am_customer.cage, am_reviews.Score, am_reviews.summaries
FROM am_reviews
JOIN am_customer ON am_reviews.cId = am_customer.cId
WHERE am_customer.cAge > 30 AND am_customer.cMarried = 1 AND am_reviews.Score >= 4;
