/*
Data Anaylsis 

*/

-- "Comparison of Rides between Members and Casual Cyclists"

select *
from PortFolioProject.dbo.Cyclist

SELECT member_casual, COUNT(*) AS count
FROM PortFolioProject.dbo.Cyclist
GROUP BY member_casual;


-- "Comparative Analysis: Weekly Ride Counts for Members and Casual Cyclists"

SELECT 
    member_casual,
    DATEPART(WEEKDAY, start_dates) AS weekday_number,
    COUNT(ride_id) AS number_of_rides
FROM 
    PortFolioProject.dbo.cyclist
WHERE 
    member_casual IS NOT NULL
GROUP BY 
    member_casual,
    DATEPART(WEEKDAY, start_dates)
	Order by 2;


-- "Comparison Of Weekly Riding Hours for Members and Casual Cyclists"

SELECT 
    CASE 
        WHEN DATEPART(HOUR, start_times) = 0 THEN '12 AM' -- Change '0 AM' to '12 AM'
        WHEN DATEPART(HOUR, start_times) < 12 THEN CONCAT(DATEPART(HOUR, start_times), ' AM')
        WHEN DATEPART(HOUR, start_times) = 12 THEN '12 PM' -- Change '0 PM' to '12 PM'
        ELSE CONCAT(DATEPART(HOUR, start_times) - 12, ' PM')
    END AS hour_of_day,
    member_casual,
    COUNT(ride_id) AS number_of_rides
FROM 
    PortFolioProject.dbo.cyclist
WHERE 
    member_casual IS NOT NULL
GROUP BY 
    DATEPART(HOUR, start_times),
    member_casual
ORDER BY 1;


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




	

