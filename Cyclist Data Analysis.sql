/*
Data Anaylsis 

*/

-- "Comparison of Rides between Members and Casual Cyclists"

select *
from PortFolioProject.dbo.Cyclist

SELECT member_casual, COUNT(*) AS count
FROM PortFolioProject.dbo.Cyclist
GROUP BY member_casual;


-- "Average Ride Length Comparison for Members and Casual Cyclists Over the Week"

SELECT 
    member_casual,
    DATEPART(WEEKDAY, start_dates) AS day_of_week,
    AVG(DATEDIFF(SECOND, '00:00:00', ride_length)) AS avg_ride_length_hour
FROM 
    PortFolioProject.dbo.Cyclist
WHERE 
    DATEDIFF(SECOND, '00:00:00', ride_length) <= 54000
GROUP BY 
    member_casual,
    DATEPART(WEEKDAY, start_dates)
	order by 2;


-- "Maximum Ride Length Comparison for Members and Casual Cyclists Over the Week"

SELECT 
    member_casual,
    DATEPART(WEEKDAY, start_dates) AS day_of_week,
    Max(DATEDIFF(SECOND, '00:00:00', ride_length)) AS max_ride_length_hours
FROM 
    PortFolioProject.dbo.Cyclist
WHERE 
    DATEDIFF(SECOND, '00:00:00', ride_length) <= 54000
GROUP BY 
    member_casual,
    DATEPART(WEEKDAY, start_dates)
	order by 2;


-- "Identification of the Top 3 Most Utilized Bicycles by Member Type"

	WITH TopBikes AS (
    SELECT 
        rideable_type,
        member_casual,
        COUNT(*) AS ride_count
    FROM 
        PortFolioProject.dbo.Cyclist
    GROUP BY 
        rideable_type,
        member_casual
)
SELECT 
    *
FROM 
    TopBIKES;

-- "Analysis of Preferred Months for Members"

SELECT 
    member_casual,
    DATEPART(MONTH, start_dates) AS ride_month,
    COUNT(*) AS num_rides
FROM 
    PortFolioProject.dbo.Cyclist
GROUP BY 
    member_casual,
    DATEPART(YEAR, start_dates),
    DATEPART(MONTH, start_dates)
ORDER BY 
    member_casual,
    DATEPART(YEAR, start_dates),
    DATEPART(MONTH, start_dates);


-- "Annual Ride Totals per Member"

--SELECT 
--    member_casual,
--    DATEPART(YEAR, start_dates) AS ride_year,
--    COUNT(*) AS num_rides
--FROM 
--    PortFolioProject.dbo.Cyclist
--GROUP BY 
--    member_casual,
--    DATEPART(YEAR, start_dates);


-- "Top 10 Station Rankings by Member Type"



WITH StationRanks AS (
    SELECT 
        member_casual,
        start_station_name,
        COUNT(*) AS ride_count
    FROM 
        PortFolioProject.dbo.Cyclist
    WHERE 
        start_station_name IS NOT NULL
    GROUP BY 
        member_casual,
        start_station_name
)
SELECT 
    member_casual,
    start_station_name,
    ride_count
FROM 
    StationRanks
WHERE 
    member_casual IS NOT NULL
    AND start_station_name IS NOT NULL
Order by
     3 DESC;


-- "Aggregate Ride Counts by Member, Differentiated by Start and End Station Locations"

--Total Rides at End Station

SELECT 
    end_station_name,
    COUNT(*) AS total_rides
FROM 
    PortFolioProject.dbo.Cyclist
WHERE 
    member_casual IS NOT NULL
    AND end_station_name IS NOT NULL
GROUP BY 
    end_station_name;



--Total Rides at Start Station

SELECT 
    start_station_name,
    COUNT(*) AS total_rides
FROM 
    PortFolioProject.dbo.Cyclist
WHERE 
    member_casual IS NOT NULL
    AND start_station_name IS NOT NULL
GROUP BY 
    start_station_name;




	

