select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select is_converted
from FLEETIO_DBT.CUSTOMERS.stg_leads
where is_converted is null



      
    ) dbt_internal_test