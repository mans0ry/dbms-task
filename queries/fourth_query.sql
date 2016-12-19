SELECT
    sum(op.amount) AS summa,
    p.name         AS name
FROM order_products op, products p
WHERE op.id = p.id
GROUP BY p.id
ORDER BY summa;
