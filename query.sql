---------------------------
-- FIRST TASK
---------------------------
SELECT 
       MANUFACTURER.COMPANY_NAME,
       COUNT(CAR.CAR_VIN)
      FROM
        CAR JOIN LOT
            ON CAR.CAR_VIN = lot.car_vin
        JOIN CAR_MODEL
            ON CAR.CAR_MODEL = car_model.model_name
        JOIN MANUFACTURER
            ON car_model.model_manufactured = MANUFACTURER.COMPANY_NAME
            
             GROUP BY MANUFACTURER.COMPANY_NAME;
---------------------------
-- SECOND TASK
---------------------------
SELECT FUEL.FUEL_NAME,
    COUNT(FUEL.FUEL_NAME)/(
    SELECT COUNT(CAR.CAR_VIN)
    FROM CAR JOIN LOT ON CAR.CAR_VIN = LOT.CAR_VIN)
FROM 
    CAR JOIN LOT
    ON CAR.CAR_VIN = LOT.CAR_VIN
    JOIN FUEL ON CAR.CAR_FUEL = FUEL.FUEL_NAME
    GROUP BY FUEL.FUEL_NAME;

---------------------------
-- THIRD TASK
---------------------------
SELECT 
       CAR.CAR_YEAR,
       COUNT(CAR.CAR_VIN)
      FROM
        CAR
    GROUP BY CAR.CAR_YEAR;

     
