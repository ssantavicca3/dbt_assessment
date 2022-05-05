
  create or replace  view FLEETIO_DBT.CUSTOMERS.stg_opportunities
  
   as (
    -- OPPORTUNITIES-BASED TABLE

select
    contacts.lead_id,
    contacts.account_id,
    case
        when opportunities.is_closed = TRUE
            then 1
            else 0
        end as "IS_CLOSED",
    case
        when opportunities.is_won = TRUE
            then 1
            else 0
        end as "IS_WON"
from leads
inner join contacts
    on leads.id = contacts.lead_id
inner join opportunities
    using (account_id)
  );
