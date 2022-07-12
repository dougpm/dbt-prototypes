{% set main_project_model=ref('mart_model_1') -%}

{% set expected_model=ref('expected_model_1') %}

{{ audit_helper.compare_relations(
    a_relation=main_project_model,
    b_relation=expected_model,
    primary_key="id"
) }}