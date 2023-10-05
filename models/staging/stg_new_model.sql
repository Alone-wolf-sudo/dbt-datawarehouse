{{
    config(
        materialized='view'
    )
}}

WITH final AS (
    SELECT customers.ID as ID,concat(FIRST_NAME," ",LAST_NAME) AS FULL_NAME, STATUS
        FROM {{ source('dbt_dataset', 'customers') }} customers
        inner join {{ source('dbt_dataset', 'orders') }} orders ON customers.ID = orders.ID WHERE STATUS = "completed"
)

SELECT * FROM final