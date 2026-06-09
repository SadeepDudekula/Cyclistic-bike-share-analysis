CREATE TABLE bike_trips (
    ride_id NVARCHAR(50),
    rideable_type NVARCHAR(50),
    started_at NVARCHAR(50),
    ended_at NVARCHAR(50),
    start_station_name NVARCHAR(255),
    start_station_id NVARCHAR(100),
    end_station_name NVARCHAR(255),
    end_station_id NVARCHAR(100),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual NVARCHAR(50)
)
