Owners
owner_id (PK)
first_name
last_name
address
city
state
zip_code
phone_number
email
Pets
pet_id (PK)
owner_id (FK)
name
species
breed
gender
date_of_birth
weight
Appointments
appointment_id (PK)
pet_id (FK)
appointment_date
appointment_time
appointment_type
appointment_status
Treatments
treatment_id (PK)
appointment_id (FK)
medication
dosage
instructions
start_date
end_date
MedicalRecords
record_id (PK)
pet_id (FK)
appointment_id (FK)
diagnosis
treatment
prescription_id (FK)




