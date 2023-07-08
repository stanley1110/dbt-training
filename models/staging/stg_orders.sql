select
--from order table
    o.orderid,
    o.orderdate,
    o.shipdate,
    o.shipmode,
    o.ordersellingprice - o.ordercostprice as orderprofit,
    --from customer table
    c.customerid,
    c.customername,
    c.country,
    c.segment,
    --from product table
    p.productid,
    p.category,
    p.productname,
    p.sub_category
from {{ ref("raw_orders") }} as o
left join {{ ref("raw_customers") }} as c on o.customerid = c.customerid
left join {{ ref("raw_products") }} as p on o.productid = p.productid
