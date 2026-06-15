USE DOCTOR_GLOBE;

-- Create a corporate company
insert into corporatecompany (name, address_1, zip_code, phone_1, email, whitelabel_url, theme, minimum_amount_spread, minimum_percentage_spread, currency, dg_commission, worker_incentive, city) values ("DRG", "252 S. Maryland Dr.", 101010, "(310)555-5555", "ylandau@gmail.com", 'http://localhost', 'doctorglobe', 0, 0, "USD", 0, 5, 2);

-- Create a corporate company insurance
insert into corporatecompany_insurance (program_name, annual_oop, deductible, co_insurance, corporate_company) values ("Basic Program", 3000, 1200, 20, 1);

-- Create patients
INSERT INTO `patient` (first_name, last_name, dob, email, password, city, user_agreement, active) VALUES ('Guest', 'Surgerate', '2000-01-01', 'guest@surgerate.com', SHA1('guest_Passw0rd'), 2, 1, 1);
INSERT INTO `patient` (first_name, last_name, dob, email, password, city, user_agreement, active) VALUES ('Yori', 'Landau', '2000-01-01', 'ylandau@gmail.com', SHA1('Password123'), 2, 1, 1);
INSERT INTO `patient` (first_name, last_name, dob, email, password, city, user_agreement, active) VALUES ('Tibi', 'Zohar', '2000-01-01', 'tibizohar@gmail.com', SHA1('Password123'), 2, 1, 1);
INSERT INTO `patient` (first_name, last_name, dob, email, password, city, user_agreement, active) VALUES ('Tibi', 'Zohar', '2000-01-01', 'tbzohar@gmail.com', SHA1('Password123'), 2, 1, 1);

-- Assign the users corporate company insurance plan
insert into employee_corporatecompany (corporatecompany_insurance, patient) values (1, 2);
insert into employee_corporatecompany (corporatecompany_insurance, patient) values (1, 3);

-- Create an API user
-- INSERT INTO `api_user` (first_name, last_name, email, user_name, password, active) VALUES ('Yori', 'Landau', 'ylandau@gmail.com', 'yori', SHA1('Password123'), 1);


-- Create treatment price for Los Angeles and for Mechanicsburg
-- The below is not needed any more due to the real time calculated origin price
-- insert into treatment_price (price, city, currency, treatment) values (91000, 2, "USD", 1);
-- insert into treatment_price (price, city, currency, treatment) values (91000, 2, "USD", 2);
-- insert into treatment_price (price, city, currency, treatment) values (40000, 69, "USD", 1);


-- Special test for private insurance (for testing prices which are not Medicare): 
-- Insertin a new practitioner, creating a new insurance program, Adding one hospital (st. Jones for knee replacement) for that insurance and move ylandau to use that insurnace
-- insert into practitioner (title, first_name, last_name, gender, email, password, usa_certification, usa_training, type, role) values ('Dr.', 'Generic2', 'Doctor2', 'M', 'no-email2@doctorglobe.com', 'b2e98ad6f6eb8508dd6a14cfa704bad7f05f6fb1', 'None', 0, 1, 2);
-- insert into corporatecompany_insurance (program_name, annual_oop, deductible, co_insurance, corporate_company) values ("Private Program", 3000, 1200, 20, 1);
-- insert into healthcareprovider_specialty_treatment_method_practitioner (number_performed_last_year, currency, healthcareprovider_price, practitioner_price, anesthesia_price, active, practitioner, healthcareprovider_specialty_treatment_method, corporatecompany_insurance, verified) values (935, 'USD', 20162.83594, 0, 0, true, 2, 15872, 2, false);
-- update employee_corporatecompany set corporatecompany_insurance=2 where patient = 1;



