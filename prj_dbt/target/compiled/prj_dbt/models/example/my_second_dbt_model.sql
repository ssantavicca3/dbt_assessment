-- Use the `ref` function to select from other models

select *
from FLEETIO_DBT.CUSTOMERS.my_first_dbt_model
where id = 1