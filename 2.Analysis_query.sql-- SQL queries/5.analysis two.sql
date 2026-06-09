select
member_casual,
avg(ride_length) as avg_casual
from bike_trips_clean
group by member_casual

select
member_casual,
day_of_week,
count(day_of_week)
from bike_trips_clean
group by member_casual , day_of_week
order by member_casual ,day_of_week desc

select
member_casual,
month,
count(month)
from bike_trips_clean
group by member_casual, month
order by member_casual,month

select
rideable_type,
count(rideable_type) c_rides,
member_casual
from bike_trips_clean
group by rideable_type , member_casual


select
count(member_casual) ,
member_casual
from bike_trips_clean
group by  member_casual
