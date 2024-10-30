{% snapshot products_snapshot %}

{{
    config(
      target_schema='dbt_snapshots',
      unique_key='products_id',
      strategy='check',
      check_cols='all'
    )
}}

select * from {{ ref("stg_gz_raw_data__raw_gz_product") }}

{% endsnapshot %}