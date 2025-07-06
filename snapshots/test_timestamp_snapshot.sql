{% snapshot test_timestamp_snapshot %}
    {{
        config(
            target_schema='ss',
            unique_key='id',
            strategy='timestamp',
            updated_at='updated_at'
        )
    }}

    select * from {{ source('jaffle_shops', 'try_snapshot') }}
 {% endsnapshot %}