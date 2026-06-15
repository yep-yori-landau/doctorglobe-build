USE DOCTOR_GLOBE;

INSERT INTO `user` (first_name, last_name, email, password, mobile, role, active) VALUES ('Yori', 'Landau', 'ylandau@gmail.com', SHA1('Password123'), 1111, 1, 1);

INSERT INTO `healthcareprovider_user` (user, healthcareprovider) VALUES (1, 1);

