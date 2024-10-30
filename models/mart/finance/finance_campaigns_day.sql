WITH sub_finance_campaign AS(
    SELECT 
        date_date,
        ROUND((operational_margin-ads_cost),2) AS ads_margin,
        average_basket,
        operational_margin,
        ads_cost,
        ads_impression,
        ads_clicks,
        total_quantity_sold AS quantity,
        revenue,
        total_purchase_cost AS purchase_cost,
        margin,
        total_shipping_fee AS shipping_fee,
        total_log_cost AS logcost,
    FROM {{ref("int_campaigns_day")}}
    INNER JOIN {{ref("finance_days")}}
    USING (date_date)
    ORDER BY date_date DESC
)
SELECT *
FROM sub_finance_campaign