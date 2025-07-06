{% snapshot test_new_snapshot %}
    {{
        config(
            target_schema='ss',
            unique_key='id',
            strategy='timestamp',
            updated_at='updated_at',
            hard_deletes='new_record'
        )
    }}

    select * from {{ source('jaffle_shops', 'try_snapshot') }}
 {% endsnapshot %}