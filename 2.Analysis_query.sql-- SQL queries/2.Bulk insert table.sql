BULK INSERT bike_trips
FROM 'C:\Users\sadee\Downloads\Telegram Desktop\Cyclistic_Case_Study\cyclistic_combined.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);