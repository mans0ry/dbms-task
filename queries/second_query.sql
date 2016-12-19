select p.name
from order_products o
right join products p
on o.id = p.id
where o.id is NULL
