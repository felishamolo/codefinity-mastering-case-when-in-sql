-- Write your code here
select customer_id, count(case when amount >= 1000 then 1 else null end) as high_value_transaction_count
from transactions
group by customer_id