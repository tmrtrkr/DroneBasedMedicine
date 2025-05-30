-- Create tables
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    surname VARCHAR(100),
    TCKN VARCHAR(20),
    Age INTEGER,
    insuranceType BOOLEAN
);

CREATE TABLE medicalPractioner (
    id INTEGER PRIMARY KEY REFERENCES person(id),
    profession VARCHAR(100),
    hospitalID VARCHAR(50),
    mpID VARCHAR(50) UNIQUE
);

CREATE TABLE patient (
    id INTEGER PRIMARY KEY REFERENCES person(id),
    PatientAddress VARCHAR(255),
    prescriptionID VARCHAR(50),
    diseases TEXT
);

CREATE TABLE pharmacy (
    id SERIAL PRIMARY KEY,
    pharmacyID VARCHAR(100),
    pharmacyLocation VARCHAR(200)
);

CREATE TABLE medicine (
    id SERIAL PRIMARY KEY,
    medicineID VARCHAR(100),
    price FLOAT,
    prescriptionType BOOLEAN,
    heightt INTEGER,
    Weightt INTEGER
);

CREATE TABLE prescription (
    id SERIAL PRIMARY KEY,
    mpID VARCHAR(50),
    TCKN VARCHAR(20),
    medicineID VARCHAR(100),
    barcodeNumber VARCHAR(100),
    prescriptionID VARCHAR(100)
);

CREATE TABLE e_nabiz_system (
    id SERIAL PRIMARY KEY,
    application_information TEXT,
    prescriptionID VARCHAR(100)
);

CREATE TABLE orderr (
    id SERIAL PRIMARY KEY,
    orderID VARCHAR(100),
    prescriptionID VARCHAR(100),
    totalPrice FLOAT,
    orderDroneID VARCHAR(100),
    PatientAddress VARCHAR(255),
    orderType BOOLEAN,
    orderSize INTEGER
);

CREATE TABLE drone (
    id SERIAL PRIMARY KEY,
    DroneID VARCHAR(100),
    CurrentLocation VARCHAR(300),
    StationLocation VARCHAR(255),
    DroneCurrentSituation INTEGER,
    stationID VARCHAR(100),
    carriedMedicineIDList TEXT,
    droneSize TEXT
);

CREATE TABLE technicalStation (
    id SERIAL PRIMARY KEY,
    stationID VARCHAR(100),
    StationLocation VARCHAR(255),
    totalDroneCapacity INTEGER,
    currentNumberofDrones INTEGER,
    droneSize TEXT
); 