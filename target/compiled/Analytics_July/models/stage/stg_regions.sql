


with
    tablename as (
        select 
        r_regionkey as region_id, 
        r_name as name, 
        r_comment as comment,
       convert_timezone('UTC', current_timestamp()) as curdate
        from sourcedb.mk_mall.regions  )

select * from tablename