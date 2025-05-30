USE sys;

CREATE TABLE pharmacy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pharmacyID VARCHAR(100),
    pharmacyLocation VARCHAR(200),
);
CREATE TABLE medicine (
    id INT PRIMARY KEY,  
    medicineID VARCHAR(100),
    price Float,
    prescriptionType boolean,
    heightt int,
    Weightt int,
);
CREATE TABLE prescription (
    id INT PRIMARY KEY, 
    mpID VARCHAR(50),
    TCKN VARCHAR(20),
    medicineID VARCHAR(100),
    barcodeNumber VARCHAR(100),
    prescriptionID VARCHAR(100) );

