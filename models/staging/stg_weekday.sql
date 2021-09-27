with source as (
    select * from {{ ref('weekday') }}
)


    select
        ID,
        hour,
        minute,
        second,
        unknown,
        totalflow
    from source


-- select * from stage_weekday