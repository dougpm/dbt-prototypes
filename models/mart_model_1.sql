{{ config(materialized='table') }}

with source_data as (
    select * from {{ source('general', 'raw_model_1') }}
)

select *
from source_data
