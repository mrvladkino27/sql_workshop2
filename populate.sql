---------------------------
-- Populate Manufacturer table
---------------------------
INSERT INTO Manufacturer(company_name)
VALUES('Toyota');
INSERT INTO Manufacturer(company_name)
VALUES('Volkswagen');
---------------------------
-- Populate Car_Model table
---------------------------
INSERT INTO Car_Model(model_name, model_manufactured)
VALUES('Corolla', 'Toyota');
INSERT INTO Car_Model(model_name, model_manufactured)
VALUES('Camry', 'Toyota');
INSERT INTO Car_Model(model_name, model_manufactured)
VALUES('Land Cruiser', 'Toyota');
INSERT INTO Car_Model(model_name, model_manufactured)
VALUES('Polo', 'Volkswagen');
INSERT INTO Car_Model(model_name, model_manufactured)
VALUES('Passat', 'Volkswagen');
INSERT INTO Car_Model(model_name, model_manufactured)
VALUES('Golf', 'Volkswagen');
---------------------------
-- Populate Color table
---------------------------
INSERT INTO Color(color_name)
VALUES('black');
INSERT INTO Color(color_name)
VALUES('white');
INSERT INTO Color(color_name)
VALUES('green');
INSERT INTO Color(color_name)
VALUES('grey');
---------------------------
-- Populate Car_Type table
---------------------------
INSERT INTO Car_Type(type_name)
VALUES('compact car');
INSERT INTO Car_Type(type_name)
VALUES('sedan');
INSERT INTO Car_Type(type_name)
VALUES('SUV');
---------------------------
-- Populate Fuel table
---------------------------
INSERT INTO Fuel(fuel_name)
VALUES('gas');
INSERT INTO Fuel(fuel_name)
VALUES('disel');
---------------------------
-- Populate Car table
---------------------------
INSERT INTO Car(car_vin, car_model, car_color, car_fuel, car_type, car_transmission, car_count_cylinders, car_year, car_mileage, car_condition, car_drive)
VALUES('1000000001', 'Corolla', 'black', 'gas', 'compact car', 'manual', 4, 2006, 10000, 'original', '2wd');
INSERT INTO Car(car_vin, car_model, car_color, car_fuel, car_type, car_transmission, car_count_cylinders, car_year, car_mileage, car_condition, car_drive)
VALUES('1000000002', 'Camry', 'white', 'gas', 'sedan', 'automatic', 8, 2010, 20000, 'original', '2wd');
INSERT INTO Car(car_vin, car_model, car_color, car_fuel, car_type, car_transmission, car_count_cylinders, car_year, car_mileage, car_condition, car_drive)
VALUES('1000000003', 'Polo', 'green', 'disel', 'compact car', 'manual', 4, 2005, 30000, 'rebuild', '2wd');
INSERT INTO Car(car_vin, car_model, car_color, car_fuel, car_type, car_transmission, car_count_cylinders, car_year, car_mileage, car_condition, car_drive)
VALUES('1000000004', 'Passat', 'grey', 'disel', 'sedan', 'manual', 6, 2011, 40000, 'pained', '2wd');
INSERT INTO Car(car_vin, car_model, car_color, car_fuel, car_type, car_transmission, car_count_cylinders, car_year, car_mileage, car_condition, car_drive)
VALUES('1000000005', 'Land Cruiser', 'white', 'gas', 'SUV', 'automatic', 8, 2010, 50000, 'original', '4wd');
INSERT INTO Car(car_vin, car_model, car_color, car_fuel, car_type, car_transmission, car_count_cylinders, car_year, car_mileage, car_condition, car_drive)
VALUES('1000000006', 'Golf', 'black', 'disel', 'compact car', 'manual', 4, 2017, 60000, 'pained', '2wd');
INSERT INTO Car(car_vin, car_model, car_color, car_fuel, car_type, car_transmission, car_count_cylinders, car_year, car_mileage, car_condition, car_drive)
VALUES('1000000007', 'Land Cruiser', 'white', 'dissel', 'SUV', 'automatic', 8, 2010, 50000, 'original', '4wd');
---------------------------
-- Populate Lot table
---------------------------
INSERT INTO Lot(lot_id, lot_region, lot_price, car_vin, lot_state, lot_lat, lot_long)
VALUES('1', 'lincoln', '5000$', '1000000001', 'mi', -18.32, 2.15);
INSERT INTO Lot(lot_id, lot_region, lot_price, car_vin, lot_state, lot_lat, lot_long)
VALUES('2', 'denver', '7000$', '1000000002', 'tx', -8.321, 12.15);
INSERT INTO Lot(lot_id, lot_region, lot_price, car_vin, lot_state, lot_lat, lot_long)
VALUES('3', 'new-jersey', '9000$', '1000000003', 'nj', -28.321, 4.15);
INSERT INTO Lot(lot_id, lot_region, lot_price, car_vin, lot_state, lot_lat, lot_long)
VALUES('4', 'denver', '10000$', '1000000004', 'tx', -38.321, 22.15);
INSERT INTO Lot(lot_id, lot_region, lot_price, car_vin, lot_state, lot_lat, lot_long)
VALUES('5', 'alabama', '15000$', '1000000005', 'vi', -11.321, 3.15);
INSERT INTO Lot(lot_id, lot_region, lot_price, car_vin, lot_state, lot_lat, lot_long)
VALUES('6', 'california', '15000$', '1000000007', 'vi', -11.321, 3.15);