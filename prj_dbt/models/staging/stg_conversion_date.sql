-- DATE/TIME GRAINS TABLE

select
    ID as "lead_id",
    converted_at,
    date_part('month', converted_at) as "month",
    date_part('week', converted_at) as "week",
    date_part('day', converted_at) as "day",
    to_char(converted_at, 'Mon') as "month_name",
    to_char(converted_at, 'Dy') as "day_name"
from leads
where converted_at is not null
