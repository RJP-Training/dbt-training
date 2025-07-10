
with tablenew as 
(select c.customer_id, 
sum(o.total_price) as price, 
count(o.order_id) as t_orders,
max(o.order_date) date 
from Analytics.training.stg_customers c  join Analytics.training.stg_orders  o on c.customer_id = o.customer_id
where c.customer_id <= 3000
group by 1)

select * from tablenew