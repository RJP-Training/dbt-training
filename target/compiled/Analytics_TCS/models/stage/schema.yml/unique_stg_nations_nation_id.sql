
    
    

select
    nation_id as unique_field,
    count(*) as n_records

from Analytics.dbt_main.stg_nations
where nation_id is not null
group by nation_id
having count(*) > 1


