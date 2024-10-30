WITH subquery1 AS(
    SELECT *,
    FROM {{ref("stg_gz_raw_data__raw_gz_sales")}}
    INNER JOIN {{ref("stg_gz_raw_data__raw_gz_product")}}
    USING(products_id)
),
    subquery2 AS(
    SELECT
        *,
        quantity*purchase_price AS purchase_cost,
        ROUND(revenue-(quantity*purchase_price),2) AS margin
    FROM subquery1
)

SELECT 
    *,
    {{margin_percent('revenue','purchase_cost',2)}} AS margin_percent
FROM subquery2
