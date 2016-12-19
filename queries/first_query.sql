with customer_select as (
	with orders_select as (
		select o.order_id
		from order_products o, games g
		where o.id = g.id
		group by o.order_id
		having count(g.id) = (select count(id) from games))
	select o.customer_id
	from orders_select, orders o
	where o.id = orders_select.order_id)
select c.first_name, c.last_name
from customer_select, customers c
where customer_select.customer_id = c.id;
