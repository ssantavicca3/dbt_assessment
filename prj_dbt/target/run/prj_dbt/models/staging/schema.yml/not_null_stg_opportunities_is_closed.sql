select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select is_closed
from FLEETIO_DBT.CUSTOMERS.stg_opportunities
where is_closed is null



      
    ) dbt_internal_test