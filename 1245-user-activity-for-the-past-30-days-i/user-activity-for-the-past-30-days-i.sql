# Write your MySQL query statement below
Select activity_date as  day,
count(Distinct user_id ) AS  active_users
from Activity
where  activity_date between date_sub('2019-07-27', interval  29 day) and '2019-07-27'
group by  day

