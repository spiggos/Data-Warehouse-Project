/*
===============================================================================
Cumulative Analysis
===============================================================================
Purpose:
    - To calculate running totals or moving averages for key metrics.
    - To track performance over time cumulatively.
    - Useful for growth analysis or identifying long-term trends.

SQL Functions Used:
    - Window Functions: SUM() OVER(), AVG() OVER()
===============================================================================
*/

-- Calculate the total sales per month 
-- and the running total of sales over time 
-- and the moving average of price
SELECT
    order_date,
    total_sales,
    avg_price,
    --Window Functions DEFAULT(BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
    SUM(total_sales) OVER(ORDER BY order_date) AS cumulative_total_sales,
    AVG(avg_price) OVER(ORDER BY order_date) AS moving_avg_price
FROM(
    SELECT
        DATETRUNC(MONTH,order_date) AS order_date,
        SUM(sales_amount) AS total_sales,
        AVG(price) AS avg_price
    FROM gold.fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATETRUNC(MONTH,order_date)
)t