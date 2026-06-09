select
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual,
datediff(minute,started_at,ended_at) as ride_length,
datename(weekday,started_at) as day_of_week,
datename(month,started_at) as month
into bike_trips_clean
from bike_trips
where
start_station_name is not null 
and end_station_name is not null
and datediff(minute,started_at,ended_at) >= 1
and datediff(minute,started_at,ended_at) <= 1440


