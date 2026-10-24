-- Write your code here
select customer_id, 
    sum(case when transaction_type = 'purchase' then amount else 0 end),
    sum(case when transaction_type = 'refund' then amount else 0 end)
from transactions
group by customer_id