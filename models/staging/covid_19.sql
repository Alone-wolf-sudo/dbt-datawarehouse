with source_data as (

    SELECT * FROM bigquery-public-data.covid19_open_data.covid19_open_data limit 10

)

select * from source_data
