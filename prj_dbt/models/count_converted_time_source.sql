--

with leads as (

    select * from {{ ref('stg_leads') }}

),

conversion_date as (

    select * from {{ ref('stg_conversion_date') }}

)

select
    *
    leads.source,
from conversion_date
left join leads
    using (lead_id)
