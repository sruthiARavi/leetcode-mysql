# https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT customer_id,
       Count(visit_id) AS count_no_trans
FROM   visits
       LEFT JOIN transactions USING (visit_id)
WHERE  transaction_id IS NULL
GROUP  BY ( customer_id ) 
