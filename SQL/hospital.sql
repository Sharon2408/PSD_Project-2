Patients
patient_id (PK)
first_name
last_name
date_of_birth
gender
address
city
state
zip_code
phone_number
email

Doctors
doctor_id (PK)
first_name
last_name
specialty
phone_number
email

Appointments
appointment_id (PK)
patient_id (FK)
doctor_id (FK)
appointment_date
appointment_time
appointment_type
appointment_status

Prescriptions
prescription_id (PK)
appointment_id (FK)
medication
dosage
instructions
start_date
end_date

MedicalRecords
record_id (PK)
patient_id (FK)
doctor_id (FK)
appointment_id (FK)
diagnosis
treatment
prescription_id (FK)




