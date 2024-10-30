SELECT 
    *,
    ROUND((margin+shipping_fee-logcost-ship_cost),2) AS operational_margin
FROM {{ref("int_orders_margin")}}
INNER JOIN {{ref("stg_gz_raw_data__raw_gz_ship")}}
USING(orders_id)