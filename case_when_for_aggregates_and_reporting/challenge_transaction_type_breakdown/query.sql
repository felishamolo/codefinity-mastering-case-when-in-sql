-- Write your code here
select to_char(transaction_date,'YYYY-MM') as month,
    count(case when transaction_type = 'purchase' then 1 end) as purchase_count,
    count(case when transaction_type = 'refund' then 1 end) as refund_count,
    count(case when transaction_type = 'fee' then 1 end) as fee_count
from transactions
group by to_char(transaction_date,'YYYY-MM')
order by month