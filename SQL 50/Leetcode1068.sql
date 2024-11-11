# https://leetcode.com/problems/product-sales-analysis-i/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT product.product_name,
       sales.year,
       sales.price
FROM   sales
       LEFT JOIN product USING (product_id) 
