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
