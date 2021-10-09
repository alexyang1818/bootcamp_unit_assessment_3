SELECT * FROM stations;

SELECT sum(rides)
FROM ridership
	JOIN stations
		ON ridership.station_id = stations.map_id
WHERE stations.latitude <= 41.881;