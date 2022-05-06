select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select job_title
from FLEETIO_DBT.CUSTOMERS.stg_leads
where job_title is null



      
    ) dbt_internal_test