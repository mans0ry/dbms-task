select p.id, p.type, p.name, p.price, a.wireless, p.description 
from products p, accessories a
where p.id = a.id