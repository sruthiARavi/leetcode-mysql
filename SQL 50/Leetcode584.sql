# https://leetcode.com/problems/find-customer-referee/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT name
FROM   customer
WHERE  referee_id IS NULL
        OR referee_id != 2 
