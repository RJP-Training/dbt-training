
with tablenew as 
(select c.customer_id, 
sum(o.total_price) as price, 
max(o.order_date) date 
from Analytics.dbt_main.stg_customers c  join Analytics.dbt_main.stg_orders  o on c.customer_id = o.customer_id
where c.customer_id <= 1000
group by 1)

select * from tablenew