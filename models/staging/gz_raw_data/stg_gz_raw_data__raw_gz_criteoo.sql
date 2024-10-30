with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_criteoo') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        camPGN_name,
        ads_cost,
        impression,
        click

    from source

)

select * from renamed
