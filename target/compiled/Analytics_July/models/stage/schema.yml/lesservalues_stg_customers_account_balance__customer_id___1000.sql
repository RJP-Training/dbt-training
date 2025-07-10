
with ttable as (
    select * from Analytics.training.stg_customers )
 
select customer_id id, sum(account_balance) total from ttable
group by 1
having (total<=-1000)
