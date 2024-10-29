SELECT *,
    #ROUND(SUM(turnover)-SUM(purchase_price)) AS margin

FROM {{source("gz_raw_data","raw_gz_sales")}}
INNER JOIN {{source("gz_raw_data","raw_gz_product")}}
USING(products_id)