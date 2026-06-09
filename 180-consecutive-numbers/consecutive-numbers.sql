# Write your MySQL query statement below
WITH cte AS (
    SELECT
        num,
        LAG(num,1) OVER(ORDER BY id) AS p1,
        LAG(num,2) OVER(ORDER BY id) AS p2
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM cte
WHERE num = p1
  AND num = p2;