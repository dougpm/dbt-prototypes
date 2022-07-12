
set -e

source set_env_vars.sh

echo $SOURCE_DATABASE $SOURCE_SCHEMA

dbt clean; dbt deps

dbt seed
dbt run --select +audit
dbt test
