/*

# Cleaning Data

*/

## -- Separating 'start_dates' and 'start_times' for a new format in the 'start_at' column


-- "Start_dates" --

Select started_at, CONVERT(Date,started_at)
From PortfolioProject.dbo.Cyclist


ALTER TABLE Cyclist
Add start_dates Date;

Update Cyclist
SET start_dates = CONVERT(Date,started_at)


Select top 50 start_dates
From PortfolioProject.dbo.Cyclist

-- "Start_times" -- 

Select top 50 started_at, CONVERT(time,started_at)
From PortfolioProject.dbo.Cyclist


ALTER TABLE Cyclist
Add start_times time;

Update Cyclist
SET start_times = CONVERT(time,started_at)



-- "Optimizing Date and Time Conversion for 'End_dates' and 'End_times'" --


SELECT TOP 50
    *,
    CONVERT(date, ended_at) AS end_date,
    CONVERT(time, ended_at) AS end_time
FROM PortfolioProject.dbo.Cyclist;

ALTER TABLE Cyclist
Add end_dates Date;

ALTER TABLE Cyclist
Add end_times Time;

UPDATE PortfolioProject.dbo.Cyclist
SET end_dates = CONVERT(date, ended_at),
    end_times = CONVERT(time, ended_at);


Select top 10 *
From PortfolioProject.dbo.Cyclist




## -- Deriving Ride Duration and Day of the Week Metrics


-- "Ride_Length using start_times and end_times" --


SELECT Top *,
    CONVERT(VARCHAR, (DATEDIFF(second, start_times, end_times) / 3600)) + ':' +
    RIGHT('0' + CONVERT(VARCHAR, ((DATEDIFF(second, start_times, end_times) % 3600) / 60)), 2) + ':' +
    RIGHT('0' + CONVERT(VARCHAR, (DATEDIFF(second, start_times, end_times) % 60)), 2) AS ride_length2
FROM [PortfolioProject].[dbo].[Cyclist];

ALTER TABLE Cyclist
Add ride_length Time;

UPDATE [PortfolioProject].[dbo].[Cyclist]
SET ride_length = CONVERT(VARCHAR, (DATEDIFF(second, start_times, end_times) / 3600)) + ':' +
    RIGHT('0' + CONVERT(VARCHAR, ((DATEDIFF(second, start_times, end_times) % 3600) / 60)), 2) + ':' +
    RIGHT('0' + CONVERT(VARCHAR, (DATEDIFF(second, start_times, end_times) % 60)), 2)

/*When converting the start_times and end_times i got this error message:
 Conversion failed when converting date and/or time from character string
*/

ALTER TABLE [PortfolioProject].[dbo].[Cyclist]
ALTER COLUMN ride_length VARCHAR(8);

UPDATE [PortfolioProject].[dbo].[Cyclist]
SET ride_length = CONCAT(
    CONVERT(VARCHAR(2), ABS(DATEDIFF(second, start_times, end_times) / 3600)),
    ':',
    RIGHT('0' + CONVERT(VARCHAR(2), ABS((DATEDIFF(second, start_times, end_times) % 3600) / 60)), 2),
    ':',
    RIGHT('0' + CONVERT(VARCHAR(2), ABS(DATEDIFF(second, start_times, end_times) % 60)), 2)
);


-- "Quantifying Ride Counts by Day of the Week" --

SELECT top 10 *,
    DATEPART(WEEKDAY, start_dates) AS day_of_week
FROM PortfolioProject.dbo.Cyclist;

ALTER TABLE PortfolioProject.dbo.Cyclist
ADD day_of_week INT;

UPDATE PortfolioProject.dbo.Cyclist
SET day_of_week = DATEPART(WEEKDAY, start_dates);


Select top 1000 ride_length 
From PortfolioProject.dbo.Cyclist

## -- Identifying Null Values 

SELECT *
FROM PortfolioProject.dbo.Cyclist
WHERE start_station_name IS NULL AND end_station_name IS NULL;

--Total number of Null = 427,449

SELECT *
FROM PortfolioProject.dbo.Cyclist
WHERE member_casual IS NULL

--Total number of Null = 0

SELECT *
FROM PortfolioProject.dbo.Cyclist
WHERE rideable_type IS NULL

--Total number of Null = 0

SELECT *
FROM PortfolioProject.dbo.Cyclist

-- Faster Query

SELECT *
FROM PortfolioProject.dbo.Cyclist
WHERE start_station_name IS NULL 
    OR end_station_name IS NULL 
    OR member_casual IS NULL 
    OR rideable_type IS NULL;






