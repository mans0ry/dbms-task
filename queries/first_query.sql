WITH t AS (
    SELECT
        o.customer_id,
        op.id
    FROM order_products op
        INNER JOIN games g ON g.id = op.id
        INNER JOIN orders o ON o.id = op.order_id
)

SELECT
    c.first_name AS name,
    c.last_name  AS last_name
FROM customers c
WHERE NOT exists(
    SELECT id
    FROM games g
    WHERE NOT exists(
        SELECT id
        FROM t
        WHERE g.id = t.id AND c.id = t.customer_id
    )
)
