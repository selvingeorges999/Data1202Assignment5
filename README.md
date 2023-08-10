# Data1202Assignment5
Displaying fact and Dimension table
```sql
SELECT * FROM cars.car_data_facts;
SELECT * FROM car_data_dimensions;
```

Aletred table names
```sql
ALTER TABLE car_data_dimensions
RENAME COLUMN ï»¿CarKey TO CarKey;
ALTER TABLE car_data_facts
RENAME COLUMN ï»¿CarKey TO CarKey;
```

