with source_data as (

    SELECT * FROM {{ source('dbt_dataset','covid_19_data') }} limit 10

)

select * from source_data
