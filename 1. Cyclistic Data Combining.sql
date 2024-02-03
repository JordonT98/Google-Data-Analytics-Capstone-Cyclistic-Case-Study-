/*

# Aggregating all trip data into the BikeSharing database.

*/

SELECT*
FROM [PortfolioProject].[dbo].[202201]

/* Addressed data type inconsistencies by converting floats to nvarchar(255) for seamless consolidation. 
*/


SELECT CAST(end_station_id AS nvarchar(255)) AS end_station_id  FROM [PortfolioProject].[dbo].[202212]

SELECT TOP 200 end_station_id 
FROM [PortfolioProject].[dbo].[202212]

ALTER TABLE [PortfolioProject].[dbo].[202204]
ALTER COLUMN start_station_id NVARCHAR(255);

/* Consolidating the data post-conversion of data types.
*/

SELECT * INTO Cyclistic
FROM (
    SELECT * FROM [PortfolioProject].[dbo].[202201]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202202]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202203]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202204]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202205]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202206]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202207]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202208]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202209]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202210]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202211]
    UNION ALL
    SELECT * FROM [PortfolioProject].[dbo].[202212]
) AS CombinedData;


/*
Total Number of rows = 5667717
*/
