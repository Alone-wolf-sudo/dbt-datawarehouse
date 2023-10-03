
-- Use the `ref` function to select from other models

select date
from {{ ref('stg_covid_19') }}
