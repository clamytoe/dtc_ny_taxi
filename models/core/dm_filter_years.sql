{{ config(materialized='table') }}

with trips_data as (
    select
        *
    from
        {{ ref('fact_trips') }}
)
select
    *,
    extract(year from pickup_datetime) as year
from
    trips_data
where
    year between '2019' and '2020'
