{{ config(materialized='table') }}

select *
from {{ source('general', 'raw_model_2') }}
