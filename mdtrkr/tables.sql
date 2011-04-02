CREATE TABLE medication(id INTEGER PRIMARY KEY NOT NULL, pharmacy_id INTEGER, 
    med_name VARCHAR(150) NOT NULL, doctor_id INTEGER NOT NULL);

CREATE TABLE dosage(medication_id INTEGER, dosage_amount REAL, dose_unit VARCHAR(10),
    repeat_days VARCHAR(50), repeat_times VARCHAR(150),
    FOREIGN KEY(medication_id) REFERENCES medication(id));

CREATE TABLE refill(medication_id INTEGER, dose_per_unit REAL, dose_unit VARCHAR(10), VARCHAR fill_quantity REAL, remaining_doses REAL, 
    fill_date INTEGER, FOREIGN KEY(medication_id) REFERENCES medication(id)); 

CREATE TABLE pharmacy(id INTEGER PRIMARY KEY, name VARCHAR(50) NOT NULL, street1 varchar(60), 
    street2 VARCHAR(60), city VARCHAR(60), state VARCHAR(50), zip_code INTEGER, phone VARCHAR(30));

CREATE TABLE doctors(id INTEGER PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), street1 varchar(60), 
    street2 VARCHAR(60), city VARCHAR(60), state VARCHAR(50), zip_code INTEGER, phone VARCHAR(30), fax VARCHAR(30));

