# https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
select customer_id, 
  count(visit_id) as count_no_trans 
  from Visits 
  left join Transactions 
  using (visit_id) 
  where transaction_id is NULL 
  group by (customer_id)
