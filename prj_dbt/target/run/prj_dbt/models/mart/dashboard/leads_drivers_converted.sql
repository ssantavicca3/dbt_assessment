
  create or replace  view FLEETIO_DBT.CUSTOMERS.leads_drivers_converted
  
   as (
    -- BUILT TO HELP VISUALIZE Q3

select * from FLEETIO_DBT.CUSTOMERS.stg_leads
  );
