-- Write your query below
select employee_id, 
    CASE
        WHEN employee_id %2 != 0 
            AND name NOT LIKE 'M%' 
        THEN salary*1
        ELSE salary*0 
    END AS bonus
from employees
order by employee_id
