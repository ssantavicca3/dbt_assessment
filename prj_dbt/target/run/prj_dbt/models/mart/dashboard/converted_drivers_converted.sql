
  create or replace  view FLEETIO_DBT.CUSTOMERS.converted_drivers_converted
  
   as (
    --

select * from FLEETIO_DBT.CUSTOMERS.stg_leads
  );
