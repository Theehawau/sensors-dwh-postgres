with source as (
    select * from {{ ref('stg_richards') }}
)

select * from source
