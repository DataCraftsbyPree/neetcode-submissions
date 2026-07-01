select name, 
case 
    when sum_of_distance is Null then 0
    else sum_of_distance
end as travelled_distance
from(
select name, sum(distance) as sum_of_distance
from users u
left join rides r
on u.id=r.user_id
group by r.user_id,u.name 
)
order by travelled_distance desc,name asc
