--

with opportunities as (

  select * from {{ ref('stg_opportunities') }}

),

leads as (

  select
    lead_id,
    source,
    job_title,
    state,
    industry,
    fleet_size
  from {{ ref('stg_leads') }}
  where is_converted = 1

)

select *
from opportunities
inner join leads
  using (lead_id)
