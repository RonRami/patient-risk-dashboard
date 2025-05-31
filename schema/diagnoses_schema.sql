CREATE TABLE diagnoses (
    diagnosis_id INT PRIMARY KEY,
    patient_id INT,
    diagnosis_date DATE,
    diagnosis_description TEXT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
