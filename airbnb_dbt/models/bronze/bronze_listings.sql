{# {% set incremental_flag = 1 %}

{% set incremental_col = 'created_at' %}

select *
from {{ source('staging', 'listings') }}

{% if incremental_flag == 1 %}

where {{ incremental_col }} > (
    select coalesce(
        max({{ incremental_col }}),
        '1900-01-01'
    )
    from {{ this }}
)

{% endif %} #}


{{
  config(
    materialized = 'incremental',
    )
}}

SELECT * FROM {{ source('staging', 'listings') }}

 {% if is_incremental() %}
WHERE CREATED_AT > (
    SELECT COALESCE(
        MAX(CREATED_AT),
        '1900-01-01'
    )
    FROM {{ this }}
){% endif %}