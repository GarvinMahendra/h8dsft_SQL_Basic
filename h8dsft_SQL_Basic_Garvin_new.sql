-- Query peminjaman sepeda untuk Q1 Redwood City 2016
SELECT COUNT(*) AS total_trips_q1
FROM `bigquery-public-data.san_francisco.bikeshare_trips` AS trips
JOIN `bigquery-public-data.san_francisco.bikeshare_stations` AS stations
ON trips.start_station_id = stations.station_id
WHERE trips.subscriber_type = 'Subscriber'
AND trips.start_date >= TIMESTAMP('2016-01-01')
AND trips.start_date < TIMESTAMP('2016-04-01')
AND stations.landmark = 'Redwood City';

-- Query untuk membandingkan tingkat peminjaman sepeda pada Q2 tahun 2016
SELECT COUNT(*) AS total_trips_q2
FROM `bigquery-public-data.san_francisco.bikeshare_trips` AS trips
JOIN `bigquery-public-data.san_francisco.bikeshare_stations` AS stations
ON trips.start_station_id = stations.station_id
WHERE trips.subscriber_type = 'Subscriber'
AND trips.start_date >= TIMESTAMP('2016-04-01')
AND trips.start_date < TIMESTAMP('2016-07-01')
AND stations.landmark = 'Redwood City';