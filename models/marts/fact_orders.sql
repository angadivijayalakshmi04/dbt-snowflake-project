SELECT
    order_id,
    customer_id,
    order_date,
    {{ format_amount('amount') }} AS amount
FROM {{ ref('int_customer_orders') }}