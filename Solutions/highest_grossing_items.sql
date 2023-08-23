SELECT category, product, SUM(spend) AS total_spend FROM product_spend
WHERE EXTRACT(YEAR FROM transaction_date) = '2022'
GROUP BY category, product
ORDER BY total_spend DESC
LIMIT 2;
