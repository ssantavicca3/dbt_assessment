select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select industry
from FLEETIO_DBT.CUSTOMERS.stg_leads
where industry is null



      
    ) dbt_internal_test