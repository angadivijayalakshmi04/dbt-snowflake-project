SELECT
    customer_id,
    customer_name,
    city,
    country
FROM {{ ref('stg_customers') }}