{{ config(
    schema='raw'
) }}

SELECT
    {{ dbt_utils.star(source('raw_data', 'history_day')) }}
FROM {{ source('raw_data', 'history_day') }}
