-- Sales Analytics Project
-- Author: Vijayalakshmi
-- Description: SQL queries used for analyzing sales data


1. Total Revenue

SELECT SUM(sales) AS total_revenue
FROM orders;

2. Monthly Sales Trend

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
SUM(sales) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;

3. Top 5 Products
SELECT product_name,SUM(sales) AS revenue
FROM orders
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;

4. Top Customers

SELECT customer_name,SUM(sales) AS total_spent
FROM orders
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;

5. Sales by Region

SELECT region,SUM(sales) AS revenue FROM orders
GROUP BY region;

6. Category-wise Sales

SELECT category, SUM(sales) AS total_sales FROM orders
GROUP BY category;

7. Profit Analysis

SELECT SUM(profit) AS total_profit FROM orders;

8. Profit by Category

SELECT category, SUM(profit) AS profit FROM orders
GROUP BY category
ORDER BY profit DESC;

9. Customer Order Count

SELECT customer_name, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_name
ORDER BY order_count DESC;

10. Low Performing Products

SELECT product_name, SUM(sales) AS revenue
FROM orders
GROUP BY product_name
ORDER BY revenue ASC
LIMIT 5;