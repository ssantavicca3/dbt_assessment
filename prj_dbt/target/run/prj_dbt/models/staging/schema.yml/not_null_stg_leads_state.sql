select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select state
from FLEETIO_DBT.CUSTOMERS.stg_leads
where state is null



      
    ) dbt_internal_test