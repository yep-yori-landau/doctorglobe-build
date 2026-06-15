use DOCTOR_GLOBE;

-- Create a corporate company
insert into corporatecompany (name, address_1, zip_code, phone_1, email, whitelabel_url, theme, minimum_amount_spread, minimum_percentage_spread, currency, dg_commission, worker_incentive, city) values ("DRG", "252 S. Maryland Dr.", 101010, "(310)555-5555", "ylandau@gmail.com", 'http://localhost', 'doctorglobe', 1000, 5, "USD", 5, 5, 2);

-- Create a corporate company insurance
insert into corporatecompany_insurance (program_name, annual_oop, deductible, co_insurance, corporate_company) values ("Basic Program", 6000, 2000, 10, 1);

-- Assign the user ylandau@gmail, tibizohar@gmail.com and tjm@bdsadmin.com to corporate company insurance plan
insert into employee_corporatecompany (corporatecompany_insurance, patient) values (1, 1);
insert into employee_corporatecompany (corporatecompany_insurance, patient) values (1, 2);
insert into employee_corporatecompany (corporatecompany_insurance, patient) values (1, 3);
insert into employee_corporatecompany (corporatecompany_insurance, patient) values (1, 4);
insert into employee_corporatecompany (corporatecompany_insurance, patient) values (1, 5);


-- Create treatment price for Los Angeles and for Mechanicsburg
-- insert into treatment_price (price, city, currency, treatment) values (91000, 2, "USD", 1);
-- insert into treatment_price (price, city, currency, treatment) values (91000, 2, "USD", 2);
-- insert into treatment_price (price, city, currency, treatment) values (40000, 69, "USD", 1);
