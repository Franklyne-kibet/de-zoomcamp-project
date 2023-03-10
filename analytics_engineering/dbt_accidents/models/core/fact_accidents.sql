{{ config(materialized='table') }}

with accident_data as(
    select * from {{ ref('stg_accidents_data') }}
)

select
    accident_id,
    Id,
    severity,
    severity_description,
    start_time,
    end_time,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    distance_miles,
    description,
    number,
    street,
    side,
    city,
    county,
    state,
    zipcode,
    country,
    timezone,
    airport_code,
    weather_timestamp,
    temperature,
    wind_chill,
    humidity,
    pressure,
    visibility,
    wind_direction,
    wind_speed,
    precipitation,
    weather_condition,
    amenity,
    bump,
    crossing,
    give_Way,
    junction,
    no_exit,
    railway,
    roundabout,
    station,
    stop,
    traffic_calming,
    traffic_signal,
    turning_loop,
    sunrise_sunset,
    civil_twilight,
    nautical_twilight, 
    astronomical_twilight 

from accident_data