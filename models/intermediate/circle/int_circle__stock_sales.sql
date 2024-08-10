WITH stock_sales AS (
    SELECT *
    FROM {{ref("stg_circle__stock")}}
    JOIN {{ref("stg_circle__sales")}}
    USING(product_id)
)

SELECT
    product_id
    , stock
    , quantity
    , price
FROM stock_sales