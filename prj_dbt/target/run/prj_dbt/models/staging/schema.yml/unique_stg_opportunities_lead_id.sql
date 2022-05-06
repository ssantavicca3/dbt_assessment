select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    lead_id as unique_field,
    count(*) as n_records

from FLEETIO_DBT.CUSTOMERS.stg_opportunities
where lead_id is not null
group by lead_id
having count(*) > 1



      
    ) dbt_internal_test