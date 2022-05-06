
  create or replace  view FLEETIO_DBT.CUSTOMERS.count_converted_time
  
   as (
    --

select * from FLEETIO_DBT.CUSTOMERS.stg_conversion_date
  );
