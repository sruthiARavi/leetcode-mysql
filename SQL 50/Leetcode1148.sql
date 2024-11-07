# having count is not needed but I have added it here so that the query can be expanded to other conditions 
SELECT author_id AS id
FROM   Views
WHERE  author_id = viewer_id
GROUP  BY author_id
HAVING Count(id) > 0
ORDER  BY author_id ASC 
