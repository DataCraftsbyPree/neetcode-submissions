
SELECT DISTINCT sp.name
FROM sales_person sp
LEFT JOIN orders o
    ON sp.sales_id = o.sales_id
LEFT JOIN company c
    ON o.com_id = c.com_id
    AND c.name = 'CRIMSON'
GROUP BY sp.sales_id, sp.name
HAVING COUNT(c.com_id) = 0;
