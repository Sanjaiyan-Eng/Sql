# Write your MySQL query statement below 
SELECT id,movie ,description,rating FROM cinema
WHERE id&1 != 0 && description != 'boring'
ORDER BY rating DESC;
