SELECT
    order_id,
    customer_id,
    order_date,
    amount
FROM {{ ref('int_customer_orders') }}