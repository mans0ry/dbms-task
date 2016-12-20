SELECT
    c.first_name AS first_name,
    c.last_name  AS last_name
FROM customers c
    LEFT JOIN orders o
        ON o.customer_id = c.id
WHERE o.id IS NULL