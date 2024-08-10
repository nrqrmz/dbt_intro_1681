SELECT
    product_id
    , quantity
    , stock
    , avg_price
    , quantity * avg_price AS earned_revenue
    , stock * avg_price AS posible_revenue
FROM {{ref("int_circle__grouped_by_product")}}
ORDER BY posible_revenue DESC