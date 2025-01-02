select
    concat(order_id, '_', item_id) as order_item_id
    , order_id
    , product_id
    , quantity as order_item_quantity
    , list_price as order_item_price
    , quantity * list_price * (1 - discount) as total_order_item_amount
    , discount
from {{ source('local_bike', 'order_items') }}
