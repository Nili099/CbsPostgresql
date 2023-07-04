{% snapshot orders_snapshot %}

{{
    config(
      target_database='Pagila',
      target_schema='public',
      unique_key='category_id',

      strategy='timestamp',
      updated_at='last_update'
    )
}}

select * from {{ source('raw', 'category') }}

{% endsnapshot %}