# Write your MySQL query statement below
select round(sum(player_first_login)/count(Distinct player_id),2) as fraction from
(select player_id , datediff(event_date, min(event_date) over (partition by player_id ))=1  as player_first_login 
from Activity) as new_table