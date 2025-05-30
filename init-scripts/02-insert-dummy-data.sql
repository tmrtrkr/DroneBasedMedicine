-- Insert dummy data into person table
INSERT INTO person (name, surname, TCKN, Age, insuranceType) VALUES
('Ahmet', 'Yılmaz', '12345678901', 45, true),
('Ayşe', 'Demir', '23456789012', 32, true),
('Mehmet', 'Kaya', '34567890123', 28, false),
('Fatma', 'Çelik', '45678901234', 55, true),
('Ali', 'Şahin', '56789012345', 40, true),
('Zeynep', 'Öztürk', '67890123456', 35, true),
('Mustafa', 'Arslan', '78901234567', 50, true),
('Elif', 'Yıldız', '89012345678', 42, false),
('Hasan', 'Korkmaz', '90123456789', 38, true),
('Selin', 'Aydın', '01234567890', 29, true);

-- Insert dummy data into medicalPractioner table
INSERT INTO medicalPractioner (id, profession, hospitalID, mpID) VALUES
(1, 'Cardiologist', 'HOSP001', 'MP001'),
(2, 'Neurologist', 'HOSP002', 'MP002'),
(6, 'Pediatrician', 'HOSP003', 'MP003'),
(7, 'Dermatologist', 'HOSP004', 'MP004'),
(8, 'Orthopedist', 'HOSP005', 'MP005');

-- Insert dummy data into patient table
INSERT INTO patient (id, PatientAddress, prescriptionID, diseases) VALUES
(3, 'Ankara, Çankaya', 'PRES001', '{"disease": "Hypertension", "diseaseID": "D001"}'),
(4, 'İstanbul, Kadıköy', 'PRES002', '{"disease": "Diabetes", "diseaseID": "D002"}'),
(5, 'İzmir, Karşıyaka', 'PRES003', '{"disease": "Asthma", "diseaseID": "D003"}'),
(9, 'Bursa, Nilüfer', 'PRES004', '{"disease": "Arthritis", "diseaseID": "D004"}'),
(10, 'Antalya, Muratpaşa', 'PRES005', '{"disease": "Migraine", "diseaseID": "D005"}');

-- Insert dummy data into pharmacy table
INSERT INTO pharmacy (pharmacyID, pharmacyLocation) VALUES
('PHARM001', 'Ankara, Kızılay'),
('PHARM002', 'İstanbul, Beşiktaş'),
('PHARM003', 'İzmir, Alsancak'),
('PHARM004', 'Bursa, Nilüfer'),
('PHARM005', 'Antalya, Muratpaşa'),
('PHARM006', 'Ankara, Çankaya'),
('PHARM007', 'İstanbul, Üsküdar'),
('PHARM008', 'İzmir, Bornova');

-- Insert dummy data into medicine table
INSERT INTO medicine (medicineID, price, prescriptionType, heightt, Weightt) VALUES
('MED001', 150.50, true, 10, 100),
('MED002', 75.25, false, 5, 50),
('MED003', 200.00, true, 15, 150),
('MED004', 125.75, true, 8, 80),
('MED005', 90.00, false, 6, 60),
('MED006', 175.25, true, 12, 120),
('MED007', 85.50, false, 7, 70),
('MED008', 210.00, true, 16, 160);

-- Insert dummy data into prescription table
INSERT INTO prescription (mpID, TCKN, medicineID, barcodeNumber, prescriptionID) VALUES
('MP001', '12345678901', 'MED001', 'BAR001', 'PRES001'),
('MP002', '23456789012', 'MED002', 'BAR002', 'PRES002'),
('MP001', '34567890123', 'MED003', 'BAR003', 'PRES003'),
('MP003', '45678901234', 'MED004', 'BAR004', 'PRES004'),
('MP004', '56789012345', 'MED005', 'BAR005', 'PRES005'),
('MP005', '67890123456', 'MED006', 'BAR006', 'PRES006'),
('MP003', '78901234567', 'MED007', 'BAR007', 'PRES007'),
('MP001', '89012345678', 'MED008', 'BAR008', 'PRES008');

-- Insert dummy data into e_nabiz_system table
INSERT INTO e_nabiz_system (application_information, prescriptionID) VALUES
('Regular checkup', 'PRES001'),
('Emergency', 'PRES002'),
('Follow-up', 'PRES003'),
('Routine checkup', 'PRES004'),
('Emergency', 'PRES005'),
('Regular checkup', 'PRES006'),
('Follow-up', 'PRES007'),
('Emergency', 'PRES008');

-- Insert dummy data into orderr table
INSERT INTO orderr (orderID, prescriptionID, totalPrice, orderDroneID, PatientAddress, orderType, orderSize) VALUES
('ORD001', 'PRES001', 150.50, 'DRONE001', 'Ankara, Çankaya', true, 1),
('ORD002', 'PRES002', 75.25, 'DRONE002', 'İstanbul, Kadıköy', false, 1),
('ORD003', 'PRES003', 200.00, 'DRONE003', 'İzmir, Karşıyaka', true, 2),
('ORD004', 'PRES004', 125.75, 'DRONE004', 'Bursa, Nilüfer', true, 1),
('ORD005', 'PRES005', 90.00, 'DRONE005', 'Antalya, Muratpaşa', false, 1),
('ORD006', 'PRES006', 175.25, 'DRONE006', 'Ankara, Çankaya', true, 2),
('ORD007', 'PRES007', 85.50, 'DRONE007', 'İstanbul, Üsküdar', false, 1),
('ORD008', 'PRES008', 210.00, 'DRONE008', 'İzmir, Bornova', true, 2);

-- Insert dummy data into drone table
INSERT INTO drone (DroneID, CurrentLocation, StationLocation, DroneCurrentSituation, stationID, carriedMedicineIDList, droneSize) VALUES
('DRONE001', 'Ankara, Kızılay', 'Station1', 1, 'ST001', '["MED001"]', '{"height": 50, "weight": 5}'),
('DRONE002', 'İstanbul, Beşiktaş', 'Station2', 0, 'ST002', '["MED002"]', '{"height": 45, "weight": 4}'),
('DRONE003', 'İzmir, Alsancak', 'Station3', 1, 'ST003', '["MED003"]', '{"height": 55, "weight": 6}'),
('DRONE004', 'Bursa, Nilüfer', 'Station4', 1, 'ST004', '["MED004"]', '{"height": 48, "weight": 5}'),
('DRONE005', 'Antalya, Muratpaşa', 'Station5', 0, 'ST005', '["MED005"]', '{"height": 52, "weight": 5}'),
('DRONE006', 'Ankara, Çankaya', 'Station6', 1, 'ST006', '["MED006"]', '{"height": 47, "weight": 4}'),
('DRONE007', 'İstanbul, Üsküdar', 'Station7', 0, 'ST007', '["MED007"]', '{"height": 51, "weight": 5}'),
('DRONE008', 'İzmir, Bornova', 'Station8', 1, 'ST008', '["MED008"]', '{"height": 53, "weight": 6}');

-- Insert dummy data into technicalStation table
INSERT INTO technicalStation (stationID, StationLocation, totalDroneCapacity, currentNumberofDrones, droneSize) VALUES
('ST001', 'Ankara, Kızılay', 10, 3, '{"height": 50, "weight": 5}'),
('ST002', 'İstanbul, Beşiktaş', 8, 2, '{"height": 45, "weight": 4}'),
('ST003', 'İzmir, Alsancak', 12, 4, '{"height": 55, "weight": 6}'),
('ST004', 'Bursa, Nilüfer', 9, 3, '{"height": 48, "weight": 5}'),
('ST005', 'Antalya, Muratpaşa', 7, 2, '{"height": 52, "weight": 5}'),
('ST006', 'Ankara, Çankaya', 11, 4, '{"height": 47, "weight": 4}'),
('ST007', 'İstanbul, Üsküdar', 8, 2, '{"height": 51, "weight": 5}'),
('ST008', 'İzmir, Bornova', 10, 3, '{"height": 53, "weight": 6}'); 