SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    c.country,
    o.order_id,
    o.order_date,
    o.amount
FROM {{ ref('stg_customers') }} AS c
INNER JOIN {{ ref('stg_orders') }} AS o
    ON c.customer_id = o.customer_id