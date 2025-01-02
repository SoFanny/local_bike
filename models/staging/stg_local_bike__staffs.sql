select
    staff_id
    , first_name
    , last_name
    , email
    , phone
    , case when active = 1 then true else false end as is_active
    , store_id
    , case when manager_id = 'NULL' then null else manager_id end as manager_id
from {{ source('local_bike', 'staffs') }}
