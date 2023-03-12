{{ config(materialized='table') }}

with fhv_data as (
    select *,
        'Fhv' as service_type
    from {{ ref('stg_fhv') }}
    where pickup_locationid is not null
    AND dropoff_locationid is not null
), 

d_zones as (
    select * from {{ ref('dim_zones') }}
    where borough != 'Unknown'
)

select 
    fhv_data.tripid,
    fhv_data.pickup_locationid,
    fhv_data.dispatching_base_num,
    pickup_zone.borough as pickup_borough, 
    pickup_zone.zone as pickup_zone, 
    fhv_data.dropoff_locationid,
    dropoff_zone.borough as dropoff_borough, 
    dropoff_zone.zone as dropoff_zone,  
    fhv_data.pickup_datetime,
    fhv_data.dropoff_datetime,
    fhv_data.SR_Flag, 
    fhv_data.Affiliated_base_number

from fhv_data
inner join d_zones as pickup_zone
on fhv_data.pickup_locationid = pickup_zone.locationid
inner join d_zones as dropoff_zone
on fhv_data.dropoff_locationid = dropoff_zone.locationid