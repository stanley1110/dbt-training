select customerid, customername, country, segment, sum(orderprofit) as orderprofit
from {{ ref("stg_orders") }}
group by customerid, customername, country, segment
