SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    AMOUNT
FROM {{ source('raw', 'orders') }}