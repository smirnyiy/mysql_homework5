CREATE VIEW CheapCars AS SELECT Name FROM Cars WHERE Cost<25000;

ALTER VIEW CheapCars AS SELECT Name FROM Cars WHERE Cost<30000;

CREATE VIEW CheapCars AS SELECT * FROM Cars WHERE name = "Audi" OR name = "Skoda";

SELECT an_name, an_price, ord_datetime
FROM Analysis
JOIN Orders
ON Analysis.an_id = Orders.ord_id
AND Orders.ord_datetime >= '2020-02-05'
AND Orders.ord_datetime <= '2020-02-12';

SELECT train_id, station, station_time
SUBTIME (LEAD(station_time) OVER(PARTITION BY train_id ORDER BY train_id), station_time)
AS time_to_next_station
FROM Trains;