# 1141. User Activity for the Past 30 Days I
# Table: Activity
# +---------------+---------+
# | Column Name   | Type    |
# +---------------+---------+
# | user_id       | int     |
# | session_id    | int     |
# | activity_date | date    |
# | activity_type | enum    |
# +---------------+---------+
# This table may have duplicate rows.
# The activity_type column is an ENUM (category) of type ('open_session', 'end_session', 'scroll_down', 'send_message').
# The table shows the user activities for a social media website. 
# Note that each session belongs to exactly one user.
# Write a solution to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on someday if they made at least one activity on that day.
# Return the result table in any order.

# Write your MySQL query statement below
SELECT activity_date AS day, 
       COUNT(DISTINCT user_id) AS active_users
FROM Activity a
WHERE DATEDIFF('2019-07-27', activity_date) < 30 
  AND DATEDIFF('2019-07-27', activity_date) >= 0
GROUP BY 1
ORDER BY 1;
