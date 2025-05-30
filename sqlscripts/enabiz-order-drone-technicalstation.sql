USE sys;

CREATE TABLE e_nabiz_system (
    id INT AUTO_INCREMENT PRIMARY KEY,
    application_information text,
    prescriptionID VARCHAR(100)
);
CREATE TABLE orderr (
    id INT PRIMARY KEY,  
    orderID VARCHAR(100),
    prescriptionID VARCHAR(100),
    totalPrice float,
    orderDroneID VARCHAR(100),
    PatientAddress VARCHAR(255),
    orderType boolean,
    orderSize int

);
CREATE TABLE drone (
    id INT PRIMARY KEY, 
    DroneID VARCHAR(100),
    CurrentLocation VARCHAR(300),
    StationLocation VARCHAR(255),
    DroneCurrentSituation int,
    stationID VARCHAR(100),
    carriedMedicineIDList text, -- JSON {ID,ID,ID}
    droneSize text ); -- JSON {Height: Weight:}

    CREATE TABLE technicalStation (
    id INT PRIMARY KEY, 
    stationID VARCHAR(100),
    StationLocation VARCHAR(255),
    totalDroneCapacity int,
    currentNumberofDrones int, -- JSON {ID,ID,ID}
    droneSize text ); -- JSON {Height: Weight:}

