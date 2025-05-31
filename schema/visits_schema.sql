CREATE TABLE visits (
    visit_id INT PRIMARY KEY,
    patient_id INT,
    visit_date DATE,
    blood_pressure NUMERIC,
    cholesterol NUMERIC,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
