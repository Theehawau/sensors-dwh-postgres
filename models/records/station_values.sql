with station as (
    select * from {{ ref('stg_stations') }}
),
measures as (
    select * from {{ ref('stg_weekday') }}
),
final as (
    select station.ID as station_id, station.District, station.Name, 
        concat_ws(':', measures.hour, measures.minute, measures.second) as timestamp,measures.unknown, measures.totalflow
    from station 
    inner join measures on station.ID = measures.ID
)
select * from final