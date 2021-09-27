with source as (
    select * from {{ ref('richards') }}
)

-- stage_richard as (
--     select
--         *
--     from source
-- )

select * from source