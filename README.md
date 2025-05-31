# patient-risk-dashboard

A SQL-based capstone project that analyzes healthcare data to identify high-risk patients based on vitals and diagnosis history.

## Project Overview

This project demonstrates SQL expertise through schema design and analytical queries on a simplified healthcare dataset. The goal is to flag patients who may be at elevated medical risk based on blood pressure, cholesterol levels, and frequency of diagnoses. The dashboard logic is designed to support proactive clinical intervention and patient monitoring.

## Repository Structure

- `schema/`  
  Contains SQL scripts to create the core tables: `patients`, `visits`, and `diagnoses`.

- `queries/`  
  Includes a complete dashboard query to flag high-risk patients.

- `README.md`  
  Project summary, structure, and instructions for use.

## Schema Description

- **patients**: Stores basic patient info with a unique `patient_id` and name.

- **visits**: Contains clinical visit records with blood pressure and cholesterol readings per visit. Linked by `patient_id`.

- **diagnoses**: Logs diagnosis events with dates and descriptions. Also linked by `patient_id`.

All tables are normalized and use foreign keys to maintain referential integrity.

## Key Query

- **patient_risk_dashboard.sql**  
  Flags patients as `High Risk` if they meet any of the following:
  
  - Blood pressure > 140  
  - Cholesterol > 240  
  - 3 or more diagnosis records

  The query uses `MAX()`, `COUNT()`, and a `CASE` statement with `LEFT JOIN`s to aggregate risk factors and output a dashboard-style summary.

## How to Use

1. Run the SQL files in the `schema/` folder to create the tables.

2. Load real or mock data into the database.

3. Execute the SQL file in the `queries/` folder to generate a list of high-risk patients.

4. Modify threshold logic as needed for use in different clinical settings or patient populations.

## Skills Demonstrated

- SQL schema design and normalization  
- Data aggregation using `GROUP BY`  
- Conditional logic with `CASE`  
- JOINs and referential relationships  
- Readable and modular query organization

## Contact / Questions

Feel free to reach out with questions, improvements, or feedback. This project is part of a portfolio demonstrating readiness for a junior Database Administrator role in the healthcare or biotech industry.
