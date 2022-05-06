-- MODEL TO FACILITATE REGRESSION AND ML ANALYSES; GENERATE INSIGHTS INTO Q3 AND Q4

with leads as (

    select
      lead_id,
      source,
      job_title,
      state,
      industry,
      fleet_size
    from FLEETIO_DBT.CUSTOMERS.stg_leads

),

conversion_date as (

    select
      lead_id,
      month,
      week,
      day,
      month_name,
      day_name
    from FLEETIO_DBT.CUSTOMERS.stg_conversion_date

),

opportunities as (

    select * from FLEETIO_DBT.CUSTOMERS.stg_opportunities

)

select *
   from leads
   inner join opportunities
       using (lead_id)
   inner join conversion_date
       using (lead_id)