{% snapshot test_check_snapshot %}
    {{
        config(
            target_schema='ss',
            unique_key='id',
            strategy='check',
            check_cols=['email', 'status']
        )
    }}

    select * from {{ source('jaffle_shops', 'try_snapshot') }}
 {% endsnapshot %}