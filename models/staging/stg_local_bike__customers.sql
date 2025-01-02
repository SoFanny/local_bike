select
    customer_id
    , first_name
    , last_name
    , (case when phone = 'NULL' then null else phone end) as phone
    , email
    , street
    , city
    , state
    , zip_code
from {{ source('local_bike', 'customers') }}
