-- Write your code here
select *, case
    when quantity >= 100 then 'Bulk'
    when quantity >= 20 then 'Standard'
    else 'Small'
    end as volume_category
from sales