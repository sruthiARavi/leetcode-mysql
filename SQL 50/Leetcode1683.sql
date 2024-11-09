# https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT tweet_id
FROM   tweets
WHERE  length(content) > 15 
# Alternatively we can use char_length depending on whether there are multi byte characters in the column
# https://stackoverflow.com/a/6807249
