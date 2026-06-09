SELECT 
    member_casual,
    day_of_week,
    month,
    rideable_type,
    AVG(ride_length) AS avg_ride_length,
    COUNT(*) AS total_rides
FROM bike_trips_clean
GROUP BY member_casual, day_of_week, month, rideable_type
ORDER BY member_casual, total_rides DESC