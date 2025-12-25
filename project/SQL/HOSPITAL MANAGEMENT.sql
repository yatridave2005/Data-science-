create database db1;
use db1;
CREATE TABLE Prescription (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    doctor_id INT,
    patient_id INT,
    medicine_name VARCHAR(100),
    dosage VARCHAR(50),
    duration VARCHAR(50),

    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15),
    address VARCHAR(255),
    blood_group VARCHAR(5)
);
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    purpose VARCHAR(200),
    status VARCHAR(20),

    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
CREATE TABLE Billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    appointment_id INT,
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    bill_date DATE,

    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);


INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Singh', 38, 'Female', '7119822051', 'Address 1', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Yadav', 42, 'Male', '9177484925', 'Address 2', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Kapoor', 65, 'Male', '6223904619', 'Address 3', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Mehta', 68, 'Male', '7946065537', 'Address 4', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Tara Mehta', 72, 'Female', '9905531988', 'Address 5', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Patel', 64, 'Male', '7146930557', 'Address 6', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Tara Singh', 64, 'Male', '6486259315', 'Address 7', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Kapoor', 16, 'Male', '8228185570', 'Address 8', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Yadav', 70, 'Female', '7567552879', 'Address 9', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Tara Kapoor', 27, 'Female', '6503654308', 'Address 10', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Kapoor', 40, 'Male', '6738152737', 'Address 11', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ira Shah', 24, 'Male', '7619444801', 'Address 12', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Riya Iyer', 19, 'Female', '6633673942', 'Address 13', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Tara Kapoor', 18, 'Female', '6916167244', 'Address 14', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Reddy', 38, 'Male', '8237368150', 'Address 15', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Kapoor', 8, 'Male', '9083789109', 'Address 16', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ira Mehta', 40, 'Male', '9267608754', 'Address 17', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Reyansh Singh', 53, 'Female', '6602804719', 'Address 18', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Reddy', 4, 'Female', '6177853344', 'Address 19', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Reddy', 48, 'Male', '9425726099', 'Address 20', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Yadav', 48, 'Female', '8108358957', 'Address 21', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Reddy', 34, 'Female', '8323958672', 'Address 22', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Riya Reddy', 7, 'Female', '6662967192', 'Address 23', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Shah', 73, 'Male', '9354377903', 'Address 24', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ira Yadav', 1, 'Female', '8260092621', 'Address 25', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Anaya Nair', 2, 'Female', '9901936256', 'Address 26', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Gupta', 24, 'Female', '6560872784', 'Address 27', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Shah', 10, 'Male', '7807744762', 'Address 28', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Gupta', 5, 'Female', '9199453951', 'Address 29', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Vihaan Nair', 38, 'Male', '8302543625', 'Address 30', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Anaya Gupta', 62, 'Male', '6297734410', 'Address 31', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Singh', 5, 'Male', '9672776300', 'Address 32', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Nair', 59, 'Female', '8419196946', 'Address 33', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Yadav', 75, 'Female', '8161304236', 'Address 34', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Riya Yadav', 9, 'Female', '6141356071', 'Address 35', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Shah', 35, 'Male', '7565556168', 'Address 36', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aanya Gupta', 67, 'Female', '9544687891', 'Address 37', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Iyer', 19, 'Female', '7994209884', 'Address 38', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Iyer', 50, 'Female', '8097329299', 'Address 39', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Singh', 17, 'Female', '7103249314', 'Address 40', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Vivaan Reddy', 52, 'Female', '9778539295', 'Address 41', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Gupta', 34, 'Male', '6566280917', 'Address 42', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Yadav', 44, 'Male', '9968353180', 'Address 43', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aditya Singh', 27, 'Male', '9707464744', 'Address 44', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Kapoor', 70, 'Male', '6186362048', 'Address 45', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Riya Shah', 65, 'Male', '6378201755', 'Address 46', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Mehta', 42, 'Male', '9320371384', 'Address 47', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Reddy', 26, 'Female', '8822427089', 'Address 48', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Mehta', 71, 'Female', '7815419993', 'Address 49', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Tara Nair', 10, 'Male', '9166495833', 'Address 50', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Mehta', 47, 'Male', '6210343358', 'Address 51', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Riya Mehta', 67, 'Male', '7335826364', 'Address 52', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Shah', 72, 'Female', '6097189357', 'Address 53', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Gupta', 74, 'Male', '6700933422', 'Address 54', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Shah', 78, 'Female', '7128088617', 'Address 55', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aanya Mehta', 23, 'Female', '6788258446', 'Address 56', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ira Kapoor', 39, 'Female', '7391210711', 'Address 57', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Shah', 20, 'Female', '6465540199', 'Address 58', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Kapoor', 78, 'Female', '6204753598', 'Address 59', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Mehta', 40, 'Male', '8618826842', 'Address 60', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Reddy', 18, 'Female', '6190936825', 'Address 61', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Riya Kapoor', 37, 'Male', '8251256366', 'Address 62', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Singh', 8, 'Female', '8811933146', 'Address 63', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Kapoor', 12, 'Female', '7049752381', 'Address 64', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Nair', 56, 'Male', '9010474859', 'Address 65', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Nair', 58, 'Male', '9920702017', 'Address 66', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Reddy', 28, 'Female', '8248082233', 'Address 67', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Iyer', 44, 'Female', '8979021821', 'Address 68', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Mehta', 73, 'Female', '6656986670', 'Address 69', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Reyansh Shah', 29, 'Male', '9269533160', 'Address 70', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Kapoor', 41, 'Female', '6613849200', 'Address 71', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Shah', 41, 'Female', '9555397474', 'Address 72', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Reddy', 29, 'Male', '8776553477', 'Address 73', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Anaya Patel', 23, 'Male', '8988736202', 'Address 74', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Patel', 21, 'Female', '8220267848', 'Address 75', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aanya Patel', 15, 'Female', '7370056641', 'Address 76', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Kavya Iyer', 56, 'Female', '8222278303', 'Address 77', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Vivaan Yadav', 11, 'Male', '8181305391', 'Address 78', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Gupta', 41, 'Female', '6117004994', 'Address 79', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Kavya Gupta', 55, 'Male', '6931364324', 'Address 80', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Yadav', 40, 'Male', '6263117261', 'Address 81', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Vihaan Yadav', 56, 'Male', '8602061392', 'Address 82', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Reddy', 46, 'Female', '7594089378', 'Address 83', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ira Singh', 53, 'Female', '8736011809', 'Address 84', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Shah', 24, 'Female', '9022236303', 'Address 85', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Iyer', 59, 'Male', '6896120935', 'Address 86', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Tara Nair', 70, 'Female', '8459459564', 'Address 87', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Kavya Yadav', 39, 'Female', '6964209187', 'Address 88', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Tara Nair', 2, 'Female', '7431832681', 'Address 89', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Shah', 46, 'Female', '8261376909', 'Address 90', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Patel', 60, 'Male', '8935969443', 'Address 91', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Patel', 49, 'Male', '9347442002', 'Address 92', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Riya Yadav', 76, 'Male', '6017132379', 'Address 93', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Mehta', 77, 'Female', '6312848582', 'Address 94', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Iyer', 28, 'Female', '9450178179', 'Address 95', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Nair', 53, 'Male', '7913192563', 'Address 96', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Singh', 39, 'Female', '6118422103', 'Address 97', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Yadav', 3, 'Male', '9735288441', 'Address 98', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Reddy', 8, 'Male', '9463332664', 'Address 99', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Reddy', 40, 'Male', '8262405886', 'Address 100', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aditya Nair', 56, 'Male', '9521527580', 'Address 101', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Shah', 78, 'Male', '7599697003', 'Address 102', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Reyansh Iyer', 62, 'Male', '9682771963', 'Address 103', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Kapoor', 34, 'Male', '7558909886', 'Address 104', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Nair', 34, 'Female', '7645746440', 'Address 105', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Gupta', 62, 'Female', '7419570251', 'Address 106', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Shah', 58, 'Male', '8135830274', 'Address 107', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Shah', 44, 'Female', '7814218719', 'Address 108', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Gupta', 46, 'Male', '8045958826', 'Address 109', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Mehta', 30, 'Male', '6968467468', 'Address 110', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Nair', 6, 'Male', '8214026202', 'Address 111', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Patel', 30, 'Female', '9543386012', 'Address 112', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aanya Mehta', 16, 'Female', '6550326862', 'Address 113', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Reyansh Iyer', 28, 'Male', '7977565158', 'Address 114', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Gupta', 53, 'Male', '6870200221', 'Address 115', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Yadav', 77, 'Female', '7772374070', 'Address 116', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Yadav', 32, 'Male', '8839988855', 'Address 117', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Kapoor', 6, 'Male', '8647513123', 'Address 118', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Mehta', 26, 'Female', '9967425033', 'Address 119', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aanya Shah', 52, 'Female', '8066650129', 'Address 120', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Reyansh Shah', 12, 'Male', '7998302417', 'Address 121', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Singh', 45, 'Male', '8142306547', 'Address 122', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Anaya Gupta', 60, 'Male', '8779748358', 'Address 123', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Patel', 28, 'Female', '7497672676', 'Address 124', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Reddy', 78, 'Female', '8153163300', 'Address 125', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Vihaan Singh', 67, 'Female', '6341759902', 'Address 126', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Singh', 27, 'Male', '7167838231', 'Address 127', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Iyer', 18, 'Male', '9877203719', 'Address 128', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aditya Yadav', 34, 'Male', '7827115197', 'Address 129', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Mehta', 33, 'Male', '8567878509', 'Address 130', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aanya Kapoor', 21, 'Female', '6421284652', 'Address 131', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Singh', 33, 'Female', '9672374886', 'Address 132', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Shah', 72, 'Female', '8568236867', 'Address 133', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Singh', 23, 'Female', '9956847139', 'Address 134', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Anaya Kapoor', 35, 'Female', '9076641802', 'Address 135', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Iyer', 28, 'Male', '8648321215', 'Address 136', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Reddy', 11, 'Male', '6548673229', 'Address 137', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Mehta', 70, 'Female', '8559607703', 'Address 138', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Anaya Reddy', 44, 'Female', '7500483272', 'Address 139', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sara Shah', 36, 'Female', '9126532575', 'Address 140', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Anaya Gupta', 1, 'Female', '6045371945', 'Address 141', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Anaya Shah', 19, 'Female', '8033906625', 'Address 142', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Reddy', 10, 'Male', '7929689114', 'Address 143', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Mehta', 39, 'Male', '8324598312', 'Address 144', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Singh', 51, 'Female', '6703263474', 'Address 145', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Patel', 64, 'Female', '7884249741', 'Address 146', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Nair', 74, 'Male', '8640489346', 'Address 147', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Vihaan Shah', 23, 'Female', '6317640580', 'Address 148', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Patel', 27, 'Female', '6065565039', 'Address 149', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Patel', 66, 'Male', '7257931031', 'Address 150', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Shah', 36, 'Male', '9476369257', 'Address 151', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ira Mehta', 10, 'Female', '7020768408', 'Address 152', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Vihaan Singh', 66, 'Female', '8871972098', 'Address 153', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Anaya Gupta', 19, 'Female', '8394428444', 'Address 154', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Gupta', 32, 'Female', '9569828054', 'Address 155', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Iyer', 55, 'Male', '7824229940', 'Address 156', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Mehta', 70, 'Male', '8386617856', 'Address 157', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Mehta', 47, 'Male', '6394941282', 'Address 158', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Iyer', 23, 'Male', '8550098573', 'Address 159', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Patel', 74, 'Male', '6338855614', 'Address 160', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Vivaan Singh', 29, 'Female', '7541237976', 'Address 161', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Iyer', 32, 'Male', '7848415703', 'Address 162', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ira Gupta', 44, 'Male', '9827824394', 'Address 163', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Kapoor', 18, 'Male', '9973501834', 'Address 164', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Patel', 8, 'Female', '9048235914', 'Address 165', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Singh', 20, 'Male', '9466539559', 'Address 166', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aanya Shah', 57, 'Male', '6384656387', 'Address 167', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Kavya Gupta', 63, 'Female', '8443723516', 'Address 168', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Iyer', 17, 'Female', '9527307892', 'Address 169', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Shah', 73, 'Female', '6816154368', 'Address 170', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aarav Iyer', 66, 'Female', '8386082434', 'Address 171', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Shah', 79, 'Female', '6231909407', 'Address 172', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Aanya Reddy', 23, 'Male', '6180419993', 'Address 173', 'A+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Rohan Kapoor', 33, 'Male', '9641564111', 'Address 174', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Singh', 13, 'Female', '9349787704', 'Address 175', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Yadav', 75, 'Male', '8455858461', 'Address 176', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Mehta', 14, 'Male', '7039996492', 'Address 177', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Krishna Yadav', 57, 'Female', '8873222814', 'Address 178', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Arjun Patel', 68, 'Female', '7235400485', 'Address 179', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Myra Shah', 32, 'Male', '8827999174', 'Address 180', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Reyansh Iyer', 76, 'Male', '6662845051', 'Address 181', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Reyansh Singh', 58, 'Male', '6748490395', 'Address 182', 'AB+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Reyansh Shah', 61, 'Female', '7152428607', 'Address 183', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Reddy', 13, 'Male', '6194925962', 'Address 184', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Kavya Gupta', 5, 'Male', '6361468044', 'Address 185', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Kavya Mehta', 7, 'Female', '8292666871', 'Address 186', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Shah', 70, 'Male', '9974286587', 'Address 187', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Nair', 50, 'Male', '7411863745', 'Address 188', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Gupta', 3, 'Male', '6199573705', 'Address 189', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Sai Mehta', 26, 'Female', '7136247198', 'Address 190', 'A-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Singh', 14, 'Male', '6405574362', 'Address 191', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Nair', 53, 'Female', '9656854520', 'Address 192', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ishaan Yadav', 28, 'Female', '8414265003', 'Address 193', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Vivaan Nair', 17, 'Male', '9619419123', 'Address 194', 'AB-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Riya Iyer', 26, 'Male', '9868193565', 'Address 195', 'O-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Riya Yadav', 79, 'Male', '7560325960', 'Address 196', 'O+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Ira Iyer', 22, 'Female', '7618981295', 'Address 197', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Reyansh Patel', 49, 'Female', '6918593030', 'Address 198', 'B+');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Nisha Mehta', 12, 'Female', '8914981005', 'Address 199', 'B-');
INSERT INTO Patients(name, age, gender, phone, address, blood_group) VALUES ('Diya Nair', 1, 'Female', '9535805451', 'Address 200', 'AB+');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aarav Yadav', 'Cardiology', '7234395039', 'doctor1@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Kavya Kapoor', 'Dermatology', '9535686206', 'doctor2@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Mehta', 'General Medicine', '7149612142', 'doctor3@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Shah', 'Neurology', '9198655507', 'doctor4@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Reyansh Shah', 'Cardiology', '9547050292', 'doctor5@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sara Patel', 'Dermatology', '7764653747', 'doctor6@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Patel', 'Pediatrics', '9006981355', 'doctor7@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ishaan Nair', 'Neurology', '7238096391', 'doctor8@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Gupta', 'Cardiology', '8036094921', 'doctor9@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Mehta', 'Cardiology', '8427122155', 'doctor10@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Gupta', 'Cardiology', '7688049938', 'doctor11@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Mehta', 'Oncology', '9795082324', 'doctor12@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Yadav', 'Orthopedics', '8198882713', 'doctor13@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Kapoor', 'General Medicine', '9802158637', 'doctor14@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Mehta', 'Dermatology', '8371249103', 'doctor15@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Singh', 'Orthopedics', '8509282044', 'doctor16@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Kapoor', 'Dermatology', '9256339263', 'doctor17@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Nair', 'Cardiology', '9447614472', 'doctor18@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vivaan Patel', 'Neurology', '9024460354', 'doctor19@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Patel', 'ENT', '8414791154', 'doctor20@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Nair', 'ENT', '9752723319', 'doctor21@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aarav Reddy', 'Oncology', '7326113691', 'doctor22@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Iyer', 'Oncology', '9816945929', 'doctor23@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vihaan Singh', 'Dermatology', '9191450024', 'doctor24@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Reddy', 'ENT', '9459048098', 'doctor25@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Reyansh Reddy', 'Dermatology', '8458805583', 'doctor26@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Singh', 'Cardiology', '8228676999', 'doctor27@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Shah', 'Oncology', '8827632195', 'doctor28@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ira Iyer', 'Neurology', '7523614033', 'doctor29@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Iyer', 'Neurology', '9052620871', 'doctor30@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Gupta', 'General Medicine', '9912709741', 'doctor31@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sara Iyer', 'ENT', '8725834955', 'doctor32@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Mehta', 'General Medicine', '8821257522', 'doctor33@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Anaya Iyer', 'Pediatrics', '7299899884', 'doctor34@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Singh', 'Cardiology', '8985831848', 'doctor35@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Rohan Gupta', 'Pediatrics', '9286487846', 'doctor36@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Anaya Reddy', 'ENT', '8075544779', 'doctor37@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Rohan Gupta', 'Pediatrics', '8553179849', 'doctor38@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Nair', 'General Medicine', '9244129315', 'doctor39@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ishaan Reddy', 'Oncology', '9372287062', 'doctor40@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Reddy', 'General Medicine', '7835763389', 'doctor41@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Yadav', 'Oncology', '8962076561', 'doctor42@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ira Mehta', 'Dermatology', '9523482209', 'doctor43@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Anaya Kapoor', 'Cardiology', '7134452265', 'doctor44@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ishaan Reddy', 'Cardiology', '9793809952', 'doctor45@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Iyer', 'General Medicine', '9691770092', 'doctor46@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vivaan Reddy', 'General Medicine', '9593730038', 'doctor47@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vivaan Patel', 'Neurology', '7258988471', 'doctor48@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aditya Reddy', 'Pediatrics', '9325198354', 'doctor49@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Nair', 'Cardiology', '7690838054', 'doctor50@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Rohan Patel', 'ENT', '7919499067', 'doctor51@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Patel', 'ENT', '9621746098', 'doctor52@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Singh', 'General Medicine', '9125438996', 'doctor53@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Diya Yadav', 'Pediatrics', '9779453628', 'doctor54@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Shah', 'General Medicine', '7166760585', 'doctor55@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Reyansh Yadav', 'Cardiology', '8260112761', 'doctor56@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Riya Patel', 'Neurology', '8161854459', 'doctor57@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Reyansh Patel', 'General Medicine', '9140487392', 'doctor58@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Reyansh Shah', 'General Medicine', '9637887009', 'doctor59@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sara Kapoor', 'General Medicine', '9431093982', 'doctor60@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Yadav', 'Neurology', '9751167463', 'doctor61@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Kavya Yadav', 'Orthopedics', '7418711268', 'doctor62@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Nair', 'ENT', '8402722586', 'doctor63@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Patel', 'Cardiology', '9893419638', 'doctor64@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aarav Singh', 'Cardiology', '9818765632', 'doctor65@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Iyer', 'Cardiology', '8879404702', 'doctor66@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vivaan Nair', 'Pediatrics', '9607595241', 'doctor67@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Patel', 'Cardiology', '8366995297', 'doctor68@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Nair', 'Pediatrics', '9350989360', 'doctor69@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sara Gupta', 'Cardiology', '8497476891', 'doctor70@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Anaya Shah', 'General Medicine', '9435567337', 'doctor71@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Riya Patel', 'Dermatology', '7980030377', 'doctor72@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Iyer', 'Pediatrics', '8675767406', 'doctor73@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Kapoor', 'Orthopedics', '8154803779', 'doctor74@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Shah', 'Orthopedics', '7897711903', 'doctor75@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Shah', 'Neurology', '8072856372', 'doctor76@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ishaan Kapoor', 'Dermatology', '8410315333', 'doctor77@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Gupta', 'ENT', '7831804364', 'doctor78@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Anaya Mehta', 'Orthopedics', '7391122861', 'doctor79@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Shah', 'Cardiology', '7973816053', 'doctor80@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Shah', 'Cardiology', '8343762666', 'doctor81@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Shah', 'General Medicine', '8633361025', 'doctor82@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Kapoor', 'Pediatrics', '8077371642', 'doctor83@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Diya Gupta', 'Pediatrics', '9116641761', 'doctor84@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vihaan Patel', 'Cardiology', '9050450196', 'doctor85@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Kapoor', 'ENT', '8585273854', 'doctor86@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vihaan Shah', 'Cardiology', '9377455316', 'doctor87@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aditya Yadav', 'Orthopedics', '9971545755', 'doctor88@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Singh', 'General Medicine', '7883560109', 'doctor89@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Nair', 'General Medicine', '7617005284', 'doctor90@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Iyer', 'Cardiology', '8023591667', 'doctor91@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ira Kapoor', 'ENT', '7045692422', 'doctor92@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Riya Singh', 'Oncology', '9311913942', 'doctor93@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sara Iyer', 'Oncology', '8757400299', 'doctor94@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Anaya Shah', 'General Medicine', '7539317442', 'doctor95@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ira Shah', 'Dermatology', '9946912427', 'doctor96@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Nair', 'Oncology', '7612132026', 'doctor97@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Nair', 'Pediatrics', '9543519624', 'doctor98@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aditya Mehta', 'Pediatrics', '9719319044', 'doctor99@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vihaan Patel', 'Pediatrics', '8780750513', 'doctor100@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Nair', 'Dermatology', '7182173155', 'doctor101@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ira Reddy', 'Neurology', '9462999258', 'doctor102@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Kavya Patel', 'Cardiology', '9028609442', 'doctor103@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vihaan Yadav', 'Cardiology', '7337587741', 'doctor104@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Rohan Gupta', 'Oncology', '7240746243', 'doctor105@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Iyer', 'Dermatology', '8406463899', 'doctor106@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Mehta', 'Neurology', '7582411124', 'doctor107@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Reddy', 'ENT', '8815750594', 'doctor108@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Kapoor', 'Cardiology', '8263810156', 'doctor109@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Anaya Iyer', 'Oncology', '9516556301', 'doctor110@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Gupta', 'Dermatology', '8142302225', 'doctor111@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Yadav', 'Neurology', '9761758601', 'doctor112@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Patel', 'Dermatology', '9821275397', 'doctor113@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aditya Kapoor', 'Cardiology', '9163420708', 'doctor114@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aarav Shah', 'Dermatology', '9382421705', 'doctor115@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vivaan Gupta', 'Pediatrics', '9397969553', 'doctor116@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vihaan Kapoor', 'General Medicine', '9343085537', 'doctor117@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Kapoor', 'ENT', '7033996893', 'doctor118@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aditya Gupta', 'Neurology', '9528058696', 'doctor119@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Diya Nair', 'Oncology', '7580105684', 'doctor120@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Mehta', 'Cardiology', '8244862268', 'doctor121@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Iyer', 'Dermatology', '9524747737', 'doctor122@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Shah', 'Cardiology', '8739600336', 'doctor123@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aarav Gupta', 'Orthopedics', '9760126821', 'doctor124@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Iyer', 'Cardiology', '9819997180', 'doctor125@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Gupta', 'Orthopedics', '8914756758', 'doctor126@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Shah', 'Pediatrics', '8017687550', 'doctor127@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Diya Patel', 'Pediatrics', '7528957200', 'doctor128@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Riya Reddy', 'Orthopedics', '8201989649', 'doctor129@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Kapoor', 'ENT', '7759478710', 'doctor130@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sara Nair', 'ENT', '7416876395', 'doctor131@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sara Iyer', 'Cardiology', '8011377543', 'doctor132@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Singh', 'ENT', '9606434688', 'doctor133@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ira Yadav', 'Orthopedics', '8480430398', 'doctor134@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Gupta', 'Pediatrics', '9566175404', 'doctor135@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ira Shah', 'Oncology', '8211825542', 'doctor136@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aditya Patel', 'General Medicine', '9249051032', 'doctor137@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Anaya Kapoor', 'ENT', '9611267016', 'doctor138@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Singh', 'Orthopedics', '9660739371', 'doctor139@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Yadav', 'Cardiology', '8859955334', 'doctor140@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aditya Nair', 'General Medicine', '8197593006', 'doctor141@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Riya Patel', 'Cardiology', '8401745936', 'doctor142@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vihaan Gupta', 'Dermatology', '7343266861', 'doctor143@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Shah', 'Cardiology', '8301605067', 'doctor144@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Anaya Patel', 'Dermatology', '9918457768', 'doctor145@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Kapoor', 'General Medicine', '8252571564', 'doctor146@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Kapoor', 'Oncology', '9834081519', 'doctor147@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Nisha Patel', 'Cardiology', '9917418235', 'doctor148@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Rohan Gupta', 'Cardiology', '8699021972', 'doctor149@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Shah', 'ENT', '9778331005', 'doctor150@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Yadav', 'Oncology', '9346159039', 'doctor151@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Reddy', 'Cardiology', '8779143880', 'doctor152@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Diya Mehta', 'Pediatrics', '7273352754', 'doctor153@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Rohan Yadav', 'Cardiology', '8917644274', 'doctor154@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Kavya Iyer', 'Dermatology', '9227467236', 'doctor155@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Kavya Mehta', 'Oncology', '9725210738', 'doctor156@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Singh', 'Neurology', '9994600539', 'doctor157@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Iyer', 'Dermatology', '8809310216', 'doctor158@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Rohan Singh', 'Pediatrics', '7642323209', 'doctor159@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Riya Singh', 'ENT', '9411120436', 'doctor160@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ira Iyer', 'Pediatrics', '8131821665', 'doctor161@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Mehta', 'Oncology', '9508464933', 'doctor162@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Ishaan Iyer', 'ENT', '9104475633', 'doctor163@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Diya Yadav', 'Neurology', '9667173163', 'doctor164@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Singh', 'Neurology', '9060868031', 'doctor165@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aditya Mehta', 'General Medicine', '7809136754', 'doctor166@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aditya Singh', 'Dermatology', '7478685573', 'doctor167@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Singh', 'Dermatology', '8296756744', 'doctor168@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vivaan Shah', 'Pediatrics', '7454630254', 'doctor169@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Anaya Gupta', 'Oncology', '8764109215', 'doctor170@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aarav Kapoor', 'Orthopedics', '8716248872', 'doctor171@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Mehta', 'Pediatrics', '9846164421', 'doctor172@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sara Mehta', 'Cardiology', '7377269581', 'doctor173@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Riya Patel', 'Oncology', '8669403886', 'doctor174@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vihaan Yadav', 'Orthopedics', '9579980318', 'doctor175@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Krishna Nair', 'Oncology', '9741152278', 'doctor176@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Gupta', 'Cardiology', '8492575348', 'doctor177@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aarav Singh', 'Orthopedics', '7728022757', 'doctor178@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Kapoor', 'Cardiology', '8076552047', 'doctor179@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vivaan Shah', 'Orthopedics', '7747544979', 'doctor180@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vihaan Reddy', 'Neurology', '9250901703', 'doctor181@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Mehta', 'Cardiology', '8681998127', 'doctor182@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sai Shah', 'Dermatology', '9862997033', 'doctor183@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Kapoor', 'Neurology', '9547939880', 'doctor184@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Singh', 'Pediatrics', '9311658046', 'doctor185@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Kavya Nair', 'Orthopedics', '9737297632', 'doctor186@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Kapoor', 'Oncology', '9642509073', 'doctor187@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Patel', 'Dermatology', '7692712510', 'doctor188@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vihaan Kapoor', 'Neurology', '9290062109', 'doctor189@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Singh', 'General Medicine', '8049022824', 'doctor190@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Tara Kapoor', 'General Medicine', '8204393095', 'doctor191@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Vivaan Shah', 'Pediatrics', '8710532294', 'doctor192@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Sara Reddy', 'Neurology', '7726734165', 'doctor193@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Arjun Nair', 'Neurology', '8932166655', 'doctor194@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Reyansh Nair', 'Dermatology', '7960621752', 'doctor195@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Myra Yadav', 'Cardiology', '9745993742', 'doctor196@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Kavya Yadav', 'Pediatrics', '9586306702', 'doctor197@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Riya Iyer', 'General Medicine', '8944860636', 'doctor198@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aditya Singh', 'General Medicine', '7666352317', 'doctor199@hospital.com');
INSERT INTO Doctors(name, specialization, phone, email) VALUES ('Aanya Iyer', 'ENT', '7628620925', 'doctor200@hospital.com');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (172, 1, '2025-05-20', '16:30:00', 'Follow-up', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (31, 42, '2024-12-17', '11:15:00', 'Routine Checkup', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (98, 165, '2024-01-16', '16:30:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (198, 71, '2024-10-10', '9:45:00', 'Injury', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (149, 108, '2025-12-22', '15:15:00', 'Stomach Pain', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (94, 31, '2024-08-04', '9:00:00', 'Routine Checkup', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (49, 152, '2025-03-03', '9:30:00', 'Follow-up', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (188, 93, '2024-05-10', '10:15:00', 'Cough', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (62, 92, '2024-07-04', '14:00:00', 'Follow-up', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (10, 183, '2024-12-10', '13:45:00', 'Routine Checkup', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (74, 182, '2024-10-14', '16:15:00', 'Injury', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (185, 53, '2025-02-19', '12:45:00', 'Cough', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (166, 13, '2024-09-14', '10:45:00', 'Headache', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (89, 129, '2025-06-16', '16:15:00', 'Headache', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (10, 132, '2025-03-02', '9:45:00', 'Routine Checkup', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (137, 13, '2024-08-10', '16:30:00', 'Stomach Pain', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (44, 63, '2024-02-17', '14:30:00', 'Skin Rash', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (140, 152, '2024-12-07', '17:45:00', 'Follow-up', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (82, 128, '2024-12-04', '12:30:00', 'Cough', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (128, 107, '2024-07-08', '17:30:00', 'Routine Checkup', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (192, 196, '2024-09-06', '11:00:00', 'Injury', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (126, 132, '2024-02-27', '16:15:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (28, 7, '2024-08-10', '12:00:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (114, 119, '2025-12-04', '13:30:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (165, 128, '2024-07-11', '14:15:00', 'Fever', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (166, 63, '2024-01-05', '15:30:00', 'Cough', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (57, 25, '2024-12-24', '11:45:00', 'Headache', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (93, 167, '2024-10-30', '10:45:00', 'Cough', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (57, 142, '2025-02-21', '9:00:00', 'Injury', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (173, 156, '2024-06-04', '14:15:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (62, 40, '2024-02-07', '17:15:00', 'Follow-up', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (80, 146, '2024-04-07', '14:00:00', 'Skin Rash', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (177, 168, '2024-03-22', '17:30:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (98, 76, '2024-06-08', '12:30:00', 'Cough', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (182, 191, '2024-05-15', '15:15:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (172, 136, '2024-09-22', '14:45:00', 'Cough', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (39, 191, '2025-04-20', '10:30:00', 'Skin Rash', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (58, 122, '2025-10-14', '14:15:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (135, 153, '2025-05-15', '12:45:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (14, 27, '2025-09-27', '9:45:00', 'Stomach Pain', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (98, 107, '2024-12-08', '9:00:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (71, 111, '2025-02-22', '15:15:00', 'Injury', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (146, 19, '2025-12-15', '15:15:00', 'Follow-up', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (184, 106, '2024-01-08', '15:00:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (109, 40, '2024-12-27', '17:30:00', 'Injury', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (33, 149, '2025-08-28', '15:00:00', 'Headache', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (33, 18, '2025-07-16', '14:00:00', 'Injury', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (20, 198, '2025-01-11', '9:30:00', 'Cough', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (83, 104, '2025-09-10', '13:15:00', 'Routine Checkup', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (154, 171, '2025-05-03', '9:00:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (190, 104, '2024-08-18', '12:00:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (139, 166, '2024-11-21', '10:45:00', 'Headache', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (152, 70, '2024-06-06', '11:45:00', 'Skin Rash', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (57, 196, '2025-03-19', '10:15:00', 'Routine Checkup', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (143, 44, '2024-12-02', '15:45:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (94, 183, '2025-11-25', '15:30:00', 'Injury', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (112, 19, '2024-08-03', '17:00:00', 'Fever', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (136, 71, '2024-01-30', '9:45:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (112, 85, '2025-10-23', '10:00:00', 'Cough', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (155, 25, '2025-11-16', '17:00:00', 'Injury', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (188, 27, '2024-02-25', '14:45:00', 'Injury', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (163, 118, '2024-01-22', '9:30:00', 'Skin Rash', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (57, 96, '2025-10-24', '16:00:00', 'Skin Rash', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (139, 60, '2024-12-24', '13:45:00', 'Routine Checkup', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (65, 176, '2025-03-29', '17:00:00', 'Injury', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (200, 116, '2024-08-04', '15:15:00', 'Headache', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (72, 74, '2025-05-10', '9:45:00', 'Cough', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (177, 103, '2024-12-30', '10:15:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (176, 128, '2024-01-06', '10:30:00', 'Follow-up', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (16, 137, '2025-08-13', '9:30:00', 'Routine Checkup', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (37, 178, '2025-04-15', '13:45:00', 'Stomach Pain', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (77, 186, '2025-06-29', '16:00:00', 'Stomach Pain', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (114, 104, '2024-01-30', '12:00:00', 'Skin Rash', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (45, 160, '2024-01-18', '17:30:00', 'Skin Rash', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (118, 163, '2024-09-05', '9:15:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (80, 45, '2024-09-30', '12:00:00', 'Follow-up', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (1, 180, '2025-02-12', '13:45:00', 'Headache', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (96, 144, '2025-07-06', '16:15:00', 'Skin Rash', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (161, 184, '2025-02-17', '10:45:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (94, 139, '2024-11-09', '15:00:00', 'Follow-up', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (68, 61, '2025-04-05', '14:00:00', 'Routine Checkup', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (23, 113, '2025-09-04', '13:45:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (148, 78, '2025-08-10', '16:00:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (4, 127, '2024-05-06', '14:30:00', 'Injury', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (188, 44, '2025-03-02', '16:00:00', 'Follow-up', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (134, 139, '2025-10-12', '12:15:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (144, 65, '2024-08-06', '11:00:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (59, 139, '2024-01-30', '15:45:00', 'Follow-up', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (19, 22, '2025-12-15', '10:15:00', 'Follow-up', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (127, 186, '2024-12-11', '11:15:00', 'Stomach Pain', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (58, 61, '2025-08-27', '11:30:00', 'Stomach Pain', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (89, 152, '2025-07-30', '13:00:00', 'Stomach Pain', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (70, 31, '2024-10-17', '16:45:00', 'Headache', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (150, 198, '2024-09-20', '17:30:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (41, 23, '2025-04-21', '11:30:00', 'Injury', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (179, 66, '2025-12-08', '11:15:00', 'Fever', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (15, 100, '2024-02-11', '12:30:00', 'Cough', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (114, 58, '2025-03-11', '13:45:00', 'Injury', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (58, 48, '2024-09-19', '15:30:00', 'Cough', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (19, 161, '2024-08-14', '12:30:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (87, 49, '2024-12-04', '13:15:00', 'Stomach Pain', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (125, 55, '2025-05-29', '13:30:00', 'Headache', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (78, 57, '2025-06-10', '12:45:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (11, 137, '2025-01-19', '11:15:00', 'Skin Rash', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (193, 96, '2025-01-06', '11:15:00', 'Follow-up', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (195, 53, '2024-04-15', '16:00:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (86, 2, '2025-06-25', '16:45:00', 'Fever', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (4, 45, '2025-01-07', '12:30:00', 'Injury', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (157, 188, '2025-05-01', '16:15:00', 'Stomach Pain', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (133, 167, '2025-12-30', '16:45:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (129, 45, '2025-07-27', '11:45:00', 'Stomach Pain', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (175, 5, '2025-03-04', '11:45:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (200, 42, '2025-12-26', '15:15:00', 'Follow-up', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (14, 91, '2025-06-18', '16:15:00', 'Stomach Pain', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (80, 9, '2024-05-29', '17:00:00', 'Routine Checkup', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (41, 25, '2025-11-10', '10:15:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (110, 41, '2025-05-28', '10:00:00', 'Follow-up', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (117, 61, '2025-08-03', '16:30:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (191, 82, '2025-11-25', '9:15:00', 'Injury', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (25, 138, '2024-05-08', '13:45:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (141, 133, '2024-01-20', '10:45:00', 'Stomach Pain', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (193, 119, '2024-04-13', '17:00:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (45, 178, '2024-06-22', '12:15:00', 'Headache', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (157, 9, '2024-08-27', '14:30:00', 'Injury', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (54, 126, '2024-03-23', '9:15:00', 'Injury', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (188, 144, '2025-01-22', '15:00:00', 'Cough', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (23, 139, '2024-01-23', '13:30:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (184, 149, '2024-09-11', '17:45:00', 'Follow-up', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (165, 17, '2025-11-02', '14:15:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (200, 105, '2024-03-20', '11:30:00', 'Headache', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (158, 43, '2025-04-15', '16:45:00', 'Headache', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (181, 82, '2024-10-28', '12:30:00', 'Injury', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (97, 106, '2024-07-01', '10:00:00', 'Skin Rash', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (128, 27, '2025-05-10', '14:15:00', 'Injury', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (5, 32, '2025-11-12', '10:30:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (58, 33, '2024-12-16', '10:15:00', 'Stomach Pain', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (78, 6, '2024-09-13', '10:15:00', 'Skin Rash', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (47, 129, '2024-01-05', '15:45:00', 'Routine Checkup', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (58, 77, '2025-12-15', '15:30:00', 'Follow-up', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (198, 194, '2025-11-16', '9:45:00', 'Injury', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (160, 103, '2024-03-05', '12:45:00', 'Injury', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (103, 199, '2025-02-08', '13:00:00', 'Skin Rash', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (186, 60, '2025-07-13', '15:30:00', 'Stomach Pain', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (39, 76, '2024-09-05', '9:00:00', 'Routine Checkup', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (138, 54, '2024-06-21', '15:45:00', 'Routine Checkup', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (76, 91, '2024-06-12', '9:45:00', 'Skin Rash', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (90, 190, '2025-04-25', '14:00:00', 'Headache', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (30, 158, '2024-04-16', '15:45:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (113, 104, '2024-05-11', '9:30:00', 'Stomach Pain', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (153, 35, '2025-01-05', '13:45:00', 'Fever', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (79, 20, '2024-11-26', '10:45:00', 'Headache', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (181, 53, '2024-07-20', '17:45:00', 'Cough', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (11, 91, '2024-11-09', '16:30:00', 'Routine Checkup', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (135, 167, '2024-08-25', '12:30:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (181, 109, '2024-06-29', '13:45:00', 'Injury', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (15, 52, '2025-03-28', '14:30:00', 'Follow-up', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (177, 189, '2024-03-30', '11:00:00', 'Routine Checkup', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (125, 179, '2024-09-30', '12:15:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (130, 27, '2025-02-04', '17:45:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (116, 60, '2025-04-21', '12:15:00', 'Skin Rash', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (51, 3, '2025-04-21', '10:45:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (99, 37, '2024-06-05', '16:00:00', 'Skin Rash', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (148, 183, '2024-03-30', '12:15:00', 'Fever', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (157, 11, '2025-06-09', '15:30:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (70, 46, '2024-05-20', '11:30:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (16, 148, '2025-07-04', '17:30:00', 'Stomach Pain', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (15, 39, '2024-11-30', '14:00:00', 'Headache', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (153, 197, '2025-07-20', '10:15:00', 'Skin Rash', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (2, 9, '2025-01-05', '12:00:00', 'Skin Rash', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (47, 65, '2024-02-22', '17:45:00', 'Fever', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (28, 63, '2025-01-27', '12:00:00', 'Follow-up', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (22, 8, '2024-05-09', '11:30:00', 'Stomach Pain', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (90, 197, '2024-05-23', '12:45:00', 'Injury', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (67, 190, '2025-01-31', '13:15:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (136, 87, '2025-07-17', '10:30:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (181, 36, '2024-02-16', '17:00:00', 'Stomach Pain', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (181, 130, '2024-12-04', '9:45:00', 'Skin Rash', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (113, 116, '2024-04-24', '14:45:00', 'Cough', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (47, 39, '2025-01-08', '14:00:00', 'Follow-up', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (175, 51, '2024-01-22', '15:30:00', 'Routine Checkup', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (76, 114, '2025-08-24', '16:15:00', 'Stomach Pain', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (145, 76, '2025-08-17', '9:15:00', 'Skin Rash', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (189, 72, '2024-05-02', '13:30:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (117, 141, '2024-11-18', '11:45:00', 'Follow-up', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (42, 144, '2024-04-17', '12:45:00', 'Headache', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (9, 106, '2024-04-04', '15:45:00', 'Fever', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (31, 87, '2025-04-21', '16:30:00', 'Headache', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (42, 137, '2024-03-31', '13:00:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (174, 183, '2024-03-06', '11:15:00', 'Fever', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (113, 15, '2025-04-09', '13:45:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (6, 69, '2024-06-21', '13:30:00', 'Fever', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (133, 121, '2024-10-07', '10:45:00', 'Follow-up', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (96, 179, '2025-01-10', '13:30:00', 'Cough', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (101, 96, '2025-02-16', '15:00:00', 'Fever', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (155, 71, '2025-03-04', '17:30:00', 'Fever', 'Cancelled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (171, 95, '2025-03-05', '17:00:00', 'Skin Rash', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (152, 65, '2024-03-08', '12:45:00', 'Routine Checkup', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (154, 78, '2025-08-28', '13:00:00', 'Cough', 'Scheduled');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (97, 108, '2025-07-18', '9:15:00', 'Headache', 'Completed');
INSERT INTO Appointments(patient_id, doctor_id, appointment_date, appointment_time, purpose, status) VALUES (178, 101, '2025-07-26', '14:45:00', 'Injury', 'Cancelled');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (180, 137, 1004, 'Unpaid', '2024-12-27');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (82, 59, 1711, 'Unpaid', '2025-06-23');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (199, 15, 2580, 'Paid', '2024-04-09');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (91, 66, 930, 'Unpaid', '2025-03-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (110, 42, 360, 'Unpaid', '2025-10-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (40, 147, 901, 'Paid', '2024-03-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (65, 12, 2568, 'Unpaid', '2025-01-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (17, 19, 1059, 'Paid', '2024-07-21');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (57, 91, 1780, 'Unpaid', '2025-02-09');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (55, 165, 2257, 'Unpaid', '2025-11-19');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (43, 48, 2547, 'Paid', '2024-09-08');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (43, 98, 1346, 'Paid', '2025-08-21');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (154, 131, 2569, 'Paid', '2025-06-05');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (67, 125, 614, 'Paid', '2024-09-08');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (187, 142, 2100, 'Unpaid', '2025-04-22');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (109, 181, 2434, 'Paid', '2024-09-12');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (45, 137, 2763, 'Paid', '2024-09-30');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (83, 154, 818, 'Unpaid', '2024-05-29');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (47, 24, 553, 'Paid', '2024-07-03');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (134, 177, 2827, 'Paid', '2025-06-08');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (51, 130, 2880, 'Paid', '2024-08-03');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (130, 46, 1010, 'Paid', '2025-04-10');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (77, 98, 2799, 'Unpaid', '2025-03-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (132, 79, 1950, 'Paid', '2025-02-02');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (132, 108, 1112, 'Unpaid', '2025-05-23');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (116, 10, 1986, 'Unpaid', '2025-02-20');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (14, 138, 2387, 'Paid', '2025-12-04');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (60, 166, 1238, 'Unpaid', '2024-10-04');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (124, 53, 1473, 'Unpaid', '2025-11-11');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (46, 63, 2898, 'Paid', '2025-11-19');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (88, 67, 2790, 'Paid', '2024-05-15');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (130, 138, 945, 'Paid', '2024-03-22');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (116, 100, 2422, 'Paid', '2025-01-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (27, 59, 2564, 'Unpaid', '2024-10-31');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (61, 147, 2426, 'Paid', '2024-05-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (39, 172, 986, 'Paid', '2025-01-16');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (55, 150, 361, 'Unpaid', '2025-06-21');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (59, 160, 1809, 'Unpaid', '2025-10-03');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (189, 46, 1705, 'Unpaid', '2025-05-22');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (106, 188, 1258, 'Unpaid', '2025-01-05');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (104, 40, 2309, 'Paid', '2025-02-14');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (181, 200, 1768, 'Unpaid', '2025-04-29');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (68, 100, 2103, 'Paid', '2025-05-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (186, 75, 2359, 'Unpaid', '2024-03-12');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (150, 23, 1129, 'Unpaid', '2025-08-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (53, 87, 1127, 'Paid', '2025-05-17');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (102, 48, 1108, 'Unpaid', '2025-03-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (169, 68, 1363, 'Paid', '2025-08-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (108, 190, 2321, 'Paid', '2024-08-04');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (187, 129, 454, 'Unpaid', '2025-01-09');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (91, 43, 2032, 'Unpaid', '2024-09-20');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (55, 160, 1124, 'Unpaid', '2024-08-05');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (147, 175, 434, 'Paid', '2024-12-15');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (80, 94, 793, 'Paid', '2025-12-17');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (167, 62, 477, 'Paid', '2025-06-22');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (98, 80, 1917, 'Unpaid', '2024-01-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (33, 64, 1769, 'Paid', '2025-12-31');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (54, 115, 736, 'Unpaid', '2024-02-21');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (106, 58, 450, 'Unpaid', '2025-02-25');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (133, 180, 2097, 'Unpaid', '2025-07-11');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (94, 80, 2135, 'Unpaid', '2024-11-28');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (164, 14, 914, 'Unpaid', '2025-11-14');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (159, 151, 1022, 'Paid', '2024-08-12');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (168, 104, 2497, 'Unpaid', '2025-02-11');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (133, 137, 2516, 'Paid', '2025-04-20');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (187, 109, 1945, 'Unpaid', '2024-04-11');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (152, 193, 765, 'Unpaid', '2025-06-21');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (184, 90, 2441, 'Unpaid', '2025-07-30');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (116, 90, 2961, 'Unpaid', '2024-12-30');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (197, 120, 534, 'Paid', '2025-04-12');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (98, 37, 916, 'Unpaid', '2025-04-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (199, 70, 2337, 'Paid', '2025-07-27');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (137, 41, 1675, 'Unpaid', '2025-05-25');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (106, 16, 1066, 'Unpaid', '2025-03-16');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (133, 114, 2215, 'Unpaid', '2024-01-16');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (43, 19, 1667, 'Unpaid', '2025-09-15');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (63, 77, 2499, 'Paid', '2025-08-31');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (153, 191, 1563, 'Paid', '2024-03-30');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (148, 35, 707, 'Paid', '2025-11-25');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (71, 100, 1638, 'Paid', '2025-03-31');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (46, 92, 447, 'Unpaid', '2025-04-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (21, 112, 2103, 'Unpaid', '2025-11-08');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (198, 73, 1223, 'Unpaid', '2024-03-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (66, 129, 452, 'Unpaid', '2025-08-01');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (53, 145, 2624, 'Paid', '2025-04-16');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (186, 55, 1882, 'Unpaid', '2024-12-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (7, 162, 2178, 'Unpaid', '2024-06-15');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (93, 97, 2472, 'Unpaid', '2025-11-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (193, 30, 553, 'Paid', '2025-11-20');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (153, 138, 2683, 'Unpaid', '2024-01-11');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (108, 200, 582, 'Unpaid', '2024-08-20');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (132, 11, 939, 'Paid', '2025-12-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (164, 91, 899, 'Unpaid', '2025-09-15');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (14, 127, 384, 'Paid', '2024-06-14');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (197, 24, 547, 'Paid', '2025-12-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (70, 109, 685, 'Paid', '2024-05-14');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (9, 134, 1429, 'Paid', '2025-11-28');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (67, 28, 444, 'Paid', '2025-03-28');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (99, 192, 566, 'Paid', '2024-12-11');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (110, 102, 1937, 'Paid', '2024-06-02');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (29, 170, 2372, 'Paid', '2024-05-04');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (188, 20, 2644, 'Unpaid', '2024-02-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (57, 149, 2623, 'Unpaid', '2024-05-27');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (153, 14, 2549, 'Paid', '2025-03-31');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (160, 127, 1565, 'Paid', '2025-01-22');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (198, 189, 1864, 'Unpaid', '2025-09-17');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (118, 161, 902, 'Paid', '2024-11-08');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (158, 4, 2561, 'Paid', '2025-09-27');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (55, 65, 749, 'Paid', '2024-02-22');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (64, 101, 1612, 'Paid', '2024-11-21');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (56, 131, 2340, 'Unpaid', '2024-07-08');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (170, 1, 2514, 'Paid', '2025-12-11');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (126, 144, 1955, 'Unpaid', '2024-08-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (169, 67, 1684, 'Paid', '2025-12-28');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (14, 167, 2082, 'Unpaid', '2025-09-04');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (86, 61, 2501, 'Paid', '2024-05-15');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (66, 28, 2452, 'Paid', '2024-01-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (89, 156, 2766, 'Paid', '2025-11-05');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (157, 118, 546, 'Paid', '2025-09-25');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (176, 16, 574, 'Paid', '2024-09-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (173, 89, 1035, 'Paid', '2025-10-25');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (133, 129, 1478, 'Unpaid', '2024-10-09');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (11, 173, 1319, 'Unpaid', '2025-06-10');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (12, 17, 2669, 'Unpaid', '2024-10-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (99, 3, 2623, 'Paid', '2024-11-13');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (7, 36, 2688, 'Paid', '2024-11-09');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (49, 20, 1705, 'Paid', '2025-07-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (147, 95, 2280, 'Unpaid', '2024-09-20');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (11, 86, 2827, 'Paid', '2025-03-11');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (179, 117, 874, 'Unpaid', '2024-11-27');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (132, 50, 618, 'Paid', '2025-05-03');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (51, 170, 484, 'Unpaid', '2025-02-21');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (165, 23, 1272, 'Unpaid', '2024-01-03');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (2, 158, 987, 'Unpaid', '2024-08-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (30, 111, 2527, 'Unpaid', '2024-11-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (142, 169, 2462, 'Unpaid', '2025-07-14');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (130, 109, 2818, 'Paid', '2025-04-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (100, 179, 2637, 'Paid', '2025-09-30');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (14, 125, 2924, 'Paid', '2024-03-03');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (132, 8, 1085, 'Unpaid', '2024-10-05');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (102, 82, 513, 'Unpaid', '2025-03-16');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (114, 136, 1566, 'Paid', '2024-01-01');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (23, 109, 765, 'Paid', '2024-02-12');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (30, 76, 1291, 'Paid', '2025-03-04');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (30, 3, 2429, 'Unpaid', '2024-04-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (31, 54, 2951, 'Paid', '2024-11-30');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (159, 70, 1878, 'Paid', '2025-01-05');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (35, 83, 1308, 'Unpaid', '2024-12-02');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (65, 77, 1253, 'Unpaid', '2024-04-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (119, 61, 2024, 'Paid', '2024-02-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (63, 101, 868, 'Paid', '2025-01-05');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (75, 75, 1903, 'Unpaid', '2025-12-28');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (196, 145, 1684, 'Unpaid', '2025-07-09');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (15, 192, 1354, 'Paid', '2025-08-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (172, 99, 314, 'Unpaid', '2024-05-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (138, 27, 786, 'Paid', '2025-03-08');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (120, 119, 2155, 'Paid', '2025-02-28');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (198, 122, 2844, 'Unpaid', '2024-12-09');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (159, 188, 1794, 'Paid', '2025-05-27');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (115, 114, 2804, 'Unpaid', '2025-07-09');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (152, 27, 1118, 'Paid', '2025-04-28');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (41, 187, 903, 'Paid', '2025-09-15');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (62, 161, 1463, 'Paid', '2025-02-05');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (42, 36, 660, 'Paid', '2025-01-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (176, 22, 950, 'Unpaid', '2025-09-22');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (182, 17, 1802, 'Unpaid', '2025-08-02');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (42, 111, 2767, 'Unpaid', '2025-07-03');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (173, 163, 1725, 'Unpaid', '2024-08-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (65, 129, 2365, 'Paid', '2025-10-24');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (114, 157, 1859, 'Unpaid', '2025-11-28');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (173, 194, 2208, 'Unpaid', '2024-02-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (53, 171, 640, 'Paid', '2024-07-14');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (124, 106, 1198, 'Unpaid', '2024-05-09');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (9, 154, 1110, 'Unpaid', '2024-12-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (185, 128, 939, 'Unpaid', '2024-11-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (86, 129, 1466, 'Paid', '2024-07-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (138, 121, 1762, 'Unpaid', '2024-06-06');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (174, 71, 586, 'Unpaid', '2024-07-02');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (137, 75, 2545, 'Paid', '2024-06-20');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (134, 87, 673, 'Unpaid', '2025-11-03');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (141, 75, 572, 'Paid', '2025-05-31');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (157, 194, 1299, 'Unpaid', '2024-06-23');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (83, 32, 1601, 'Paid', '2024-03-29');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (76, 153, 1591, 'Paid', '2024-11-15');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (135, 23, 545, 'Unpaid', '2024-09-07');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (19, 142, 454, 'Paid', '2024-06-12');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (28, 162, 2587, 'Unpaid', '2025-05-05');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (148, 22, 1301, 'Unpaid', '2025-05-13');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (142, 115, 2215, 'Paid', '2025-05-14');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (89, 70, 1883, 'Unpaid', '2025-03-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (142, 73, 2081, 'Unpaid', '2025-11-02');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (105, 137, 524, 'Paid', '2025-01-13');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (176, 6, 889, 'Unpaid', '2024-11-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (44, 135, 2011, 'Paid', '2025-03-27');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (196, 23, 1123, 'Paid', '2025-10-24');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (200, 184, 1775, 'Unpaid', '2025-10-18');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (7, 33, 1881, 'Unpaid', '2025-02-27');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (115, 92, 1193, 'Paid', '2025-12-26');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (70, 5, 2231, 'Unpaid', '2025-12-17');
INSERT INTO Billing(patient_id, appointment_id, total_amount, payment_status, bill_date) VALUES (38, 24, 458, 'Unpaid', '2025-12-07');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (134, 161, 35, 'Atorvastatin', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (31, 145, 72, 'Atorvastatin', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (135, 192, 108, 'Metformin', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (122, 65, 88, 'Amoxicillin', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (138, 177, 106, 'Amoxicillin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (97, 142, 20, 'Metformin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (192, 128, 1, 'Metformin', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (152, 141, 132, 'Omeprazole', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (183, 103, 95, 'Ibuprofen', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (72, 89, 158, 'Amoxicillin', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (77, 174, 15, 'Atorvastatin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (139, 40, 193, 'Paracetamol', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (8, 196, 109, 'Metformin', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (54, 139, 85, 'Cetirizine', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (138, 24, 61, 'Azithromycin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (88, 146, 191, 'Ibuprofen', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (69, 188, 6, 'Paracetamol', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (61, 75, 46, 'Atorvastatin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (103, 103, 3, 'Paracetamol', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (75, 92, 158, 'Omeprazole', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (18, 38, 103, 'Metformin', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (53, 1, 34, 'Atorvastatin', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (63, 24, 33, 'Omeprazole', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (132, 172, 125, 'Amoxicillin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (22, 136, 52, 'Metformin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (9, 47, 138, 'Atorvastatin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (2, 139, 126, 'Metformin', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (44, 109, 46, 'Omeprazole', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (82, 91, 72, 'Azithromycin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (80, 165, 114, 'Amoxicillin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (28, 96, 97, 'Atorvastatin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (118, 194, 198, 'Amoxicillin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (88, 70, 145, 'Omeprazole', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (170, 120, 180, 'Metformin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (97, 88, 146, 'Omeprazole', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (71, 136, 152, 'Cetirizine', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (93, 115, 51, 'Azithromycin', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (10, 24, 37, 'Metformin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (76, 134, 70, 'Cetirizine', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (66, 176, 60, 'Cetirizine', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (112, 8, 78, 'Ibuprofen', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (23, 77, 38, 'Metformin', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (131, 59, 93, 'Azithromycin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (139, 36, 41, 'Atorvastatin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (109, 184, 166, 'Cetirizine', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (69, 21, 75, 'Paracetamol', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (41, 40, 147, 'Paracetamol', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (85, 142, 189, 'Paracetamol', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (123, 28, 101, 'Amoxicillin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (78, 139, 124, 'Metformin', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (78, 103, 120, 'Cetirizine', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (126, 27, 133, 'Amoxicillin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (68, 27, 82, 'Ibuprofen', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (22, 15, 104, 'Paracetamol', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (105, 138, 73, 'Omeprazole', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (120, 120, 25, 'Metformin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (50, 3, 21, 'Azithromycin', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (161, 149, 80, 'Paracetamol', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (79, 27, 34, 'Omeprazole', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (148, 156, 64, 'Atorvastatin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (166, 101, 178, 'Azithromycin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (194, 36, 176, 'Azithromycin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (83, 184, 107, 'Amoxicillin', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (199, 23, 60, 'Metformin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (47, 140, 8, 'Cetirizine', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (39, 168, 66, 'Ibuprofen', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (137, 89, 108, 'Ibuprofen', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (166, 117, 182, 'Azithromycin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (6, 17, 43, 'Atorvastatin', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (122, 37, 171, 'Atorvastatin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (126, 115, 147, 'Ibuprofen', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (42, 52, 151, 'Paracetamol', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (29, 56, 189, 'Atorvastatin', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (74, 170, 101, 'Paracetamol', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (176, 82, 153, 'Paracetamol', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (43, 59, 119, 'Omeprazole', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (138, 198, 119, 'Azithromycin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (25, 97, 33, 'Ibuprofen', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (193, 84, 45, 'Atorvastatin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (40, 134, 57, 'Ibuprofen', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (68, 178, 3, 'Metformin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (15, 80, 195, 'Cetirizine', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (100, 27, 50, 'Cetirizine', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (120, 79, 180, 'Paracetamol', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (50, 79, 43, 'Ibuprofen', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (180, 106, 196, 'Azithromycin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (62, 25, 115, 'Amoxicillin', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (135, 107, 156, 'Metformin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (100, 11, 194, 'Atorvastatin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (157, 109, 27, 'Azithromycin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (112, 179, 46, 'Azithromycin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (103, 20, 185, 'Omeprazole', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (78, 51, 39, 'Omeprazole', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (200, 1, 186, 'Azithromycin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (69, 55, 188, 'Amoxicillin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (79, 23, 146, 'Cetirizine', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (16, 113, 90, 'Ibuprofen', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (15, 106, 48, 'Atorvastatin', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (35, 82, 185, 'Amoxicillin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (8, 117, 7, 'Cetirizine', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (33, 163, 44, 'Cetirizine', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (132, 200, 33, 'Amoxicillin', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (133, 16, 131, 'Atorvastatin', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (73, 13, 79, 'Atorvastatin', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (54, 155, 89, 'Amoxicillin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (11, 146, 31, 'Azithromycin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (192, 41, 169, 'Azithromycin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (82, 27, 56, 'Atorvastatin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (14, 173, 174, 'Omeprazole', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (134, 140, 178, 'Cetirizine', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (89, 131, 10, 'Ibuprofen', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (134, 69, 200, 'Ibuprofen', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (143, 25, 185, 'Atorvastatin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (151, 80, 197, 'Omeprazole', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (145, 76, 99, 'Paracetamol', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (172, 52, 108, 'Amoxicillin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (19, 165, 99, 'Paracetamol', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (146, 198, 73, 'Atorvastatin', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (148, 5, 48, 'Omeprazole', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (18, 188, 158, 'Azithromycin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (157, 99, 196, 'Atorvastatin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (26, 175, 92, 'Omeprazole', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (30, 76, 60, 'Azithromycin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (12, 147, 128, 'Atorvastatin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (123, 79, 26, 'Omeprazole', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (14, 173, 13, 'Cetirizine', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (161, 196, 19, 'Azithromycin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (13, 4, 188, 'Cetirizine', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (62, 71, 99, 'Omeprazole', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (19, 111, 122, 'Metformin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (91, 179, 191, 'Azithromycin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (197, 20, 165, 'Atorvastatin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (131, 159, 72, 'Amoxicillin', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (75, 89, 95, 'Metformin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (155, 25, 142, 'Azithromycin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (118, 41, 78, 'Omeprazole', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (177, 8, 23, 'Omeprazole', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (113, 52, 121, 'Atorvastatin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (57, 71, 49, 'Cetirizine', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (50, 199, 95, 'Paracetamol', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (67, 101, 176, 'Ibuprofen', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (32, 119, 185, 'Ibuprofen', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (133, 65, 10, 'Omeprazole', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (163, 152, 162, 'Ibuprofen', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (180, 88, 164, 'Azithromycin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (135, 59, 155, 'Azithromycin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (57, 198, 137, 'Paracetamol', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (118, 19, 104, 'Ibuprofen', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (71, 26, 143, 'Omeprazole', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (136, 94, 77, 'Atorvastatin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (23, 114, 76, 'Atorvastatin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (74, 164, 1, 'Paracetamol', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (62, 14, 54, 'Paracetamol', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (51, 185, 26, 'Paracetamol', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (6, 140, 9, 'Cetirizine', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (120, 37, 171, 'Azithromycin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (130, 188, 116, 'Azithromycin', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (159, 85, 105, 'Azithromycin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (149, 178, 193, 'Amoxicillin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (144, 6, 154, 'Ibuprofen', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (185, 15, 176, 'Cetirizine', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (34, 155, 46, 'Omeprazole', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (163, 159, 85, 'Cetirizine', '2/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (158, 188, 15, 'Cetirizine', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (152, 114, 83, 'Amoxicillin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (99, 58, 158, 'Amoxicillin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (176, 82, 76, 'Omeprazole', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (75, 59, 45, 'Azithromycin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (157, 51, 185, 'Atorvastatin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (148, 154, 192, 'Metformin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (190, 43, 187, 'Metformin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (73, 47, 170, 'Ibuprofen', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (6, 76, 107, 'Paracetamol', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (57, 156, 91, 'Metformin', '1/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (16, 172, 193, 'Amoxicillin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (143, 71, 23, 'Amoxicillin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (140, 41, 74, 'Cetirizine', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (91, 51, 181, 'Atorvastatin', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (26, 108, 195, 'Paracetamol', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (135, 152, 59, 'Ibuprofen', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (80, 124, 177, 'Azithromycin', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (162, 18, 170, 'Cetirizine', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (162, 2, 135, 'Metformin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (111, 91, 86, 'Azithromycin', '3/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (16, 25, 114, 'Azithromycin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (198, 114, 132, 'Paracetamol', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (164, 75, 181, 'Cetirizine', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (178, 160, 194, 'Metformin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (111, 89, 41, 'Metformin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (74, 120, 37, 'Ibuprofen', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (138, 68, 11, 'Azithromycin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (187, 20, 64, 'Atorvastatin', '2/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (140, 146, 62, 'Atorvastatin', '1/day', '7 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (158, 148, 95, 'Cetirizine', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (73, 145, 59, 'Atorvastatin', '1/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (183, 57, 168, 'Azithromycin', '3/day', '5 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (34, 111, 1, 'Omeprazole', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (7, 89, 50, 'Ibuprofen', '3/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (128, 191, 142, 'Azithromycin', '2/day', '3 days');
INSERT INTO Prescription(appointment_id, doctor_id, patient_id, medicine_name, dosage, duration) VALUES (169, 34, 180, 'Paracetamol', '2/day', '7 days');

-- 1. find all patients older than 50
select * from Patients
where age > 50;

-- 2. Count how many patients belong to each blood group.
SELECT blood_group, COUNT(*) 
FROM Patients
GROUP BY blood_group;

-- 3. Find patients whose name starts with 'A'
SELECT * FROM Patients 
WHERE name LIKE 'A%';

-- 4. Get male - female count
select gender,count(*) from Patients
group by gender;

-- 5. find patients who have at least 1 appointment
select  distinct p.*
from Patients as p
join Appointments as a
on p.patient_id = a.patient_id;

-- 6. top 10 oldest patients.
SELECT * FROM Patients
ORDER BY age DESC
LIMIT 10;

-- 7. Count doctors by specialization.
SELECT specialization, COUNT(*)
FROM Doctors
GROUP BY specialization;

-- 8. List doctors who handled more than 3 appointments.
SELECT d.name, COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id
HAVING COUNT(a.appointment_id) > 3;

-- 9. Doctors who never had an appointment.
SELECT d.*
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
WHERE a.doctor_id IS NULL;

-- 10. Search doctors by keyword “Cardio”.
SELECT * FROM Doctors 
WHERE specialization LIKE '%Cardio%';

-- 11. Doctor with maximum appointments.
SELECT d.name, COUNT(a.appointment_id) AS total
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id
ORDER BY total DESC
LIMIT 1;

-- 12. Find all completed appointments in 2025.
SELECT * FROM Appointments
WHERE status = 'Completed'
AND appointment_date BETWEEN '2025-01-01' AND '2025-12-31';

-- 13. Count appointments per month.
SELECT MONTH(appointment_date) AS month, COUNT(*)
FROM Appointments
GROUP BY MONTH(appointment_date);

-- 14. Patients with more than 2 appointments.
SELECT patient_id, COUNT(*) AS total
FROM Appointments
GROUP BY patient_id
HAVING COUNT(*) > 2;

-- 15. List appointments of a specific doctor.
SELECT *
FROM Appointments
WHERE doctor_id = 5;

-- 16. Total appointments by purpose.
SELECT purpose, COUNT(*)
FROM Appointments
GROUP BY purpose;

-- 17. Appointments between 10 AM and 12 PM.
SELECT *
FROM Appointments
WHERE appointment_time BETWEEN '10:00:00' AND '12:00:00';

-- 18. Join patient + doctor + appointment details.
SELECT a.appointment_id, p.name AS patient, d.name AS doctor, 
       a.appointment_date, a.purpose
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id;

-- 19. Total revenue collected.
SELECT SUM(total_amount) AS total_revenue
FROM Billing
WHERE payment_status = 'Paid';

-- 20. Unpaid bills (pending payments).
SELECT * FROM Billing
WHERE payment_status = 'Unpaid';

-- 21. Bill details with patient name.
SELECT b.bill_id, p.name, b.total_amount, b.payment_status
FROM Billing b
JOIN Patients p ON b.patient_id = p.patient_id;

-- 22. Get highest bill amount.
SELECT *
FROM Billing
ORDER BY total_amount DESC
LIMIT 1;

-- 23.Monthly revenue.
SELECT MONTH(bill_date) AS month, SUM(total_amount)
FROM Billing
GROUP BY MONTH(bill_date);

-- 24. Bills linked to cancelled appointments.
SELECT b.*
FROM Billing b
JOIN Appointments a ON b.appointment_id = a.appointment_id
WHERE a.status = 'Cancelled';

-- 25. Find prescriptions for a specific patient.
SELECT *
FROM Prescription
WHERE patient_id = 10;

-- 26. Count medicine usage.
SELECT medicine_name, COUNT(*)
FROM Prescription
GROUP BY medicine_name;

-- 27.  Most prescribed medicine.
SELECT medicine_name, COUNT(*) AS total
FROM Prescription
GROUP BY medicine_name
ORDER BY total DESC
LIMIT 1;

-- 28. Join prescreption with doctor + patients
select pr.prescription_id, pr.medicine_name, d.name as Doctor, p.name as Patient
from Prescription as pr
join Doctors as d
on pr.doctor_id = d.doctor_id
join Patients as p
on pr.patient_id = p.patient_id;                                                                                                                     

-- 29. Prescriptions written by a doctor.
SELECT *
FROM Prescription
WHERE doctor_id = 5;

-- 30. Patients who received more than 3 prescriptions.
SELECT patient_id, COUNT(*) AS total
FROM Prescription
GROUP BY patient_id
HAVING COUNT(*) > 3;

-- 31. List patients who have more than 2 appointments
WITH ap AS (
    SELECT patient_id, COUNT(*) AS total
    FROM Appointments
    GROUP BY patient_id
)
SELECT * FROM ap
WHERE total > 2;

-- 32. Find total billed amount per patient
WITH bill_sum AS (
    SELECT patient_id, SUM(total_amount) AS total
    FROM Billing
    GROUP BY patient_id
)
SELECT * FROM bill_sum;

-- 33. Doctors who handled the most appointments
SELECT *
FROM Doctors
WHERE doctor_id = (
    SELECT doctor_id
    FROM Appointments
    GROUP BY doctor_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

-- 34. Patients older than the average age
SELECT *
FROM Patients
WHERE age > (
    SELECT AVG(age) FROM Patients
);

-- 35. Procedure: Insert a new patient
DELIMITER //
CREATE PROCEDURE AddPatient(
    IN pname VARCHAR(100),
    IN page INT,
    IN pgender VARCHAR(10),
    IN phone VARCHAR(15),
    IN paddress VARCHAR(255),
    IN bg VARCHAR(5)
)
BEGIN
    INSERT INTO Patients(name, age, gender, phone, address, blood_group)
    VALUES(pname, page, pgender, phone, paddress, bg);
END //
DELIMITER ;

-- 36. Trigger : Auto-change billing status to 'Paid' if amount = 0
DELIMITER //
CREATE TRIGGER SetPaidIfZero
BEFORE INSERT ON Billing
FOR EACH ROW
BEGIN
    IF NEW.total_amount = 0 THEN
        SET NEW.payment_status = 'Paid';
    END IF;
END //
DELIMITER ;


-- INSIGHTS ----

-- AB- is the least appered blood group.
-- Male and female count of the patients is almost balanced.
-- The age group of patients is around 20-50.
-- The older patients(50+) are more likely to visit frequently.
-- General Medicine and Pediatrics have the highest patient inflow.
-- Specialized departments have fewer but more critical cases.
-- Maximum appointments occur between 10 AM to 1 PM.
-- There is fewer appointment in late afternoon.
-- Most common purpose of visiting is : fever and routine checkup.
-- Paracetamol and Antibiotics are most prescribed which indicates high incidence of infections and fever case.
-- Revenue peaks in seasonal illness months such as monsoon.








