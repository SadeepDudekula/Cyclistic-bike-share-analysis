select
count(*) unq_ssn
from bike_trips
where start_station_name is null


select
count(*) unq_esn
from bike_trips
where end_station_name is null


select distinct 
member_casual
from bike_trips


select distinct 
rideable_type
from bike_trips

select
min(started_at) as early_date,

max(started_at) as latest_date
from bike_trips

select top 10
from bike_trips_clean