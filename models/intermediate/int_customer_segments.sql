SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    c.country,
    s.segment
FROM {{ ref('stg_customers') }} AS c
LEFT JOIN {{ ref('customer_segments') }} AS s
    ON c.customer_id = s.customer_id