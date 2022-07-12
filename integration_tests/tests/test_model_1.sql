with audit_mart_model_1 as (
  select * from {{ ref('audit_mart_model_1') }}
)

select * from audit_mart_model_1 
where (in_a and not in_b) or (in_b and not in_a)