
  create or replace  view FLEETIO_DBT.CUSTOMERS.converted_counts_time_source
  
   as (
    --

with leads as (

    select * from FLEETIO_DBT.CUSTOMERS.stg_leads

),

conversion_date as (

    select * from FLEETIO_DBT.CUSTOMERS.stg_conversion_date

)

select
    leads.lead_id,
    leads.source,
    conversion_date.month,
    conversion_date.week,
    conversion_date.day,
    conversion_date.month_name,
    conversion_date.day_name
from conversion_date
left join leads
    using (lead_id)
  );
