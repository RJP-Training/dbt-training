with
    tablename as (
        select 
        r_regionkey as region_id, 
        r_name as name, 
        r_comment as comment
        from sourcedb.mk_mall.regions  )

select * from tablename