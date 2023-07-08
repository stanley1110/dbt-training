select
    o.orderid,
    o.orderdate,
    o.shipdate,
    o.shipmode,
    o.ordersellingprice - o.ordercostprice as orderprofit,
    c.customername,
    c.country,
    c.segment,
    p.category,
    p.productname,
    p.sub_category
from {{ ref("raw_orders") }} as o
left join {{ ref("raw_customers") }} as c on o.customerid = c.customerid
left join {{ ref("raw_products") }} as p on o.productid = p.productid
