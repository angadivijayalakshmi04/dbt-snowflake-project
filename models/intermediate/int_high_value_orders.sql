SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM {{ ref('stg_orders') }}
WHERE amount >= {{ var('minimum_order_amount') }}