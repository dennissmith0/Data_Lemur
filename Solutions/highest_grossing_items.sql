WITH Ranked_Products AS (
    SELECT
    category,
    product,
    SUM(spend) as total_spend,
    ROW_NUMBER() OVER(PARTITION BY category ORDER BY SUM(spend) DESC) AS rnk
    FROM product_spend
    WHERE EXTRACT(YEAR FROM transaction_date)='2022'
    GROUP BY category, product
)
SELECT category, product, total_spend FROM Ranked_Products
WHERE rnk <= 2;