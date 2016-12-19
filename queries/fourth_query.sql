select sum(op.amount) as summa, p.name as name
from order_products op, products p
where op.id = p.id
group by p.id
order by summa;
