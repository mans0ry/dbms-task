SELECT p.name
FROM order_products o
    RIGHT JOIN products p
        ON o.id = p.id
WHERE o.id IS NULL
