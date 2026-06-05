
# Write your MySQL query statement below
select e.name
from employee e
inner join employee emp
on e.id = emp.managerID
group by e.id, e.name 
having count(emp.id) >= 5    