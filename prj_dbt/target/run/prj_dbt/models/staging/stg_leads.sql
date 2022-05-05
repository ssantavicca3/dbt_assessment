
  create or replace  view FLEETIO_DBT.CUSTOMERS.stg_leads
  
   as (
    -- BASELINE TABLE

select
    id,
    case
        when converted_at is null then 0
        else 1
    end as is_converted,
    source,
    job_title,
    state,
    industry,
    fleet_size
from leads
  );
