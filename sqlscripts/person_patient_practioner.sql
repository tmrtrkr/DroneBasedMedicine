USE sys;

CREATE TABLE person (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    surname VARCHAR(100),
    TCKN VARCHAR(20),
    Age INT (3),
    insuranceType boolean
);
CREATE TABLE medicalPractioner (
    id INT PRIMARY KEY,  
    profession VARCHAR(100),
    hospitalID VARCHAR(50),
    mpID VARCHAR(50) UNIQUE,
    FOREIGN KEY (id) REFERENCES person(id)
);
CREATE TABLE patient (
    id INT PRIMARY KEY,  
    PatientAddress VARCHAR(255),
    prescriptionID VARCHAR(50),
    diseases TEXT,  -- JSON{Disase,DisaseID}
    FOREIGN KEY (id) REFERENCES person(id)
);

