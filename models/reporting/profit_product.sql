select productid, productname, category, sub_category, sum(orderprofit) as orderprofit
from {{ ref("stg_orders") }}
group by productid, productname, category, sub_category
