select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select fleet_size
from FLEETIO_DBT.CUSTOMERS.stg_leads
where fleet_size is null



      
    ) dbt_internal_test