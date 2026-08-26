{% snapshot customer_snapshot %}

{{
    config(
        target_schema='SNAPSHOTS',
        unique_key='customer_id',
        strategy='check',
        check_cols=['customer_name', 'city', 'country']
    )
}}

SELECT
    customer_id,
    customer_name,
    city,
    country
FROM {{ source('raw', 'customers') }}

{% endsnapshot %}