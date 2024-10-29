SELECT 
    date_date, 
    COUNT(DISTINCT quantity) AS nb_transaction, 
    ROUND(SUM(revenue),2) AS revenue, 
    ROUND(AVG(revenue),2) AS average_basket, 
    ROUND(SUM(margin),2) AS operational_margin, 
    ROUND(SUM(purchase_cost),2) AS total_purchase_cost,
    ROUND(SUM(shipping_fee),2) AS total_shipping_fee, 
    ROUND(SUM(logcost),2) AS total_log_cost,
    SUM(quantity) AS total_quantity_sold
FROM{{ref("int_orders_operational")}}
GROUP BY date_date