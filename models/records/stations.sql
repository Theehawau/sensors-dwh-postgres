with source as (
    select * from  {{ ref('stg_stations')}}
)

select * from source