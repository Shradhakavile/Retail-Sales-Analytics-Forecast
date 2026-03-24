CREATE DATABASE retail_sales_project;
USE retail_sales_project;

SELECT *
FROM retail_sales
LIMIT 5;

SELECT ROUND(SUM(sales),2) AS total_revenue
FROM retail_sales;

SELECT region, ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY region
ORDER BY total_sales DESC;

SELECT city, ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY city
ORDER BY total_sales DESC
LIMIT 10;

SELECT category, ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;

SELECT customer_name, ROUND(SUM(sales),2) AS total_spent
FROM retail_sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;

SELECT segment, ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY segment
ORDER BY total_sales DESC;

SELECT sub_category, ROUND(SUM(sales),2) AS total_sales
FROM retail_sales
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 10;

SELECT ROUND(SUM(sales)/COUNT(DISTINCT order_id),2) AS avg_order_value
FROM retail_sales;

DESCRIBE retail_sales;
SET SQL_SAFE_UPDATES = 0;
UPDATE retail_sales
SET order_date = STR_TO_DATE(order_date, '%d-%m-%Y');

ALTER TABLE retail_sales
MODIFY order_date DATE;

SELECT YEAR(order_date) AS year,
       ROUND(SUM(sales),2) AS yearly_sales
FROM retail_sales
GROUP BY YEAR(order_date)
ORDER BY year;

SELECT DATE_FORMAT(order_date,'%Y-%m') AS month,
       ROUND(SUM(sales),2) AS monthly_sales
FROM retail_sales
GROUP BY DATE_FORMAT(order_date,'%Y-%m')
ORDER BY month;

SELECT month,
monthly_sales,
LAG(monthly_sales) OVER (ORDER BY month) AS prev_month,
ROUND((monthly_sales - LAG(monthly_sales) OVER (ORDER BY month))
* 100/ LAG(monthly_sales) OVER (ORDER BY month), 2) AS mom_growth_pct
FROM (
  SELECT DATE_FORMAT(order_date,'%Y-%m') AS month,
    ROUND(SUM(sales),2) AS monthly_sales
  FROM retail_sales
  GROUP BY DATE_FORMAT(order_date,'%Y-%m')
) t;

SELECT segment, category,
  ROUND(SUM(sales),2) AS total_sales,
  ROUND(SUM(sales)*100.0/SUM(SUM(sales)) OVER(PARTITION BY segment),2) AS category_share_pct
FROM retail_sales
GROUP BY segment, category
ORDER BY segment, total_sales DESC;


