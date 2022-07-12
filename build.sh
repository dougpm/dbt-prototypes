
source .env

echo $SOURCE_DATABASE $SOURCE_SCHEMA

dbt build

