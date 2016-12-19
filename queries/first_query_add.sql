WITH customer_select AS (
  	WITH orders_select AS (
    	SELECT o.order_id
		FROM order_products o, games g
		WHERE o.id = g.id
		GROUP BY o.order_id
		HAVING count(g.id) = (SELECT count(id)
		                    FROM games))
	SELECT o.customer_id
	FROM orders_select, orders o
	WHERE o.id = orders_select.order_id)
SELECT
	c.first_name,
	c.last_name
FROM customer_select, customers c
WHERE customer_select.customer_id = c.id;
