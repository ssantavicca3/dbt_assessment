
    
    

select
    lead_id as unique_field,
    count(*) as n_records

from FLEETIO_DBT.CUSTOMERS.stg_opportunities
where lead_id is not null
group by lead_id
having count(*) > 1


