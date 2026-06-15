USE DOCTOR_GLOBE;

-- practitioner_type
INSERT INTO `practitionertype` (name) VALUES ('Surgeon');
INSERT INTO `practitionertype` (name) VALUES ('Medical');
INSERT INTO `practitionertype` (name) VALUES ('Other');

-- acl_roles
INSERT INTO `acl_roles` (role) VALUES ('Admin');
INSERT INTO `acl_roles` (role) VALUES ('Practitioner');

-- Rating
INSERT INTO `ratingcompanies` (name, max_score) VALUES ('US&WR', 1);
INSERT INTO `ratingcompanies` (name, max_score) VALUES ('HCAHPS score', 1);
INSERT INTO `ratingcompanies` (name, max_score) VALUES ('Medicare', 1);

-- amenity
INSERT INTO `amenity` (name, is_display) VALUES ('Individual Nurse', 1);
INSERT INTO `amenity` (name, is_display) VALUES ('Private Room', 1);
INSERT INTO `amenity` (name, is_display) VALUES ('Private Bath', 1);
INSERT INTO `amenity` (name, is_display) VALUES ('Companion Accomodation', 1);
INSERT INTO `amenity` (name, is_display) VALUES ('Individual Concierge', 1);
INSERT INTO `amenity` (name, is_display) VALUES ('English Spoken', 1);
INSERT INTO `amenity` (name, is_display) VALUES ('Halal', 1);
INSERT INTO `amenity` (name, is_display) VALUES ('Kosher', 1);

-- cuisine
INSERT INTO `cuisine` (name) VALUES ('A la cart');
INSERT INTO `cuisine` (name) VALUES ('Kosher');
INSERT INTO `cuisine` (name) VALUES ('Halal');
INSERT INTO `cuisine` (name) VALUES ('Vegan');
INSERT INTO `cuisine` (name) VALUES ('Gluten Free');
INSERT INTO `cuisine` (name) VALUES ('Dairy Free');
INSERT INTO `cuisine` (name) VALUES ('Organic');
INSERT INTO `cuisine` (name) VALUES ('Sugar Free');

-- language
-- INSERT INTO `language` (code, name) VALUES ('en', 'English');
-- INSERT INTO `language` (code, name) VALUES ('es', 'Spanish');
-- INSERT INTO `language` (code, name) VALUES ('zh', 'Chinese');
-- INSERT INTO `language` (code, name) VALUES ('fr', 'French');
-- INSERT INTO `language` (code, name) VALUES ('ru', 'Russian');
-- INSERT INTO `language` (code, name) VALUES ('de', 'German');
-- INSERT INTO `language` (code, name) VALUES ('tl', 'Tagalog');
-- INSERT INTO `language` (code, name) VALUES ('ur', 'Urdu');

-- equipment
INSERT INTO `equipment` (name, is_display) VALUES ('Angio', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Cardiac Mapping', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('CT Radiotherapy Simulation System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('CT Scanner', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Digital Mammo', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Digital X-Ray', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Linac', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('MRI', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('PET/CT', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Radiosurgery', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Proton', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Dialisys', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Robotic Surgery', 1);

-- equipment (OR & Robotics)
INSERT INTO `equipment` (name, is_display) VALUES ('Orthopilot', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Acrobot', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('RIO™ Robotic Arm', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('da Vinci Surgical System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Zeus Surgical System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('da Vinci Xi®', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Aesop 3000', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Hermes Control Center', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('SOCRATES Robotic Telecollaboration', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('DLR MIRO', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('MiroSurge Robotic Surgery', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('NeuroMate', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('NeuroArm', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Medtronic StealthStation', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Sofie Surgical Robot', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('iDrive Intelligent Power Unit', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Endo Stitch(TM)', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('ARTEMIS-A telemanipulator ', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('CardioArm', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('HeartLander', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('ViRob', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('NavioPFS Robotic Surgical System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('The Trauma Pod', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Robotic Surgical Simulator, or RoSS', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Stereotaxis Robotic Navigation Technology', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('ViKY', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('CyberKnife® System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('SoloAssist', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('ENDOBOT', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('ENDOPAR', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Amadeus® Robotic Surgical System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('PiGalileo®', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('VISIUS Surgical Theatre', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Renaissance™', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('FloShield by Minimally Invasive Devices', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Hexapod', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Artis zeego Multi-axis system', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('SPIDER® Surgical System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Viking 3DHD Vision System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Raven I', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Raven IV', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Red DRAGON (Edge)', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Motorized Endoscopic Grasper (MEG)', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Blue DRAGON', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Automatic Surgical Robotics Tool Changer', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('ProPep Nerve Monitoring System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Amigo Remote Catheter System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Sensei® X', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Magellan™', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Naviot®', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('PenelopeCS™', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('M7 Surgical Robot', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('CorPath® System', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('Breast Biopsy Robot', 1);
INSERT INTO `equipment` (name, is_display) VALUES ('ROSA™', 1);

-- accreditation
INSERT INTO `accreditation` (name) VALUES('The Joint Commission (TJC) / Joint Commission International (JCI)');
INSERT INTO `accreditation` (name) VALUES('QHA Trent Accreditation');
INSERT INTO `accreditation` (name) VALUES('Australian Council for Healthcare Standards International');
INSERT INTO `accreditation` (name) VALUES('Accreditation Canada');
INSERT INTO `accreditation` (name) VALUES('Haute Autorité de Santé');
INSERT INTO `accreditation` (name) VALUES('Accreditation Commission for Health Care (ACHC)');
INSERT INTO `accreditation` (name) VALUES('American Osteopathic Association (AOA)');
INSERT INTO `accreditation` (name) VALUES('Commission on Accreditation of Rehabilitation Facilities (CARF)');
INSERT INTO `accreditation` (name) VALUES('Community Health Accreditation Program (CHAP)');
INSERT INTO `accreditation` (name) VALUES('The Compliance Team: "Exemplary Provider Programs"');
INSERT INTO `accreditation` (name) VALUES('Healthcare Facilities Accreditation Program (HFAP)');
INSERT INTO `accreditation` (name) VALUES('National Commission on Correctional Health Care (NCCHC)');
INSERT INTO `accreditation` (name) VALUES('Healthcare Quality Association on Accreditation (HQAA)');
INSERT INTO `accreditation` (name) VALUES('Utilization Review Accreditation Commission (URAC)');
INSERT INTO `accreditation` (name) VALUES('National Accreditation Board for Hospitals & Healthcare Providers');
INSERT INTO `accreditation` (name) VALUES('Quality Health New Zealand (QHNZ)');
INSERT INTO `accreditation` (name) VALUES('DNV Healthcare Inc.');
INSERT INTO `accreditation` (name) VALUES('American Accreditation Council (AAC)');
INSERT INTO `accreditation` (name) VALUES('Accreditation Association for Ambulatory Health Care (AAAHC)');
INSERT INTO `accreditation` (name) VALUES('Board of Certification/Accreditation, International (BOC)');
INSERT INTO `accreditation` (name) VALUES('Center for Improvement in Healthcare Quality (CIHQ)[1]');
INSERT INTO `accreditation` (name) VALUES('National Committee for Quality Assurance (NCQA)');

-- Insurance
INSERT INTO `insurance` (name) VALUES ('Unitedhealth Group');
INSERT INTO `insurance` (name) VALUES ('Wellpoint Inc. Group');
INSERT INTO `insurance` (name) VALUES ('Kaiser Foundation Group');
INSERT INTO `insurance` (name) VALUES ('Humana Group');
INSERT INTO `insurance` (name) VALUES ('Aetna Group');
INSERT INTO `insurance` (name) VALUES ('HCSC Group');
INSERT INTO `insurance` (name) VALUES ('Cigna Health Group');
INSERT INTO `insurance` (name) VALUES ('Highmark Group');
INSERT INTO `insurance` (name) VALUES ('Coventry Corp. Group');
INSERT INTO `insurance` (name) VALUES ('HIP Insurance Group');
INSERT INTO `insurance` (name) VALUES ('Independence Blue Cross Group');
INSERT INTO `insurance` (name) VALUES ('Blue Cross Blue Shield of New Jersey Group');
INSERT INTO `insurance` (name) VALUES ('Blue Cross Blue Shield of Michigan Group');
INSERT INTO `insurance` (name) VALUES ('California Physicians'' Service');
INSERT INTO `insurance` (name) VALUES ('Blue Cross Blue Shield of Florida Group');
INSERT INTO `insurance` (name) VALUES ('Health Net of California, Inc.');
INSERT INTO `insurance` (name) VALUES ('Centene Corp. Group');
INSERT INTO `insurance` (name) VALUES ('Carefirst Inc. Group');
INSERT INTO `insurance` (name) VALUES ('Wellcare Group');
INSERT INTO `insurance` (name) VALUES ('Blue Cross Blue Shield of Massachusetts Group');
INSERT INTO `insurance` (name) VALUES ('UHC of California');
INSERT INTO `insurance` (name) VALUES ('Lifetime Healthcare Group');
INSERT INTO `insurance` (name) VALUES ('Cambia Health Solutions Inc.');
INSERT INTO `insurance` (name) VALUES ('Metropolitan Group');
INSERT INTO `insurance` (name) VALUES ('Molina Healthcare Inc. Group');

-- hospital units
insert into healthcareproviderunit (name) values ('ICU');
insert into healthcareproviderunit (name) values ('ER');

-- hospital features
insert into feature (name) values ('Number of beds');
insert into feature (name) values ('Patients per room');
insert into feature (name) values ('Nursing ratio');

-- hospital types
insert into healthcareprovidertype (name) values ('General');
insert into healthcareprovidertype (name) values ('Pediatric');
insert into healthcareprovidertype (name) values ('Dental');
insert into healthcareprovidertype (name) values ('Psychiatric');

-- Region
INSERT INTO `region` (id, name) VALUES (1, 'North America');	-- 1
INSERT INTO `region` (id, name) VALUES (2, 'Central America');	-- 2
INSERT INTO `region` (id, name) VALUES (3, 'South America');	-- 3
INSERT INTO `region` (id, name) VALUES (4, 'Western Europe');	-- 4
INSERT INTO `region` (id, name) VALUES (5, 'Eastern Europe');	-- 5
INSERT INTO `region` (id, name) VALUES (6, 'Middle East');	-- 6
INSERT INTO `region` (id, name) VALUES (7, 'Asia');		-- 7
INSERT INTO `region` (id, name) VALUES (8, 'Oceania');		-- 8
INSERT INTO `region` (id, name) VALUES (9, 'Africa');		-- 9
INSERT INTO `region` (id, name) VALUES (10, 'West Indies');	-- 10

-- Country
INSERT INTO `country` (id, code, name, region) VALUES (1, 'IN','India', 7);		-- 1
INSERT INTO `country` (id, code, name, region) VALUES (2, 'MX','Mexico', 1);		-- 2
INSERT INTO `country` (id, code, name, region) VALUES (3, 'US','United States', 1);	-- 3
INSERT INTO `country` (id, code, name, region) VALUES (4, 'UA', 'Ukraine', 5);		-- 4
INSERT INTO `country` (id, code, name, region) VALUES (5, 'TR','Turkey', 6);		-- 5
INSERT INTO `country` (id, code, name, region) VALUES (6, 'FR','France', 4);		-- 6
INSERT INTO `country` (id, code, name, region) VALUES (7, 'DE','Germnay', 4);		-- 7
INSERT INTO `country` (id, code, name, region) VALUES (8, 'AE', 'United Arab Emirates', 6);
INSERT INTO `country` (id, code, name, region) VALUES (10, 'AU', 'Australia', 8);
INSERT INTO `country` (id, code, name, region) VALUES (11, 'BR', 'Brazil', 3);
INSERT INTO `country` (id, code, name, region) VALUES (12, 'BS', 'The Bahamas', 1);
INSERT INTO `country` (id, code, name, region) VALUES (13, 'BZ', 'Belize', 1);
INSERT INTO `country` (id, code, name, region) VALUES (14, 'CO', 'Colombia', 3);
INSERT INTO `country` (id, code, name, region) VALUES (15, 'CR', 'Costa Rica', 3);
INSERT INTO `country` (id, code, name, region) VALUES (16, 'CZ', 'Czech Republic', 5);
INSERT INTO `country` (id, code, name, region) VALUES (17, 'ES', 'Spain', 4);
INSERT INTO `country` (id, code, name, region) VALUES (18, 'HU', 'Hungary', 5);
INSERT INTO `country` (id, code, name, region) VALUES (19, 'ID', 'Indonesia', 7);
INSERT INTO `country` (id, code, name, region) VALUES (20, 'IL', 'Israel', 6);
INSERT INTO `country` (id, code, name, region) VALUES (22, 'JO', 'Jordan', 6);
INSERT INTO `country` (id, code, name, region) VALUES (23, 'LV', 'Latvia', 5);
INSERT INTO `country` (id, code, name, region) VALUES (24, 'MY', 'Malaysia', 7);
INSERT INTO `country` (id, code, name, region) VALUES (25, 'PA', 'Panama', 2);
INSERT INTO `country` (id, code, name, region) VALUES (26, 'SG', 'Singapore', 7);
INSERT INTO `country` (id, code, name, region) VALUES (27, 'KR', 'South Korean', 7);
INSERT INTO `country` (id, code, name, region) VALUES (28, 'ZA', 'South Africa', 9);
INSERT INTO `country` (id, code, name, region) VALUES (29, 'TH', 'Thailand', 7);
INSERT INTO `country` (id, code, name, region) VALUES (30, 'TW', 'Taiwan, Republic of China', 7);
INSERT INTO `country` (id, code, name, region) VALUES (31, 'BB', 'Barbados', 1);
INSERT INTO `country` (id, code, name, region) VALUES (32, 'AG', 'Antigua', 1);
INSERT INTO `country` (id, code, name, region) VALUES (33, 'KY', 'Grand Cayman', 10);

-- State
INSERT INTO `state` (id, code, name, country) VALUES (1, 'NCR','National Capital Region',1);
INSERT INTO `state` (id, code, name, country) VALUES (2, 'AL', 'Alabama', 3);
INSERT INTO `state` (id, code, name, country) VALUES (3, 'AK', 'Alaska', 3);
INSERT INTO `state` (id, code, name, country) VALUES (4, 'AZ', 'Arizona', 3);
INSERT INTO `state` (id, code, name, country) VALUES (5, 'AR', 'Arkansas', 3);
INSERT INTO `state` (id, code, name, country) VALUES (6, 'CA', 'California', 3);
INSERT INTO `state` (id, code, name, country) VALUES (7, 'CO', 'Colorado', 3);
INSERT INTO `state` (id, code, name, country) VALUES (8, 'CT', 'Connecticut', 3);
INSERT INTO `state` (id, code, name, country) VALUES (9, 'DE', 'Delaware', 3);
INSERT INTO `state` (id, code, name, country) VALUES (10, 'DC', 'District of Columbia', 3);
INSERT INTO `state` (id, code, name, country) VALUES (11, 'FL', 'Florida', 3);
INSERT INTO `state` (id, code, name, country) VALUES (12, 'GA', 'Georgia', 3);
INSERT INTO `state` (id, code, name, country) VALUES (13, 'HI', 'Hawaii', 3);
INSERT INTO `state` (id, code, name, country) VALUES (14, 'ID', 'Idaho', 3);
INSERT INTO `state` (id, code, name, country) VALUES (15, 'IL', 'Illinois', 3);
INSERT INTO `state` (id, code, name, country) VALUES (16, 'IN', 'Indiana', 3);
INSERT INTO `state` (id, code, name, country) VALUES (17, 'IA', 'Iowa', 3);
INSERT INTO `state` (id, code, name, country) VALUES (18, 'KS', 'Kansas', 3);
INSERT INTO `state` (id, code, name, country) VALUES (19, 'KY', 'Kentucky', 3);
INSERT INTO `state` (id, code, name, country) VALUES (20, 'LA', 'Louisiana', 3);
INSERT INTO `state` (id, code, name, country) VALUES (21, 'ME', 'Maine', 3);
INSERT INTO `state` (id, code, name, country) VALUES (22, 'MD', 'Maryland', 3);
INSERT INTO `state` (id, code, name, country) VALUES (23, 'MA', 'Massachusetts', 3);
INSERT INTO `state` (id, code, name, country) VALUES (24, 'MI', 'Michigan', 3);
INSERT INTO `state` (id, code, name, country) VALUES (25, 'MN', 'Minnesota', 3);
INSERT INTO `state` (id, code, name, country) VALUES (26, 'MS', 'Mississippi', 3);
INSERT INTO `state` (id, code, name, country) VALUES (27, 'MO', 'Missouri', 3);
INSERT INTO `state` (id, code, name, country) VALUES (28, 'MT', 'Montana', 3);
INSERT INTO `state` (id, code, name, country) VALUES (29, 'NE', 'Nebraska', 3);
INSERT INTO `state` (id, code, name, country) VALUES (30, 'NV', 'Nevada', 3);
INSERT INTO `state` (id, code, name, country) VALUES (31, 'NH', 'New Hampshire', 3);
INSERT INTO `state` (id, code, name, country) VALUES (32, 'NJ', 'New Jersey', 3);
INSERT INTO `state` (id, code, name, country) VALUES (33, 'NM', 'New Mexico', 3);
INSERT INTO `state` (id, code, name, country) VALUES (34, 'NY', 'New York', 3);
INSERT INTO `state` (id, code, name, country) VALUES (35, 'NC', 'North Carolina', 3);
INSERT INTO `state` (id, code, name, country) VALUES (36, 'ND', 'North Dakota', 3);
INSERT INTO `state` (id, code, name, country) VALUES (37, 'OH', 'Ohio', 3);
INSERT INTO `state` (id, code, name, country) VALUES (38, 'OK', 'Oklahoma', 3);
INSERT INTO `state` (id, code, name, country) VALUES (39, 'OR', 'Oregon', 3);
INSERT INTO `state` (id, code, name, country) VALUES (40, 'PA', 'Pennsylvania', 3);
INSERT INTO `state` (id, code, name, country) VALUES (41, 'RI', 'Rhode Island', 3);
INSERT INTO `state` (id, code, name, country) VALUES (42, 'SC', 'South Carolina', 3);
INSERT INTO `state` (id, code, name, country) VALUES (43, 'SD', 'South Dakota', 3);
INSERT INTO `state` (id, code, name, country) VALUES (44, 'TN', 'Tennessee', 3);
INSERT INTO `state` (id, code, name, country) VALUES (45, 'TX', 'Texas', 3);
INSERT INTO `state` (id, code, name, country) VALUES (46, 'UT', 'Utah', 3);
INSERT INTO `state` (id, code, name, country) VALUES (47, 'VT', 'Vermont', 3);
INSERT INTO `state` (id, code, name, country) VALUES (48, 'VA', 'Virginia', 3);
INSERT INTO `state` (id, code, name, country) VALUES (49, 'WA', 'Washington', 3);
INSERT INTO `state` (id, code, name, country) VALUES (50, 'WV', 'West Virginia', 3);
INSERT INTO `state` (id, code, name, country) VALUES (51, 'WI', 'Wisconsin', 3);
INSERT INTO `state` (id, code, name, country) VALUES (52, 'WY', 'Wyoming', 3);
INSERT INTO `state` (id, code, name, country) VALUES (55, 'NSW', 'New South Wales', 10);
INSERT INTO `state` (id, code, name, country) VALUES (56, 'QLD', 'Queensland', 10);

-- city
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (1, 'New Delhi',1,1, 28.613939,77.209021);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (2, 'Los Angeles',6,3, 34.05, -118.25);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (3, 'New York',34,3, 40.712784,-74.005941);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (4, 'Rochester',25,3, 43.16103,-77.610922);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (5, 'Baltimore',22,3,39.290385,-76.612189);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (6, 'Cleveland',37,3, 41.49932,-81.694361);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (7,  'Al Ain', 8 ,24.130162,55.802312);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (8,  'Amman', 22 ,31.956578,35.945695);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (10,  'Panama City', 25, 9.101179,-79.402864);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (11,  'Bangkok', 29, 13.756331,100.501765);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (12,  'Barcelona', 17, 41.385064,2.173403);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (13,  'Berlin', 7, 52.520007,13.404954);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (14,  'Bogota', 14, 4.710989,-74.072092);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (15,  'Boston', 23, 3, 42.360083,-71.05888);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (16,  'Budapest', 18, 47.497912,19.040235);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (17,  'Cancun', 2, 21.161908,-86.851528);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (18,  'Nuevo Leon', 2, 25.592172,-99.996195);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (19,  'Coral gables', 11, 3, 25.72149,-80.268384);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (20,  'Dubai', 8, 25.204849,55.270783);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (21,  'Escazu', 15, 9.920695,-84.146152);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (22,  'Freiburg', 7, 47.999008,7.842104);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (23,  'Guadalajara', 2, 20.659699,-103.349609);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (24,  'Gyeonggi-Do', 27, 37.4138,127.5183);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (25,  'Hermosillo', 2, 29.072967,-110.955919);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (26,  'Herston', 56, 10, -27.447888,153.029184);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (27,  'Houston', 45, 3, 43.610159,-116.783196);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (28,  'Incheon', 27, 37.456256,126.705206);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (29,  'Istanbul', 5, 41.008238,28.978359);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (30,  'Izmir', 5, 38.423734,27.142826);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (31,  'Jerusalem', 20, 31.768319,35.21371);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (32,  'Johannesburg', 28, -26.204103,28.047305);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (33,  'Kocaeli', 5, 40.85327,29.88152);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (34,  'Kuala Lumpur', 24, 3.139003,101.686855);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (35,  'Mexico City', 2, 19.432608,-99.133208);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (36,  'Mossel bay', 28, -34.174736,22.083407);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (37,  'Nassau', 12, 25.047984,-77.355413);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (38,  'Neuilly-sur-Seine', 6, 48.884831,2.26851);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (39,  'Petach Tikva', 20, 32.084041,34.887762);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (40,  'Prague', 16, 50.075538,14.4378);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (41,  'Riga', 23, 56.949649,24.105186);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (42,  'Rio De Janeiro', 11, -22.906847,-43.172896);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (43,  'Rouen Cedex', 6, 49.443232,1.099971);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (44,  'San Ignacio', 13, 27.042532,-99.44004);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (45,  'San Jose',  15 ,9.928069,-84.090725);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (46,  'Sao Paulo', 11, -23.55052,-46.633309);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (47,  'Selangor', 24, 3.073838,101.518347);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (48,  'Selangor Darul Ehsan', 24, 3.073838,101.518347);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (49,  'Seoul', 27, 37.566535,126.977969);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (50,  'Singapore', 26, 1.352083,103.819836);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (51,  'St. John''s', 32, 17.12741,-61.846772);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (52,  'Stanford', 6, 3, 37.424106,-122.166076);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (53,  'Taichung City', 30, 24.147736,120.673648);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (54,  'Taipei', 30, 25.032969,121.565418);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (55,  'Taoyuan City', 30, 24.993628,121.30098);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (56,  'Tel Aviv', 20, 32.0853,34.781768);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (57,  'Tel Hashomer', 20, 32.137247,34.874109);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (58,  'Tijuana', 2, 32.514947,-117.038247);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (59,  'Victoria', 10, 48.428421,-123.365644);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (60,  'Westmead', 55, 10, -33.807689,150.987277);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (61,  'Yan-Chao Shiang Kaohsiung County', 30, 22.627278,120.301435);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (62,  'hastings', 31, 40.586258,-98.389873);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (63,  'San Jose, Colombia',  14, 5.08414,-75.7903);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (64,  'Bangalore',  1, 12.971599,77.594563);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (65,  'Negeri Sembilan Darul Khusus', 24, 2.722375,101.948626);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (66,  'Mumbai', 1, 19.075984,72.877656);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (67,  'Lugang Town Changhua County', 30, 24.051796,120.516135);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (68,  'Mechanicsburg', 40, 3, 40.214256, -77.008588);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (69,  'East End', 33, 19.296345, -81.109423);
INSERT INTO `city` (id, name, country, lat, lon) VALUES (70,  'Medellín', 14, 6.2530408, -75.5645737);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (71,  'Lewis Center', 37, 3, 40.181493, -83.018116);
INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (72,  'Hooksett', 31, 3, 43.096722, -71.465126);

INSERT INTO `exchange_rate` (from_cur, to_cur, rate) VALUES ('USD', 'USD', 1);

INSERT INTO `daily_expense` (amount, country, currency) VALUES (150, 3, 'USD');

-- Dummy practitioner to hold procedure related costs for each hospital per data in the DRG file
insert into practitioner (first_name, last_name, email, role, type, password, title, usa_training) values ('Generic', 'Doctor', 'no-email@doctorglobe.com', 2, 1, SHA1('Password123'), 'Dr.', 0);

UNLOCK TABLES;
