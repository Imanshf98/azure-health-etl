
CREATE TABLE PatientVitals (
    PatientID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    HeartRate FLOAT,
    BloodPressure_Systolic INT,
    BloodPressure_Diastolic INT,
    Cholesterol FLOAT,
    VisitDate DATE
);
