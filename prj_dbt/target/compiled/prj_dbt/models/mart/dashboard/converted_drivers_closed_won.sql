-- BUILT TO HELP VISUALIZE Q4

with opportunities as (

  select * from FLEETIO_DBT.CUSTOMERS.stg_opportunities

),

leads as (

  select
    lead_id,
    source,
    job_title,
    state,
    industry,
    fleet_size
  from FLEETIO_DBT.CUSTOMERS.stg_leads
  where is_converted = 1

)

select *
from opportunities
inner join leads
  using (lead_id)