with source as (
    select * from {{ ref('I80_stations') }}
)

select
        ID,
        Fwy,
        Dir,
        District,
        County,
        State_PM,
        Abs_PM,
        Latitude,
        Longitude,
        Length,
        Type,
        Lanes,
        Name
    from source
-- ) as stage_station

-- select * from stage_station
