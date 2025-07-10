
    
    

select
    r_regionkey as unique_field,
    count(*) as n_records

from sourcedb.mk_mall.regions
where r_regionkey is not null
group by r_regionkey
having count(*) > 1


