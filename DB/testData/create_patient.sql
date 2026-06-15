USE DOCTOR_GLOBE;

INSERT INTO `patient` (first_name, last_name, email, password, city, active) VALUES ('Yori', 'Landau', 'ylandau@gmail.com', SHA1('Password123'), 2, 1);
INSERT INTO `patient` (first_name, last_name, email, password, city, active) VALUES ('Tibi', 'Zohar', 'tibizohar@gmail.com', SHA1('Password123'), 2, 1);
INSERT INTO `patient` (first_name, last_name, address, zip_code, email, password, city, lat, lon, user_agreement, active) VALUES ('TJ ', 'Morrison', '600 Wilson Lane', '17055', 'tjm@bdsadmin.com', SHA1('Password123'), 68, 40.208177, -76.975022, 1, 1);
INSERT INTO `patient` (first_name, last_name, address, zip_code, email, password, city, lat, lon, user_agreement, active) VALUES ('Scott ', 'Hettesheimer', '3254 Montana Avenue', '45211', 'scott@hettesheimerinsurance.com', SHA1('Password123'), 587, 39.149342, -84.609138, 1, 1);
INSERT INTO `patient` (first_name, last_name, email, password, city, lat, lon, user_agreement, active) VALUES ('Demo', 'User', 'demo@doctorglobe.com', SHA1('Demo123'), 128, 33.195869, -117.379486, 1, 1);

