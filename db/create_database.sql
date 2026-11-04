-- Lab 3.2: baza de date si userul pentru aplicatia ParkingLot
-- Ruleaza ca root: mysql -u root -p < db/create_database.sql

CREATE DATABASE IF NOT EXISTS parkinglot;

CREATE USER IF NOT EXISTS 'ParkingLotUser'@'localhost' IDENTIFIED BY 'ParkingLotPassword';
CREATE USER IF NOT EXISTS 'ParkingLotUser'@'%' IDENTIFIED BY 'ParkingLotPassword';

-- Drepturi doar pe baza parkinglot, fara privilegii de administrare
GRANT ALL PRIVILEGES ON parkinglot.* TO 'ParkingLotUser'@'localhost';
GRANT ALL PRIVILEGES ON parkinglot.* TO 'ParkingLotUser'@'%';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'ParkingLotUser'@'localhost';
