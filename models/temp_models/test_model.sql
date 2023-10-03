
-- Use the `ref` function to select from other models

select date
from {{ ref('covid_19') }}
