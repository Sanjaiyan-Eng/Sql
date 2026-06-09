# Write your MySQL query statement below
select product_id,year as first_year,quantity,price
from sales t1
where (product_id,year)
in
(select product_id,min(year) as first_year
from sales t2
group by product_id)