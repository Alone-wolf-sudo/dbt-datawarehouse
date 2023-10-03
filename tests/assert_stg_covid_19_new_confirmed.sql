with confirmed_cases AS (
    SELECT * FROM {{ ref('stg_covid_19') }}
)

SELECT country_code,count(new_confirmed)  AS cases FROM confirmed_cases GROUP BY country_code HAVING cases<0 