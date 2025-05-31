SELECT
    patients.patient_id,
    patients.name,
    MAX(visits.blood_pressure) AS max_blood_pressure,
    MAX(visits.cholesterol) AS max_cholesterol,
    COUNT(diagnoses.diagnosis_id) AS diagnosis_count,
    CASE
        WHEN MAX(visits.blood_pressure) > 140
             OR MAX(visits.cholesterol) > 240
             OR COUNT(diagnoses.diagnosis_id) >= 3
        THEN 'High Risk'
        ELSE 'Normal Risk'
    END AS risk_level
FROM patients
LEFT JOIN visits ON patients.patient_id = visits.patient_id
LEFT JOIN diagnoses ON patients.patient_id = diagnoses.patient_id
GROUP BY patients.patient_id, patients.name
ORDER BY risk_level DESC, max_blood_pressure DESC;
