

with customer as (
select
        customer_id,
        nation_id,
        name,
        address,
        phone_number,
        account_balance,
        market_segment,
        comment
from Analytics.dbt_main.stg_customers



)

select * from customer