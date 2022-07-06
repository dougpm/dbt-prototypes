with my_first_dbt_model as (
    select * from {{ ref('my_first_dbt_model') }}
),

expected_first_dbt_model as (
    select * from {{ ref('expected_first_model') }}
),

test as (

    select
        *
    from 
    
        expected_first_dbt_model
        left join my_first_dbt_model
            on expected_first_dbt_model.id = my_first_dbt_model.id

    where my_first_dbt_model.id is null

)

select * from test