{{ config(
    materialized='incremental',
    unique_key='order_id'
) }}

SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM {{ ref('stg_orders') }}

{% if is_incremental() %}

WHERE order_date > (
    SELECT MAX(order_date)
    FROM {{ this }}
)

{% endif %}