SELECT * FROM cars.car_data_facts;
SELECT * FROM car_data_dimensions;

ALTER TABLE car_data_dimensions
RENAME COLUMN ï»¿CarKey TO CarKey;

ALTER TABLE car_data_facts
RENAME COLUMN ï»¿CarKey TO CarKey;

CREATE VIEW combined_car_data AS
SELECT
    A.`CarKey`,
    A.`Engine Size (L)`,
    A.`Horsepower`,
    A.`Torque (Nm)`,
    A.`Top Speed (mph)`,
    A.`Mileage (MPG)`,
    A.`Price ($)`,
    A.`Sales Figures (Units Sold)`,
    B.`Car Make`,
    B.`Car Model`,
    B.`Year`,
    B.`Body Type`,
    B.`Color Options`,
    B.`Fuel Type`,
    B.`Safety Features`,
    B.`Entertainment Features`,
    B.`Interior Features`,
    B.`Exterior Features`
FROM car_data_facts A
INNER JOIN car_data_dimensions B ON A.CarKey = B.CarKey; 


SELECT * FROM combined_car_data;

-- How to get the Average Horsepower of each Car Make
SELECT
    `Car Make`,
    AVG(Horsepower) AS AverageHorsepower
FROM
    combined_car_data
GROUP BY
    `Car Make`;




