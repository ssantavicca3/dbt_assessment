--

with opportunities as (

  select * from FLEETIO_DBT.CUSTOMERS.stg_opportunities

),

leads as (

  select *
  from FLEETIO_DBT.CUSTOMERS.stg_leads
  where is_converted = 1

)

select
  *
from opportunities
inner join leads
  using (lead_id)