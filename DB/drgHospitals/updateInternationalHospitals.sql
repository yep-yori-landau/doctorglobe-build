USE DOCTOR_GLOBE;

-- Create our partner hospitals
update healthcareprovider set city=69, lat=19.298788, lon=-81.146716  where name = 'Health City Cayman Islands' and drg_id='0' and address_1='1283, Sea View Road, ' and zip_code='KY1-1005';

-- insert into healthcareprovider (name, address_1, address_2, zip_code, website, contact_name, phone_1, email, fax, description, teaching_hospital, medical_lawsuit, type, currency, cc_email, is_policy_covered_practitioners, city) values ('Health City Cayman Islands', '1283, Sea View Road, ', 'High Rock, Post Box No. 10590', 'KY1-1005', 'http://www.healthcitycaymanislands.com/', 'Patient Relations', '+3456404111', 'patient.relations@healthcity.ky', '+3459463882', 'Imagine an international hospital providing the highest standards in tertiary care in a state-of-the-art, patient-centred environment. Now imagine that cost is no longer a barrier to accessing this Best in Class medical care. You no longer have to imagine it. Health City Cayman Islands is delivering a new model of high quality, affordable healthcare. At Health City, all patients can receive vital heart and orthopaedic surgery, pulmonology, endocrinology and other medical services provided by highly skilled, compassionate medical professionals.', 0, 0, 'private', 'USD', 1, 0, 69);

-- insert into healthcareprovider (name, address_1, address_2, zip_code, email, teaching_hospital, medical_lawsuit, type, currency, cc_email, is_policy_covered_practitioners, city) values ('San Vicente Fundacion', 'Km 2,3 Via Aeropuerto - Llanogrande, Rionegro - Antioquia', 'Calle 64 No 51 D - 154', '574', 'internacional@sanvicentefundacion.com', 0, 0, 'private', 'USD', 1, 0, 70);

-- insert into healthcareprovider (name, address_1, zip_code, phone_1, email, teaching_hospital, medical_lawsuit, type, currency, cc_email, is_policy_covered_practitioners, city) values ('Regency Healthcare Medical, PLLC', '1735 York Avenue, Suite P1', '10128', '+1 2128764046', 'ma@haarorthopedics.com', 0, 0, 'private', 'USD', 1, 0, 3);

-- insert into healthcareprovider (name, email, teaching_hospital, medical_lawsuit, type, currency, cc_email, is_policy_covered_practitioners, city) values ('CIMA Centro Internacional De Medicina', 'curry@medicaltraveloption.com', 0, 0, 'private', 'USD', 0, 0, 45);

-- insert into healthcareprovider (name, email, teaching_hospital, medical_lawsuit, type, currency, cc_email, is_policy_covered_practitioners, city) values ('Dummy hospital for treatment alignment to specialties', 'yori@doctorglobe.com', 0, 0, 'private', 'USD', 0, 0, 2);


-- --------------------------
