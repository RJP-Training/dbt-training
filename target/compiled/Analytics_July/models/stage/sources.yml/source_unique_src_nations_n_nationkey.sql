
    
    

select
    n_nationkey as unique_field,
    count(*) as n_records

from sourcedb.mk_mall.nations
where n_nationkey is not null
group by n_nationkey
having count(*) > 1


