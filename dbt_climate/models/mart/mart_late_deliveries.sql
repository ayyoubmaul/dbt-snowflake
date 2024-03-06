{{
    config(
        materialized='table'
    )
}}

SELECT
    {{ dbt_utils.star(ref('stg_climate_history')) }}
FROM {{ ref('stg_climate_history') }}
WHERE postal_code = '04290'
