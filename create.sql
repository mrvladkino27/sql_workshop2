----------------------
-- Creating tables
----------------------
CREATE TABLE Lot(
lot_id VARCHAR(20) NOT NULL
,lot_region VARCHAR(50) NOT NULL
,lot_price INT NOT NULL
,car_vin  VARCHAR(20) NOT NULL
,lot_state VARCHAR(5) NOT NULL
,lot_lat INT NOT NULL
,lot_long INT NOT NULL
);

CREATE TABLE Car(
car_vin VARCHAR(20) NOT NULL
, car_model VARCHAR(100) NOT NULL
, car_color VARCHAR(50) NOT NULL
,car_fuel VARCHAR(20) NOT NULL
,car_type VARCHAR(50) NOT NULL
,car_transmission VARCHAR(20) NOT NULL 
,car_count_cylinders INT NOT NULL
,car_year  INT NOT NULL
,car_mileage INT NOT NULL
,car_condition VARCHAR(50) NOT NULL
,car_drive VARCHAR(20) NOT NULL
);

CREATE TABLE Car_Model(
model_name VARCHAR(100) NOT NULL
,model_manufactured VARCHAR(50) NOT NULL
);

CREATE TABLE Manufactured(
company_name VARCHAR(50) NOT NULL
);

CREATE TABLE Color(
color_name VARCHAR(50) NOT NULL
);

CREATE TABLE Fuel(
fuel_name VARCHAR(20) NOT NULL
);

CREATE TABLE Car_Type(
type_name VARCHAR(50) NOT NULL
);
----------------------
-- Define primary keys
----------------------
ALTER TABLE Lot ADD CONSTRAINT PK_Lot PRIMARY KEY(lot_id);
ALTER TABLE Car ADD CONSTRAINT PK_Car PRIMARY KEY(car_vin);
ALTER TABLE Car_Model ADD CONSTRAINT PK_Car_Model PRIMARY KEY(model_name);
ALTER TABLE Color ADD CONSTRAINT PK_Color PRIMARY KEY(color_name);
ALTER TABLE Manufactured ADD CONSTRAINT PK_Manufactured PRIMARY KEY(company_name);
ALTER TABLE Fuel ADD CONSTRAINT PK_Fuel PRIMARY KEY(fuel_name);
ALTER TABLE Car_Type ADD CONSTRAINT PK_Car_Type PRIMARY KEY(type_name);
----------------------
-- Define foreign keys
----------------------
ALTER TABLE Lot
ADD CONSTRAINT FK_Lot_Car FOREIGN KEY (car_vin) REFERENCES Car (car_vin);
ALTER TABLE Car
ADD CONSTRAINT FK_Car_Model_Car FOREIGN KEY (car_model) REFERENCES Car_Model (model_name);
ALTER TABLE Car_Model
ADD CONSTRAINT FK_Manufactured_Model FOREIGN KEY (model_manufactured) REFERENCES Manufactured (company_name);
ALTER TABLE Car
ADD CONSTRAINT FK_Color_Car FOREIGN KEY (car_color) REFERENCES Color (color_name);
ALTER TABLE Car
ADD CONSTRAINT FK_Fuel_Car FOREIGN KEY (car_fuel) REFERENCES Fuel (fuel_name);
ALTER TABLE Car
ADD CONSTRAINT FK_Car_Type FOREIGN KEY (car_type) REFERENCES Car_Type (type_name);