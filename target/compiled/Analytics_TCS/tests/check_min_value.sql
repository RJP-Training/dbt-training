

with orders as (
    select * from Analytics.dbt_main.stg_orders
)

select order_id, sum(total_price) ordertotal 
from orders 
group by 1
having (ordertotal<=1000)