with

source as (
    
    select * from {{ source('staging','taxi_ny_yellow') }}
),

renamed as (

    SELECT 
      *,
      {{ get_payment_type_description(payment_type) }} as payment_type_descripted
    from source
)

select * from renamed
