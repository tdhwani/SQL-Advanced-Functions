select 
  q1.product_name, 
  q2.unit 
from 
  Products as q1 
  join (
    select 
      product_id, 
      sum(unit) as unit 
    from 
      Orders 
    where 
      month(order_date) = '2' 
      and year(order_date) = '2020' 
    group by 
      product_id
  ) as q2 on q1.product_id = q2.product_id 
where 
  q2.unit >= 100;
