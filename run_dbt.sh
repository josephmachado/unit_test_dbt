#!/bin/bash
env=$1
export DBT_PROFILES_DIR=$PWD
if [[ $env == "prod" ]]; then
    dbt debug --target prod 
    dbt run --target prod 
    dbt test --target prod 
    dbt docs generate --target prod 
    dbt docs serve --target prod 
else
    dbt debug
    dbt seed --full-refresh 
    dbt run 
    dbt test 
    dbt docs generate 
    dbt docs serve 
fi