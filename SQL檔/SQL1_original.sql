SELECT  category_id, round(AVG(PSTAR),1) AS average_stars
FROM am_products
WHERE PNAME LIKE '%Mudpuppy%'
GROUP BY category_id,PNAME
ORDER BY average_stars DESC;

