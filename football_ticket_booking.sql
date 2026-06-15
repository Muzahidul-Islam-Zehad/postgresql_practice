-- problem 1: 
select match_id, fixture, base_ticket_price from matches
where tournament_category = 'Champions League' and match_status = 'Available';

-- problem 2:
select user_id, full_name, email from users
where full_name ilike 'Tanvir%' or full_name ilike '%Haque%';

-- problem 3:
select booking_id, user_id , match_id , coalesce(payment_status, 'Action Required') as systematic_status 
from bookings
where payment_status is null;

-- problem 4:
select booking_id, full_name, fixture, total_cost from bookings 
inner join users using(user_id)
inner join matches using(match_id);

-- problem 5:
select user_id, full_name, booking_id from users
left join bookings using(user_id);