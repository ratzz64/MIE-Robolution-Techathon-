
# Last 1 hour oders query for Bistro 92
This SQL query helps to show the customer orders placed inthe last one hour
It displays customer id,ordered items and the time of ordering
"Join" operation has been used for speedy filtering

## SQL CODE
```sql
SELECT 
    o.table_number,
    m.item_name,
    o.order_time
FROM 
    Orders o
JOIN 
    OrderItems oi ON o.order_id = oi.order_id
JOIN 
    MenuItems m ON oi.item_id = m.item_id
WHERE 
    o.order_time >= NOW() - INTERVAL 1 HOUR
ORDER BY 
    o.order_time DESC;
```

## Query Explanation 
### Orders o:
Main table containing order info
### JOIN OrderItems oi:
Links orders to specific items ordered
### WHERE o.order_time >= NOW() - INTERVAL 1 HOUR:
Filters only those orders placed within the last 60 minutes
### ORDER BY o.order_time DESC:
Shows the newest orders first for easy kitchen handling
