USE DOCTOR_GLOBE;

-- ================================================2014 ====================================
-- Specialty
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Neurology', 'neurosurgery');			-- neurosurgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Ophthalmology (Eye)', 'Ophthalmology');		-- ophthalmologists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Otolaryngology (ENT)', 'Otolaryngology');		-- ent-otolaryngologists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Chest & Lungs', 'Pulmonology');		   	-- pulmonologists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Cardiology', 'Thoracic%20%26%20Cardiac%20Surgery');	-- cardiac-thoracic-surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Gastroenterology', 'general%20surgery');		-- surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Liver & Pancreas', 'general%20surgery');		-- surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Orthopedic', 'Orthopedic%20Surgery');		-- orthopedic-surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Dermatology', 'Dermatology');			-- dermatologists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Endocrinology', 'general%20surgery');		-- dermatologists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Urology', 'Urology');				-- urologists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Male Reproductive', 'Urology');			-- urologists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Gynecology', 'Gynecology');				-- obstetrician-gynecologists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Obstetrics', 'obstetrics');				-- obstetrician-gynecologists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('New Born', 'general%20surgery');			-- pediatric-surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Hematology', 'general%20surgery');			-- surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Oncology', 'general%20surgery');			-- surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Infections', 'general%20surgery');			-- surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Mental', 'general%20surgery');			-- psychiatrists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Alcohol', 'general%20surgery');			-- psychiatrists
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Emergency', 'general%20surgery');			-- surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Burns', 'Plastic%20Surgery');			-- plastic-surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Misc', 'general%20surgery');			-- surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Trauma', 'trauma');					-- surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('HIV', 'general%20surgery');				-- surgeons

INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Transplants', '');					-- surgeons
INSERT INTO `specialty` (name, usnews_doctor_link) VALUES ('Undefined', '');					-- surgeons


-- UPDATE `specialty` SET usnews_doctor_link='neurosurgeons' where name = 'Head & Neck';
-- UPDATE `specialty` SET usnews_doctor_link='ophthalmologists' where name = 'Ophthalmology (Eye)';
-- UPDATE `specialty` SET usnews_doctor_link='ent-otolaryngologists' where name = 'Otolaryngology (ENT)';
-- UPDATE `specialty` SET usnews_doctor_link='pulmonologists' where name = 'Chest & Lungs';
-- UPDATE `specialty` SET usnews_doctor_link='cardiac-thoracic-surgeons' where name = 'Cardiology';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'Gastroenterology';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'Liver & Pancreas';
-- UPDATE `specialty` SET usnews_doctor_link='orthopedic-surgeons' where name = 'Orthopedic';
-- UPDATE `specialty` SET usnews_doctor_link='dermatologists' where name = 'Dermatology';
-- UPDATE `specialty` SET usnews_doctor_link='dermatologists' where name = 'Endocrinology';
-- UPDATE `specialty` SET usnews_doctor_link='urologists' where name = 'Urology';
-- UPDATE `specialty` SET usnews_doctor_link='urologists' where name = 'Male Reproductive';
-- UPDATE `specialty` SET usnews_doctor_link='obstetrician-gynecologists' where name = 'Gynecology';
-- UPDATE `specialty` SET usnews_doctor_link='obstetrician-gynecologists' where name = 'Obstetrics';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'Hematology';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'Oncology';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'Infections';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'Emergency';
-- UPDATE `specialty` SET usnews_doctor_link='plastic-surgeons' where name = 'Burns';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'Misc';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'Trauma';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'HIV';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'Transplants';
-- UPDATE `specialty` SET usnews_doctor_link='surgeons' where name = 'Undefined';



-- Treatment
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Head (In-Scull) Vascular Surgery (Neurology)', 'INTRACRANIAL VASCULAR PROCEDURES W PDX HEMORRHAGE W MCC', '020');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Head Brain Complex Surgery (Neurology)', 'CRANIO W MAJOR DEV IMPL/ACUTE COMPLEX CNS PDX W MCC OR CHEMO IMPLANT', '023');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Head Brain Blood Vessels Surgery (Neurology)', 'CRANIOTOMY & ENDOVASCULAR INTRACRANIAL PROCEDURES W MCC', '025');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Spinal Cord Surgery (Neurology)', 'SPINAL PROCEDURES W CC OR SPINAL NEUROSTIMULATORS', '029');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Ventricular Shunt Brain Surgery (Neurology)', 'VENTRICULAR SHUNT PROCEDURES W/O CC/MCC', '033');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Dialation Of Carotid Artery (Neurology)', 'CAROTID ARTERY STENT PROCEDURE W/O CC/MCC', '036');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Head & Neck (Exclud Scull) Artery Surgery (Neurology)', 'EXTRACRANIAL PROCEDURES W/O CC/MCC', '039');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Nead Nerve System Surgery (Neurology)', 'PERIPH/CRANIAL NERVE & OTHER NERV SYST PROC W CC OR PERIPH NEUROSTIM', '41');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Orbital Eye Surgery (Ophthalmology)', 'ORBITAL PROCEDURES W CC/MCC', '113');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Orbital External Eye Surgery (Ophthalmology)', 'EXTRAOCULAR PROCEDURES EXCEPT ORBIT', '115');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Inner Eye Surgery (Ophthalmology)', 'INTRAOCULAR PROCEDURES W CC/MCC', '116');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Head & Neck Surgery (Otolaryngology / ENT)', 'MAJOR HEAD & NECK PROCEDURES W CC/MCC OR MAJOR DEVICE', '129');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Face Or Scull Surgery (Otolaryngology / ENT)', 'CRANIAL/FACIAL PROCEDURES W CC/MCC', '131');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Ear, Nose, Throat Or Mouth & Throat Surgery (Otolaryngology / ENT)', 'OTHER EAR, NOSE, MOUTH & THROAT O.R. PROCEDURES W CC/MCC', '133');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Sinus Or Temporal Surgery (Otolaryngology / ENT)', 'SINUS & MASTOID PROCEDURES W CC/MCC', '135');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Mouth Surgery (Otolaryngology / ENT)', 'MOUTH PROCEDURES W CC/MCC', '137');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Saliva Gland Surgery (Otolaryngology / ENT)', 'SALIVARY GLAND PROCEDURES', '139');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Chest & Lungs Surgery', 'MAJOR CHEST PROCEDURES W CC', '164');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Respitatory System Surgery (Chest / Lungs)', 'OTHER RESP SYSTEM O.R. PROCEDURES W MCC', '166');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Assist System Implant (Cardiology)', 'OTHER HEART ASSIST SYSTEM IMPLANT', '215');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Valve Surgery With Catheter (Cardiology)', 'CARDIAC VALVE & OTH MAJ CARDIOTHORACIC PROC W CARD CATH W/O CC/MCC', '218');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Valve Surgery Without Catheter (Cardiology)', 'CARDIAC VALVE & OTH MAJ CARDIOTHORACIC PROC W/O CARD CATH W CC', '220');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Defib Implant With Catheter & AMI/HF/SHOCK (Cardiology)', 'CARDIAC DEFIB IMPLANT W CARDIAC CATH W AMI/HF/SHOCK W/O MCC', '223');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Defib Implant With Catheter (Cardiology)', 'CARDIAC DEFIB IMPLANT W CARDIAC CATH W/O AMI/HF/SHOCK W/O MCC', '225');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Defib Implant Without Catheter (Cardiology)', 'CARDIAC DEFIBRILLATOR IMPLANT W/O CARDIAC CATH W/O MCC', '227');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Heart And Chest Surgery (Cardiology)', 'OTHER CARDIOTHORACIC PROCEDURES W CC', '229');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Bypass With Ptca (Cardiology)', 'CORONARY BYPASS W PTCA W/O MCC', '232');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Bypass With Catheter (Cardiology)', 'CORONARY BYPASS W CARDIAC CATH W/O MCC', '234');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Bypass Without Catheter (Cardiology)', 'CORONARY BYPASS W/O CARDIAC CATH W MCC', '235');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Cardiovascular Surgery (Heart)', 'MAJOR CARDIOVASC PROCEDURES W/O MCC', '238');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Lower Limb Amputation Due To Circular Disorder (Cardiology)', 'AMPUTATION FOR CIRC SYS DISORDERS EXC UPPER LIMB & TOE W CC', '240');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Pacemaker Implant (Cardiology)', 'PERMANENT CARDIAC PACEMAKER IMPLANT W CC', '243');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Artery Dialation W Drug-Eluting Stent (Cardiology)', 'PERC CARDIOVASC PROC W DRUG-ELUTING STENT W/O MCC', '247');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Artery Dialation With Non-Drug-Eluting Stent (Cardiology)', 'PERC CARDIOVASC PROC W NON-DRUG-ELUTING STENT W/O MCC', '249');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Artery Dialation Without A Stent (Cardiology)', 'PERC CARDIOVASC PROC W/O CORONARY ARTERY STENT W/O MCC', '251');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Pulmonary (Chest) Vascular Surgery (Cardiology)', 'OTHER VASCULAR PROCEDURES W CC', '253');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Upper Limb Amputation Due To Circular Disorder (Cardiology)', 'UPPER LIMB & TOE AMPUTATION FOR CIRC SYSTEM DISORDERS W CC', '256');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Pacemaker Replacement (Cardiology)', 'CARDIAC PACEMAKER DEVICE REPLACEMENT W/O MCC', '259');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Pacemaker Revision (Cardiology)', 'CARDIAC PACEMAKER REVISION EXCEPT DEVICE REPLACEMENT W CC', '261');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Vein Repair/Extraction/Excision/Insertion/Removal (Cardiology)', 'VEIN LIGATION & STRIPPING', '263');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Stomach, Esophagus, Or Duodenal Surgery (Gastroenterology)', 'STOMACH, ESOPHAGEAL & DUODENAL PROC W CC', '327');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Small Or Large Bowel Surgery (Gastroenterology)', 'MAJOR SMALL & LARGE BOWEL PROCEDURES W CC', '330');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Rectum Removal (Gastroenterology)', 'RECTAL RESECTION W CC', '333');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Removal Of Scar Tissue In Belly Surgery (Gastroenterology)', 'PERITONEAL ADHESIOLYSIS W CC', '336');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Complicated Appendix Removal (Gastroenterology)', 'APPENDECTOMY W COMPLICATED PRINCIPAL DIAG W/O CC/MCC', '340');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Complicated Appendix Removal (Gastroenterology)', 'APPENDECTOMY W/O COMPLICATED PRINCIPAL DIAG W/O CC/MCC', '343');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Minor Small Or Large Bowel Surgery (Gastroenterology)', 'MINOR SMALL & LARGE BOWEL PROCEDURES W CC', '345');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Rectum Or Anus Surgery (Gastroenterology)', 'ANAL & STOMAL PROCEDURES W CC', '348');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Inguinal & Femoral Hernia (Gastroenterology)', 'INGUINAL & FEMORAL HERNIA PROCEDURES W/O CC/MCC', '352');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hernia Except Inguinal & Femoral (Gastroenterology)', 'HERNIA PROCEDURES EXCEPT INGUINAL & FEMORAL W CC', '354');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Digestive System Surgery (Gastroenterology)', 'OTHER DIGESTIVE SYSTEM O.R. PROCEDURES W CC', '357');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Pancreas, Liver & Shunt Surgery (Hepatobiliary)', 'PANCREAS, LIVER & SHUNT PROCEDURES W CC', '406');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Liver & Gallbladder Surgery (Hepatobiliary)', 'BILIARY TRACT PROC EXCEPT ONLY CHOLECYST W OR W/O C.D.E. W CC', '409');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Gallbladder Removal With C.D.E. (Hepatobiliary)', 'CHOLECYSTECTOMY W C.D.E. W/O CC/MCC', '413');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Laparoscopic Gallbladder Removal W/O C.D.E. (Hepatobiliary)', 'CHOLECYSTECTOMY EXCEPT BY LAPAROSCOPE W/O C.D.E. W/O CC/MCC', '416');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Laparoscopic Gallbladder Removal W/O C.D.E. (Hepatobiliary)', 'LAPAROSCOPIC CHOLECYSTECTOMY W/O C.D.E. W CC', '418');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Liver And Gallbladder Diagnostic Surgery (Hepatobiliary)', 'HEPATOBILIARY DIAGNOSTIC PROCEDURES W CC', '421');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Liver & Gallbladder Or Pancreas Surgery (Hepatobiliary)', 'OTHER HEPATOBILIARY OR PANCREAS O.R. PROCEDURES W MCC', '423');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Combined Bilateral (2 Sided) Spinal Fusion (Orthopedics)', 'COMBINED ANTERIOR/POSTERIOR SPINAL FUSION W CC', '454');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Cervical Spinal Fusion With CURV/MALIG/INFEC (Orthopedics)', 'SPINAL FUS EXC CERV W SPINAL CURV/MALIG/INFEC OR 9+ FUS W/O CC/MCC', '458');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Cervical Spinal Fusion (Orthopedics)', 'SPINAL FUSION EXCEPT CERVICAL W/O MCC', '460');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Bilateral (2 Sided) Or Multiple Hip Replacements (Orthopedics)', 'BILATERAL OR MULTIPLE MAJOR JOINT PROCS OF LOWER EXTREMITY W/O MCC', '462');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Bilateral (2 Sided) Or Multiple Knee Replacements (Orthopedics)', 'BILATERAL OR MULTIPLE MAJOR JOINT PROCS OF LOWER EXTREMITY W/O MCC', '462');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Skin Graft Surgery (Non Hand) For Tissue Disordr (Orthopedics)', 'WND DEBRID & SKN GRFT EXC HAND, FOR MUSCULO-CONN TISS DIS W CC', '464');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hip Replacement Revision (Orthopedics)', 'REVISION OF HIP OR KNEE REPLACEMENT W CC', '467');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Knee Replacement Revision (Orthopedics)', 'REVISION OF HIP OR KNEE REPLACEMENT W CC', '467');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hip Replacement Or Reattachment (Orthopedics)', 'MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC', '470');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Knee Replacement Or Reattachment (Orthopedics)', 'MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC', '470');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Cervical Spinal Fusion (Orthopedics)', 'CERVICAL SPINAL FUSION W/O CC/MCC', '473');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Amputation Due To Muscule, Bone, Or Tissue Disorder (Orthopedics)', 'AMPUTATION FOR MUSCULOSKELETAL SYS & CONN TISSUE DIS W CC', '475');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Biopsy Of Bone, Muscle, Or Connecting Tissue (Orthopedics)', 'BIOPSIES OF MUSCULOSKELETAL SYSTEM & CONNECTIVE TISSUE W CC', '478');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Replacement Hip & Thigh Surgery (Orthopedics)', 'HIP & FEMUR PROCEDURES EXCEPT MAJOR JOINT W CC', '481');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Shoulder / Elbow Replacement (Orthopedics)', 'MAJOR JOINT & LIMB REATTACHMENT PROC OF UPPER EXTREMITY W/O CC/MCC', '484');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Knee Surgery With PDX Of Infection (Orthopedics)', 'KNEE PROCEDURES W PDX OF INFECTION W/O CC/MCC', '487');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Knee Surgery Without PDX Of Infection (Orthopedics)', 'KNEE PROCEDURES W/O PDX OF INFECTION W/O CC/MCC', '489');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Fusion Back Or Neck Surgery (Orthopedics)', 'BACK & NECK PROC EXC SPINAL FUSION W/O CC/MCC', '491');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Leg Surgery Except Hip, Foot, And Thigh (Orthopedics)', 'LOWER EXTREM & HUMER PROC EXCEPT HIP,FOOT,FEMUR W CC', '493');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Removal Of Non-Hip Or Thigh Internal Fixed Devices (Orthopedics)', 'LOCAL EXCISION & REMOVAL INT FIX DEVICES EXC HIP & FEMUR W CC', '496');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Removal Of Hip Or Thigh Internal Fixed Devices (Orthopedics)', 'LOCAL EXCISION & REMOVAL INT FIX DEVICES OF HIP & FEMUR W/O CC/MCC', '499');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Muscle Surgery (Orthopedics)', 'SOFT TISSUE PROCEDURES W CC', '501');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Foot Surgery (Orthopedics)', 'FOOT PROCEDURES W CC', '504');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Thumb / Wrist Repair Surgery (Orthopedics)', 'MAJOR THUMB OR JOINT PROCEDURES', '506');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Shoulder Or Elbow Surgery (Orthopedics)', 'MAJOR SHOULDER OR ELBOW JOINT PROCEDURES W CC/MCC', '507');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Arthroscopy Of Any Joint (Orthopedics)', 'ARTHROSCOPY', '509');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Shoulder/Elbow/Forarm Joint Repair Surgery (Orthopedics)', 'SHOULDER,ELBOW OR FOREARM PROC,EXC MAJOR JOINT PROC W/O CC/MCC', '512');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Minor Hand Or Wrist Repair Surgery (Orthopedics)', 'HAND OR WRIST PROC, EXCEPT MAJOR THUMB OR JOINT PROC W CC/MCC', '513');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Muscle, Skeleton & Connective Tissue Surgery (Orthopedics)', 'OTHER MUSCULOSKELET SYS & CONN TISS O.R. PROC W CC', '516');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Back & Neck Surgery Excluding Spinal Fusion (Orthopedics)', 'BACK & NECK PROC EXC SPINAL FUSION W/O CC/MCC', '520');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Removal Of Damaged Skin Or Foreign Object (Dermatology)', 'SKIN DEBRIDEMENT W CC', '571');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Ulcer Or Cellulitis Skin Surgery (Dermatology)', 'SKIN GRAFT FOR SKIN ULCER OR CELLULITIS W MCC', '573');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Ulcer Or Cellulitis Skin Surgery (Dermatology)', 'SKIN GRAFT EXC FOR SKIN ULCER OR CELLULITIS W/O CC/MCC', '578');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Breast Skin Surgery (Dermatology)', 'OTHER SKIN, SUBCUT TISS & BREAST PROC W CC', '580');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Breast Removal For Cancerous Tumor (Mastectomy)', 'MASTECTOMY FOR MALIGNANCY W/O CC/MCC', '583');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Breast Biopsy (Dermatology)', 'BREAST BIOPSY, LOCAL EXCISION & OTHER BREAST PROCEDURES W/O CC/MCC', '585');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Adrenal Or Pituitary Gland Surgery (Endocrinology)', 'ADRENAL & PITUITARY PROCEDURES W CC/MCC', '614');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Metabolic Related Amputation Of A Lower Limb (Endocrinology)', 'AMPUTAT OF LOWER LIMB FOR ENDOCRINE,NUTRIT,& METABOL DIS W CC', '617');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Obesity Related Surgery (Endocrinology)', 'O.R. PROCEDURES FOR OBESITY W/O CC/MCC', '621');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Matabolic Related Skin Repair Or Replacement (Endocrinology)', 'SKIN GRAFTS & WOUND DEBRID FOR ENDOC, NUTRIT & METAB DIS W CC', '623');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Thyroid, Parathyroid, Thyroglossal Surgery (Endocrinology)', 'THYROID, PARATHYROID & THYROGLOSSAL PROCEDURES W/O CC/MCC', '627');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Misc. Endocrin, Metabolic, Nutrition Surgery (Endocrinology)', 'OTHER ENDOCRINE, NUTRIT & METAB O.R. PROC W CC', '629');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Kidney Transplant (Urology)', 'KIDNEY TRANSPLANT', '652');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Bladder Surgery (Urology)', 'MAJOR BLADDER PROCEDURES W CC', '654');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Tumor Related Kidney & Ureter Surgery (Urology)', 'KIDNEY & URETER PROCEDURES FOR NEOPLASM W/O CC/MCC', '658');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Tumor Related Kidney & Ureter Surgery (Urology)', 'KIDNEY & URETER PROCEDURES FOR NON-NEOPLASM W CC', '660');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Minor Bladder Surgery (Urology)', 'MINOR BLADDER PROCEDURES W CC', '663');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Prostate Removal Surgery (Urology)', 'PROSTATECTOMY W CC', '666');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Surgery Through The Urether (Urology)', 'TRANSURETHRAL PROCEDURES W CC', '669');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Uretheral (Urin Tube) Surgery (Urology)', 'URETHRAL PROCEDURES W CC/MCC', '671');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Kidney & Urinary Tract Surgery (Urology)', 'OTHER KIDNEY & URINARY TRACT PROCEDURES W MCC', '673');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Bladder/Prostate Surgery (Male)', 'MAJOR MALE PELVIC PROCEDURES W/O CC/MCC', '708');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Pennis Surgery (Male)', 'PENIS PROCEDURES W/O CC/MCC', '710');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Testecles Surgery (Male)', 'TESTES PROCEDURES W CC/MCC', '711');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Prostate Removal Through Urether (Male)', 'TRANSURETHRAL PROSTATECTOMY W/O CC/MCC', '714');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Male Reproductive System Surgery For Malignancy', 'OTHER MALE REPRODUCTIVE SYSTEM O.R. PROC FOR MALIGNANCY W/O CC/MCC', '716');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Male Reproductive System Surgery Non-Malignancy', 'OTHER MALE REPRODUCTIVE SYSTEM O.R. PROC EXC MALIGNANCY W CC/MCC', '717');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hysterectomy (Gynecology)', 'PELVIC EVISCERATION, RAD HYSTERECTOMY & RAD VULVECTOMY W CC/MCC', '734');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Uterine Surgery For Ovarian Malignancy (Gynecology)', 'UTERINE & ADNEXA PROC FOR OVARIAN OR ADNEXAL MALIGNANCY W/O CC/MCC', '738');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Uterine Surgery For Non-Ovarian Malignancy (Gynecology)', 'UTERINE,ADNEXA PROC FOR NON-OVARIAN/ADNEXAL MALIG W/O CC/MCC', '741');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Uterine & Adnexa Surgery For Non-Malignancy (Gynecology)', 'UTERINE & ADNEXA PROC FOR NON-MALIGNANCY W/O CC/MCC', '743');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Overies & Tubes Removal Surgery (Gynecology)', 'D&C, CONIZATION, LAPAROSCOPY & TUBAL INTERRUPTION W CC/MCC', '744');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Veginal, Cervical, Or Vulva Repair Surgery (Gynecology)', 'VAGINA, CERVIX & VULVA PROCEDURES W/O CC/MCC', '747');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Female Reproductive System Reconstruction (Gynecology)', 'FEMALE REPRODUCTIVE SYSTEM RECONSTRUCTIVE PROCEDURES', '748');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Female Reproductive System Surgery (Gynecology)', 'OTHER FEMALE REPRODUCTIVE SYSTEM O.R. PROCEDURES W CC/MCC', '749');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Cesarean/ C Section (Obstetrics)', 'CESAREAN SECTION W CC/MCC', '765');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('O.R. Vaginal Delivery (Obstetrics)', 'VAGINAL DELIVERY W STERILIZATION &/OR D&C', '767');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('After Birth Or After Abortion Surgery (Obstetrics)', 'POSTPARTUM & POST ABORTION DIAGNOSES W O.R. PROCEDURE', '769');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Abortion With Aspiration Or Hysterectomy (Obstetrics)', 'ABORTION W D&C, ASPIRATION CURETTAGE OR HYSTEROTOMY', '770');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Splene Removal (Hematology)', 'SPLENECTOMY W CC', '800');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Blood & Blood Forming Organs Surgery (Hematology)', 'OTHER O.R. PROC OF THE BLOOD & BLOOD FORMING ORGANS W CC', '803');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Lymphoma Or Leukemia Major Surgery (Oncology)', 'LYMPHOMA & LEUKEMIA W MAJOR O.R. PROCEDURE W CC', '821');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Lymphome Or Leukemia With Other Surgeries (Oncology)', 'LYMPHOMA & NON-ACUTE LEUKEMIA W OTHER O.R. PROC W CC', '824');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Myeloproliferative Disorder Surgery (Oncology)', 'MYELOPROLIF DISORD OR POORLY DIFF NEOPL W MAJ O.R. PROC W CC', '827');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Myeloproliferative Disorder Surgery (Oncology)', 'MYELOPROLIF DISORD OR POORLY DIFF NEOPL W OTHER O.R. PROC W/O CC/MCC', '830');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Infection Or Parasites Related Surgery (Infections)', 'INFECTIOUS & PARASITIC DISEASES W O.R. PROCEDURE W MCC', '853');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Post-Op Or Post Trauma Infection Surgery (Infections)', 'POSTOPERATIVE OR POST-TRAUMATIC INFECTIONS W O.R. PROC W CC', '857');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Wound Cleaning Surgery (Emergency)', 'WOUND DEBRIDEMENTS FOR INJURIES W CC', '902');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Surgery For Injury Skin Repair Or Replace (Emergency)', 'SKIN GRAFTS FOR INJURIES W CC/MCC', '904');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hand Surgery For Injury (Emergency)', 'HAND PROCEDURES FOR INJURIES', '906');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Surgeries For Injuries (Emergency)', 'OTHER O.R. PROCEDURES FOR INJURIES W CC', '908');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Surgery For Extensive Burns', 'EXTENSIVE BURNS OR FULL THICKNESS BURNS W MV 96+ HRS W SKIN GRAFT', '927');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Skin Repair Or Replace For Severe Burns', 'FULL THICKNESS BURN W SKIN GRAFT OR INHAL INJ W CC/MCC', '928');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('O.R. Procedure For An Udefined Reason', 'O.R. PROC W DIAGNOSES OF OTHER CONTACT W HEALTH SERVICES W CC', '940');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Trauma Related Scull Surgery', 'CRANIOTOMY FOR MULTIPLE SIGNIFICANT TRAUMA', '955');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Limb Reattachement For Multiple Trauma', 'LIMB REATTACHMENT, HIP & FEMUR PROC FOR MULTIPLE SIGNIFICANT TRAUMA', '956');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Misc. Svere Trauma Related Surgeries', 'OTHER O.R. PROCEDURES FOR MULTIPLE SIGNIFICANT TRAUMA W MCC', '957');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Extensive HIV Related Surgery', 'HIV W EXTENSIVE O.R. PROCEDURE W MCC', '969');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Transplant', 'HEART TRANSPLANT OR IMPLANT OF HEART ASSIST SYSTEM W MCC', '001');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Liver Transplant', 'LIVER TRANSPLANT W/O MCC', '006');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Lung Transplant', 'LUNG TRANSPLANT', '007');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Simultaneous Pancreas/Kidney Transplant', 'SIMULTANEOUS PANCREAS/KIDNEY TRANSPLANT', '008');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Pancreas Transplant', 'PANCREAS TRANSPLANT', '010');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Tracheostomy', 'TRACHEOSTOMY FOR FACE,MOUTH & NECK DIAGNOSES W CC', '012');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Bone Marrow Transplant (Donor Cells)', 'ALLOGENEIC BONE MARROW TRANSPLANT', '014');
INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Bone Marrow Transplant (Own Cells)', 'AUTOLOGOUS BONE MARROW TRANSPLANT W CC/MCC', '016');

-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Head Vascular Surgery', 'INTRACRANIAL VASCULAR PROCEDURES W PDX HEMORRHAGE W/O CC/MCC', '022');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Head Brain Complex Surgery (Neurology)', 'CRANIO W MAJOR DEV IMPL/ACUTE COMPLEX CNS PDX W/O MCC', '024');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Head Brain Blood Vessels Surgery (Neurology)', 'CRANIOTOMY & ENDOVASCULAR INTRACRANIAL PROCEDURES W/O CC/MCC', '027');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Spinal Cord Surgery', 'SPINAL PROCEDURES W/O CC/MCC', '030');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Brain Surgery', 'VENTRICULAR SHUNT PROCEDURES W/O CC/MCC', '033');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Dialation Of Carotid Artery', 'CAROTID ARTERY STENT PROCEDURE W/O CC/MCC', '036');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Outer Skull Artery Surgery', 'EXTRACRANIAL PROCEDURES W/O CC/MCC', '039');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Nead Nerves Surgery', 'PERIPH/CRANIAL NERVE & OTHER NERV SYST PROC W/O CC/MCC', '042');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Orbital Surgery', 'ORBITAL PROCEDURES W/O CC/MCC', '114');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Outer Eye Surgery', 'EXTRAOCULAR PROCEDURES EXCEPT ORBIT', '115');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Inner Eye Surgery', 'INTRAOCULAR PROCEDURES W/O CC/MCC', '117');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Head & Neck Surgery (ENT)', 'MAJOR HEAD & NECK PROCEDURES W/O CC/MCC', '130');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Face Or Scull Surgery (ENT)', 'CRANIAL/FACIAL PROCEDURES W/O CC/MCC', '132');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Ent Or Mouth & Throat Surgery', 'OTHER EAR, NOSE, MOUTH & THROAT O.R. PROCEDURES W/O CC/MCC', '134');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Sinus Or Temporal Surgery', 'SINUS & MASTOID PROCEDURES W/O CC/MCC', '136');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Mouth Surgery (ENT)', 'MOUTH PROCEDURES W/O CC/MCC', '138');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Saliva Gland Surgery (ENT)', 'SALIVARY GLAND PROCEDURES', '139');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Chest Surgery', 'MAJOR CHEST PROCEDURES W/O CC/MCC', '165');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Respiratory System Surgery', 'OTHER RESP SYSTEM O.R. PROCEDURES W/O CC/MCC', '168');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Assist Systems Implant', 'OTHER HEART ASSIST SYSTEM IMPLANT', '215');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Valve Surgery Without Cardiac Catheter', 'CARDIAC VALVE & OTH MAJ CARDIOTHORACIC PROC W/O CARD CATH W/O CC/MCC', '221');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Defibrilator Implant Without Cardiac Catheter', 'CARDIAC DEFIBRILLATOR IMPLANT W/O CARDIAC CATH W/O MCC', '227');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('General Heart And Chest Surgery (Not Ceratin Specific)', 'OTHER CARDIOTHORACIC PROCEDURES W/O CC/MCC', '230');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Coronary Bypass With Cardiac Catheter', 'CORONARY BYPASS W CARDIAC CATH W/O MCC', '234');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Coronary Bypass Without Cardiac Catheter (Default)', 'CORONARY BYPASS W/O CARDIAC CATH W/O MCC', '236');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Heart Blood Vessels Surgery (Not Certain Specific)', 'MAJOR CARDIOVASC PROCEDURES W/O MCC', '238');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Lower Limb Amputation Due To Circular Disorder', 'AMPUTATION FOR CIRC SYS DISORDERS EXC UPPER LIMB & TOE W/O CC/MCC', '241');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Pacemaker Implant', 'PERMANENT CARDIAC PACEMAKER IMPLANT W/O CC/MCC', '244');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Blood Vessel Dialation With Drug Stent (Default)', 'PERC CARDIOVASC PROC W DRUG-ELUTING STENT W/O MCC', '247');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Pulmonary (Chest) Vascular Surgery', 'OTHER VASCULAR PROCEDURES W/O CC/MCC', '254');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Upper Limb Amputation Due To Circular Disorder', 'UPPER LIMB & TOE AMPUTATION FOR CIRC SYSTEM DISORDERS W/O CC/MCC', '257');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Pacemaker Replacement', 'CARDIAC PACEMAKER DEVICE REPLACEMENT W/O MCC', '259');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Pacemaker Revision (No Replacement)', 'CARDIAC PACEMAKER REVISION EXCEPT DEVICE REPLACEMENT W/O CC/MCC', '262');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Vein Repair/Extraction/Excision/Insertion/Removal', 'VEIN LIGATION & STRIPPING', '263');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('General Ventricle Or Thoracic Nerve Surgery', 'OTHER CIRCULATORY SYSTEM O.R. PROCEDURES', '264');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Stomach, Esophagus, Or Duodenal Surgery', 'STOMACH, ESOPHAGEAL & DUODENAL PROC W/O CC/MCC', '328');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Small Or Large Bowel Surgery (Default)', 'MAJOR SMALL & LARGE BOWEL PROCEDURES W/O CC/MCC', '331');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Rectum Removal', 'RECTAL RESECTION W/O CC/MCC', '334');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Removal Of Scar Tissue In Belly Surgery', 'PERITONEAL ADHESIOLYSIS W/O CC/MCC', '337');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Appendix Removal - Complicated Diagnoses (Default)', 'APPENDECTOMY W COMPLICATED PRINCIPAL DIAG W/O CC/MCC', '340');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Minor Small Or Large Bowel Surgery', 'MINOR SMALL & LARGE BOWEL PROCEDURES W/O CC/MCC', '346');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Rectum Or Anus Surgery', 'ANAL & STOMAL PROCEDURES W/O CC/MCC', '349');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Inguinal (Hip) Hernia Surgery (Default)', 'HERNIA PROCEDURES EXCEPT INGUINAL & FEMORAL W/O CC/MCC', '355');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Digestive System Sergery', 'OTHER DIGESTIVE SYSTEM O.R. PROCEDURES W/O CC/MCC', '358');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Pancreas Or Liver Surgery', 'PANCREAS, LIVER & SHUNT PROCEDURES W/O CC/MCC', '407');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Liver & Gallbladder Surgery', 'BILIARY TRACT PROC EXCEPT ONLY CHOLECYST W OR W/O C.D.E. W/O CC/MCC', '410');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Laproscopic Gallbladder Removal', 'LAPAROSCOPIC CHOLECYSTECTOMY W/O C.D.E. W/O CC/MCC', '419');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Liver And Gallbladder Diagnostic Surgery', 'HEPATOBILIARY DIAGNOSTIC PROCEDURES W/O CC/MCC', '422');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Liver, Pncreas, And Gallbladder Surgery', 'OTHER HEPATOBILIARY OR PANCREAS O.R. PROCEDURES W/O CC/MCC', '425');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Combined Bilateral (Both Sides) Spinal Fusion', 'COMBINED ANTERIOR/POSTERIOR SPINAL FUSION W/O CC/MCC', '455');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Cervical Spinal Fusion (Default)', 'SPINAL FUSION EXCEPT CERVICAL W/O MCC', '460');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Bilateral (2 Sides) Or Multiple Hip Or Knee Replacements', 'BILATERAL OR MULTIPLE MAJOR JOINT PROCS OF LOWER EXTREMITY W/O MCC', '462');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Wound Or Skin Graft Surgery (Non Hand) For Musc Or Connct Tsue Disordr', 'WND DEBRID & SKN GRFT EXC HAND, FOR MUSCULO-CONN TISS DIS W/O CC/MCC', '465');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hip Or Knee Replacement Revision', 'REVISION OF HIP OR KNEE REPLACEMENT W/O CC/MCC', '468');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hip Or Knee Replacement Or Reattachment', 'MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC', '470');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Cervical Spinal Fusion', 'CERVICAL SPINAL FUSION W/O CC/MCC', '473');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Amputation Due To Muscule, Bone, Or Tissue Disorder', 'AMPUTATION FOR MUSCULOSKELETAL SYS & CONN TISSUE DIS W/O CC/MCC', '476');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Bone, Muscle, Or Connecting Tissue Biopsy', 'BIOPSIES OF MUSCULOSKELETAL SYSTEM & CONNECTIVE TISSUE W/O CC/MCC', '479');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hip Or Thigh Surgery (No Joint Replacement)', 'HIP & FEMUR PROCEDURES EXCEPT MAJOR JOINT W/O CC/MCC', '482');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Shoulder Or Elbow Replacement', 'MAJOR JOINT & LIMB REATTACHMENT PROC OF UPPER EXTREMITY W/O CC/MCC', '484');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Knee Repair Surgery', 'KNEE PROCEDURES W/O PDX OF INFECTION W/O CC/MCC', '489');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Back Or Neck Surgery (No Fusion)', 'BACK & NECK PROC EXC SPINAL FUSION W/O CC/MCC', '491');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Leg Surgery (General)', 'LOWER EXTREM & HUMER PROC EXCEPT HIP,FOOT,FEMUR W/O CC/MCC', '494');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Removal Of Leg Internal Fixed Devices (Non Hip And Thigh)', 'LOCAL EXCISION & REMOVAL INT FIX DEVICES EXC HIP & FEMUR W/O CC/MCC', '497');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Soft Tisue Surgery (Muscle)', 'SOFT TISSUE PROCEDURES W/O CC/MCC', '502');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Foot Surgery', 'FOOT PROCEDURES W/O CC/MCC', '505');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Thumb Or Joint Repair Surgery', 'MAJOR THUMB OR JOINT PROCEDURES', '506');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Shoulder Or Elbow Surgery', 'MAJOR SHOULDER OR ELBOW JOINT PROCEDURES W/O CC/MCC', '508');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Arthroscopy Of Any Joint', 'ARTHROSCOPY', '509');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Upper Joint Repair Surgery (No Replacement)', 'SHOULDER,ELBOW OR FOREARM PROC,EXC MAJOR JOINT PROC W/O CC/MCC', '512');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hand Or Wrist Repair Surgery (No Thumb)', 'HAND OR WRIST PROC, EXCEPT MAJOR THUMB OR JOINT PROC W/O CC/MCC', '514');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Muscle Or Bone Surgery', 'OTHER MUSCULOSKELET SYS & CONN TISS O.R. PROC W/O CC/MCC', '517');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Removal Of Damaged Skin Or Foreign Object', 'SKIN DEBRIDEMENT W/O CC/MCC', '572');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Skin Repair Or Replace For Ulcer Or Cellulitis', 'SKIN GRAFT FOR SKIN ULCER OR CELLULITIS W/O CC/MCC', '575');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Breast Skin Surgery', 'OTHER SKIN, SUBCUT TISS & BREAST PROC W/O CC/MCC', '581');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Breast Removal For Cancerous Tumor (Mastectomy)', 'MASTECTOMY FOR MALIGNANCY W/O CC/MCC', '583');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Breast Biopsy', 'BREAST BIOPSY, LOCAL EXCISION & OTHER BREAST PROCEDURES W/O CC/MCC', '585');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Adrenal Or Pituitary Glands Surgery', 'ADRENAL & PITUITARY PROCEDURES W/O CC/MCC', '615');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Amputation Of A Lower Limb (Metabolic)', 'AMPUTAT OF LOWER LIMB FOR ENDOCRINE,NUTRIT,& METABOL DIS W/O CC/MCC', '618');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Obesity Related Surgery', 'O.R. PROCEDURES FOR OBESITY W/O CC/MCC', '621');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Skin Repair Or Replacement (Metabolic)', 'SKIN GRAFTS & WOUND DEBRID FOR ENDOC, NUTRIT & METAB DIS W/O CC/MCC', '624');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Thyroid, Parathyroid, Thyroglossal Surgery', 'THYROID, PARATHYROID & THYROGLOSSAL PROCEDURES W/O CC/MCC', '627');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Endocrin, Metabolic, Nutrition Surgery', 'OTHER ENDOCRINE, NUTRIT & METAB O.R. PROC W/O CC/MCC', '630');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Kidney Transplant', 'KIDNEY TRANSPLANT', '652');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Bladder Surgery', 'MAJOR BLADDER PROCEDURES W/O CC/MCC', '655');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Kidney & Ureter Surgery Non-Tumor', 'KIDNEY & URETER PROCEDURES FOR NON-NEOPLASM W/O CC/MCC', '661');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Minor Bladder Surgery', 'MINOR BLADDER PROCEDURES W/O CC/MCC', '664');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Prostate Removal Surgery', 'PROSTATECTOMY W/O CC/MCC', '667');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Surgery Through The Urether (The Urine Tube)', 'TRANSURETHRAL PROCEDURES W/O CC/MCC', '670');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Uretheral (Urin Tube) Surgery', 'URETHRAL PROCEDURES W/O CC/MCC', '672');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Major Bladder/Prostate Surgery', 'MAJOR MALE PELVIC PROCEDURES W/O CC/MCC', '708');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Pennis Surgery', 'PENIS PROCEDURES W/O CC/MCC', '710');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Testecles Surgery', 'TESTES PROCEDURES W/O CC/MCC', '712');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Prostate Removal Through Urin Tube', 'TRANSURETHRAL PROSTATECTOMY W/O CC/MCC', '714');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Male Reproductive Surgery Non-Cancer', 'OTHER MALE REPRODUCTIVE SYSTEM O.R. PROC EXC MALIGNANCY W/O CC/MCC', '718');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hysterectomy', 'PELVIC EVISCERATION, RAD HYSTERECTOMY & RAD VULVECTOMY W/O CC/MCC', '735');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Overies/Tubes Surgery / Non-Cancer', 'UTERINE & ADNEXA PROC FOR NON-MALIGNANCY W/O CC/MCC', '743');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Veginal, Cervical, Or Vulva Repair Surgery', 'VAGINA, CERVIX & VULVA PROCEDURES W/O CC/MCC', '747');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Female Reproductive System Reconstructive Surgery', 'FEMALE REPRODUCTIVE SYSTEM RECONSTRUCTIVE PROCEDURES', '748');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Female Reproductive System Surgery', 'OTHER FEMALE REPRODUCTIVE SYSTEM O.R. PROCEDURES W/O CC/MCC', '750');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('C-Section', 'CESAREAN SECTION W/O CC/MCC', '766');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('O.R. Vaginal Delivery With Sterilization', 'VAGINAL DELIVERY W STERILIZATION &/OR D&C', '767');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('O.R. Vaginal Delivery Without Sterilization', 'VAGINAL DELIVERY W O.R. PROC EXCEPT STERIL &/OR D&C', '768');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('After Birth Or After Abortion Surgery', 'POSTPARTUM & POST ABORTION DIAGNOSES W O.R. PROCEDURE', '769');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Abortion With Aspiration Or Hysterectomy', 'ABORTION W D&C, ASPIRATION CURETTAGE OR HYSTEROTOMY', '770');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Splene Removal', 'SPLENECTOMY W/O CC/MCC', '801');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Surgeries Or Blood Forming Organs', 'OTHER O.R. PROC OF THE BLOOD & BLOOD FORMING ORGANS W/O CC/MCC', '804');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Lymphoma Or Leukemia Major Surgery', 'LYMPHOMA & LEUKEMIA W MAJOR O.R. PROCEDURE W/O CC/MCC', '822');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Lymphome Or Leukemia With Other Surgeries', 'LYMPHOMA & NON-ACUTE LEUKEMIA W OTHER O.R. PROC W/O CC/MCC', '825');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Myeloproliferative Disorder Major Surgery', 'MYELOPROLIF DISORD OR POORLY DIFF NEOPL W MAJ O.R. PROC W/O CC/MCC', '828');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Infection Or Parasites Related Surgery', 'INFECTIOUS & PARASITIC DISEASES W O.R. PROCEDURE W/O CC/MCC', '855');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Post-Op Or Post Trauma Infection Surgery', 'POSTOPERATIVE OR POST-TRAUMATIC INFECTIONS W O.R. PROC W/O CC/MCC', '858');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Wound Cleaning Surgery', 'WOUND DEBRIDEMENTS FOR INJURIES W/O CC/MCC', '903');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Surgery For Injury Skin Repair Or Replace', 'SKIN GRAFTS FOR INJURIES W/O CC/MCC', '905');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hand Surgery For Injury', 'HAND PROCEDURES FOR INJURIES', '906');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Surgeries For Injury', 'OTHER O.R. PROCEDURES FOR INJURIES W/O CC/MCC', '909');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Surgery For Extensive Burns', 'EXTENSIVE BURNS OR FULL THICKNESS BURNS W MV 96+ HRS W SKIN GRAFT', '927');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Skin Repair Or Replace For Severe Burns', 'FULL THICKNESS BURN W SKIN GRAFT OR INHAL INJ W/O CC/MCC', '929');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('O.R. Procedure For An Udefined Reason', 'O.R. PROC W DIAGNOSES OF OTHER CONTACT W HEALTH SERVICES W/O CC/MCC', '941');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Trauma Related Scull Surgery', 'CRANIOTOMY FOR MULTIPLE SIGNIFICANT TRAUMA', '955');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Limb Reattachement For Multiple Trauma', 'LIMB REATTACHMENT, HIP & FEMUR PROC FOR MULTIPLE SIGNIFICANT TRAUMA', '956');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Other Svere Trauma Related Surgeries', 'OTHER O.R. PROCEDURES FOR MULTIPLE SIGNIFICANT TRAUMA W/O CC/MCC', '959');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Extensive Hiv Related Surgery', 'HIV W EXTENSIVE O.R. PROCEDURE W/O MCC', '970');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Transplant', 'HEART TRANSPLANT OR IMPLANT OF HEART ASSIST SYSTEM W/O MCC', '002');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Liver Transplant', 'LIVER TRANSPLANT W/O MCC', '006');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Lung Transplant', 'LUNG TRANSPLANT', '007');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Simultaneous Pancreas/Kidney Transplant', 'SIMULTANEOUS PANCREAS/KIDNEY TRANSPLANT', '008');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Pancreas Transplant', 'PANCREAS TRANSPLANT', '010');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Tracheostomy',' TRACHEOSTOMY FOR FACE, MOUTH & NECK DIAGNOSES W/O CC/MCC', '013');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Bone Marrow Transplant (Own Cells)', 'AUTOLOGOUS BONE MARROW TRANSPLANT W/O CC/MCC', '017');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Extensive Surgery Unrelated To Diagnoses', 'EXTENSIVE O.R. PROCEDURE UNRELATED TO PRINCIPAL DIAGNOSIS W/O CC/MCC', '983');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Prostatic Surgery Unrelated To Diagnoses', 'PROSTATIC O.R. PROCEDURE UNRELATED TO PRINCIPAL DIAGNOSIS W/O CC/MCC', '986');
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Non-Extensive Surgery Unrelated To Diagnoses', 'NON-EXTENSIVE O.R. PROC UNRELATED TO PRINCIPAL DIAGNOSIS W/O CC/MCC', '989');


-- Treatment days
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (1, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (2, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (3, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (4, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (5, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (6, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (7, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (8, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (9, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (10, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (11, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (12, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (13, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (14, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (15, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (16, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (17, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (18, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (19, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (20, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (21, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (22, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (23, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (24, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (25, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (26, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (27, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (28, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (29, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (30, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (31, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (32, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (33, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (34, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (35, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (36, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (37, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (38, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (39, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (40, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (41, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (42, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (43, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (44, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (45, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (46, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (47, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (48, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (49, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (50, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (51, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (52, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (53, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (54, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (55, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (56, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (57, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (58, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (59, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (60, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (61, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (62, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (63, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (64, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (65, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (66, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (67, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (68, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (69, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (70, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (71, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (72, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (73, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (74, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (75, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (76, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (77, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (78, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (79, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (80, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (81, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (82, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (83, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (84, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (85, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (86, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (87, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (88, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (89, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (90, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (91, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (92, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (93, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (94, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (95, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (96, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (97, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (98, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (99, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (100, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (101, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (102, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (103, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (104, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (105, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (106, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (107, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (108, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (109, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (110, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (111, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (112, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (113, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (114, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (115, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (116, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (117, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (118, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (119, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (120, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (121, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (122, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (123, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (124, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (125, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (126, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (127, 2, 7, 5, 3);
INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (128, 2, 7, 5, 3);


-- ================================================2013 ====================================
-- Specialty
-- -- INSERT INTO `specialty` (name) VALUES ('Alternative');
-- INSERT INTO `specialty` (name) VALUES ('Cardio / Cardiovascular');
-- -- INSERT INTO `specialty` (name) VALUES ('Cosmetic / Aesthetic');
-- -- INSERT INTO `specialty` (name) VALUES ('Dental');
-- -- INSERT INTO `specialty` (name) VALUES ('Ear, Nose And Throat');
-- -- INSERT INTO `specialty` (name) VALUES ('Fertility');
-- -- INSERT INTO `specialty` (name) VALUES ('Oncology / Cancer');
-- -- INSERT INTO `specialty` (name) VALUES ('Ophthalmology');
-- INSERT INTO `specialty` (name) VALUES ('Orthopedics');
-- -- INSERT INTO `specialty` (name) VALUES ('Pediatrics');
-- -- INSERT INTO `specialty` (name) VALUES ('Rehabilitation');
-- -- INSERT INTO `specialty` (name) VALUES ('Plastic Surgery');
-- -- INSERT INTO `specialty` (name) VALUES ('Surgery');
-- -- INSERT INTO `specialty` (name) VALUES ('Transplants');
-- -- INSERT INTO `specialty` (name) VALUES ('Urology');
-- -- INSERT INTO `specialty` (name) VALUES ('Weight Loss');

-- Treatment
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Knee Replacement', 'MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC', 470);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hip Replacement (or reattachment)', 'MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC', 470);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Spinal Fusion (non cervical)', 'SPINAL FUSION EXCEPT CERVICAL W/O MCC', 460);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Cervical Spinal Fusion', 'CERVICAL SPINAL FUSION W/O CC/MCC', 473);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Back & Neck Surgery (non Spinal Fusion)', 'BACK & NECK PROC EXC SPINAL FUSION W/O CC', 491);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Hip surgery (non joint replacement)', 'HIP & FEMUR PROCEDURES EXCEPT MAJOR JOINT W/O CC', 482);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Thigh surgery (non joint replacement)', 'HIP & FEMUR PROCEDURES EXCEPT MAJOR JOINT W/O CC', 482);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Shoulder replacement', 'MAJOR JOINT & LIMB REATTACHMENT PROC OF UPPER EXTREMITY W/O CC/MCC', 484);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Elbow replacement', 'MAJOR JOINT & LIMB REATTACHMENT PROC OF UPPER EXTREMITY W/O CC/MCC', 484);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Valve Surgery', 'MAJOR CARDIOVASC PROCEDURES W/O MCC', 238);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Cardiovascular Heart Surgery', 'MAJOR CARDIOVASC PROCEDURES W/O MCC', 238);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Pacemaker Implant', 'PERMANENT CARDIAC PACEMAKER IMPLANT W/O CC/MCC', 244);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Coronary dilation With Stent', 'PERC CARDIOVASC PROC W DRUG-ELUTING STENT W/O MCC', 247);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Pulmonary (Chest) Vascular Surgery', 'OTHER VASCULAR PROCEDURES W/O CC/MCC', 254);
-- INSERT INTO `treatment` (name, drg_definition, drg_code) VALUES ('Heart Bypass Surgery', 'MAJOR CARDIOVASC PROCEDURES W/O MCC', 238);



-- INSERT INTO `treatment` (name) VALUES ('General');
-- INSERT INTO `treatment` (name) VALUES ('Knee Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Stem Cell Therapy');
-- INSERT INTO `treatment` (name) VALUES ('Heart Valve Replacement');
-- INSERT INTO `treatment` (name) VALUES ('Angioplasty');
-- INSERT INTO `treatment` (name) VALUES ('Myomectomy');
-- INSERT INTO `treatment` (name) VALUES ('Artery Reconstruction');
-- INSERT INTO `treatment` (name) VALUES ('Coronary Angiography');
-- INSERT INTO `treatment` (name) VALUES ('Coronary Stenting');
-- INSERT INTO `treatment` (name) VALUES ('Tubal Ligation');
-- INSERT INTO `treatment` (name) VALUES ('Tubal ligation Reversal');
-- INSERT INTO `treatment` (name) VALUES ('Aortic Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Coronary Artery Bypass (CABG)');
-- INSERT INTO `treatment` (name) VALUES ('Heart Surgery (Cardiac surgery)');
-- INSERT INTO `treatment` (name) VALUES ('Patent Ductus Arteriosus');
-- INSERT INTO `treatment` (name) VALUES ('Vascular Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Skin Rejuvenation');
-- INSERT INTO `treatment` (name) VALUES ('Abdominoplasty (Tummy Tuck)');
-- INSERT INTO `treatment` (name) VALUES ('Blepharoplasty (Eyelid Surgery)');
-- INSERT INTO `treatment` (name) VALUES ('Body Contouring');
-- INSERT INTO `treatment` (name) VALUES ('Breast Augmentation (Breast Implants)');
-- INSERT INTO `treatment` (name) VALUES ('Breast Lift (Mastopexy)');
-- INSERT INTO `treatment` (name) VALUES ('Breast Reduction');
-- INSERT INTO `treatment` (name) VALUES ('Butt Implants (Buttock Augmentation)');
-- INSERT INTO `treatment` (name) VALUES ('Butt Lift (Buttock Lift)');
-- INSERT INTO `treatment` (name) VALUES ('Eyebrow / Forehead Lift');
-- INSERT INTO `treatment` (name) VALUES ('Facial Implants');
-- INSERT INTO `treatment` (name) VALUES ('Hair Transplantation (Follicular Transplantation)');
-- INSERT INTO `treatment` (name) VALUES ('Gynecomastia (Male Breast Reductions)');
-- INSERT INTO `treatment` (name) VALUES ('Laser / Hair Removal');
-- INSERT INTO `treatment` (name) VALUES ('Liposuction (Lipectomy)');
-- INSERT INTO `treatment` (name) VALUES ('Lipodissolve');
-- INSERT INTO `treatment` (name) VALUES ('Otoplasty');
-- INSERT INTO `treatment` (name) VALUES ('Penis Enlargement (Penoplasty)');
-- INSERT INTO `treatment` (name) VALUES ('Nose Job (Rhinoplasty)');
-- INSERT INTO `treatment` (name) VALUES ('Facelift (Rhytidectomy)');
-- INSERT INTO `treatment` (name) VALUES ('Sclerotherapy');
-- INSERT INTO `treatment` (name) VALUES ('Dental Bonding');
-- INSERT INTO `treatment` (name) VALUES ('Dental Crowns');
-- INSERT INTO `treatment` (name) VALUES ('Dental Bridges');
-- INSERT INTO `treatment` (name) VALUES ('Dental Implants');
-- INSERT INTO `treatment` (name) VALUES ('Dental Jewelry');
-- INSERT INTO `treatment` (name) VALUES ('Gum Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Smile Makeover');
-- INSERT INTO `treatment` (name) VALUES ('Dentures (Dental plate/False teeth)');
-- INSERT INTO `treatment` (name) VALUES ('Laser Dentistry');
-- INSERT INTO `treatment` (name) VALUES ('Orthodontics');
-- INSERT INTO `treatment` (name) VALUES ('Root Canal');
-- INSERT INTO `treatment` (name) VALUES ('Tooth Contouring/Reshaping');
-- INSERT INTO `treatment` (name) VALUES ('Tooth extraction');
-- INSERT INTO `treatment` (name) VALUES ('Dental Veneers');
-- INSERT INTO `treatment` (name) VALUES ('Cochlear Implants');
-- INSERT INTO `treatment` (name) VALUES ('Rhinoseptoplasty');
-- INSERT INTO `treatment` (name) VALUES ('Stapedectomy');
-- INSERT INTO `treatment` (name) VALUES ('Artificial Insemination (AI)');
-- INSERT INTO `treatment` (name) VALUES ('Egg Donation / Egg Extraction');
-- INSERT INTO `treatment` (name) VALUES ('Sperm Aspiration');
-- INSERT INTO `treatment` (name) VALUES ('In Vitro Fertilization (IVF)');
-- INSERT INTO `treatment` (name) VALUES ('Intracytoplasmic Sperm Injection');
-- INSERT INTO `treatment` (name) VALUES ('Ovulation induction');
-- INSERT INTO `treatment` (name) VALUES ('Semen Cryopreservation');
-- INSERT INTO `treatment` (name) VALUES ('Surrogacy');
-- INSERT INTO `treatment` (name) VALUES ('Bone Marrow Transplant (BMT)');
-- INSERT INTO `treatment` (name) VALUES ('Chemotherapy');
-- INSERT INTO `treatment` (name) VALUES ('Cyberknife');
-- INSERT INTO `treatment` (name) VALUES ('Gamma Knife');
-- INSERT INTO `treatment` (name) VALUES ('Radiotherapy / Radiology (Radiation Therapy)');
-- INSERT INTO `treatment` (name) VALUES ('Cornea transplant');
-- INSERT INTO `treatment` (name) VALUES ('Laser Eye Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Retinal Detachment / Repair');
-- INSERT INTO `treatment` (name) VALUES ('Amputation');
-- INSERT INTO `treatment` (name) VALUES ('Arthroscopic');
-- INSERT INTO `treatment` (name) VALUES ('Bunion Surgery (Hallux Valgus Surgery)');
-- INSERT INTO `treatment` (name) VALUES ('Cartillage and Ligament Repair');
-- INSERT INTO `treatment` (name) VALUES ('Hand and Foot Reconstructive Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Total Hip Replacement (Hip Arthroplasty)');
-- INSERT INTO `treatment` (name) VALUES ('Hip Resurfacing');
-- INSERT INTO `treatment` (name) VALUES ('Joint Replacement');
-- INSERT INTO `treatment` (name) VALUES ('Knee Replacement');
-- INSERT INTO `treatment` (name) VALUES ('Limb Lengthening Procedures');
-- INSERT INTO `treatment` (name) VALUES ('Medical Prosthesis');
-- INSERT INTO `treatment` (name) VALUES ('Disk Replacement');
-- INSERT INTO `treatment` (name) VALUES ('Laminectomy');
-- INSERT INTO `treatment` (name) VALUES ('Spinal Fusion Except Cervical');
-- INSERT INTO `treatment` (name) VALUES ('Cervical Spinal Fusion');
-- INSERT INTO `treatment` (name) VALUES ('Back & Neck Proc Exc Spinal Fusion');
-- INSERT INTO `treatment` (name) VALUES ('Shoulder Resurfacing');
-- INSERT INTO `treatment` (name) VALUES ('Pediatric Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Amputation Rehabilitation');
-- INSERT INTO `treatment` (name) VALUES ('Drugs & Alcohol Rehab');
-- INSERT INTO `treatment` (name) VALUES ('Geriatric Rehabilitation');
-- INSERT INTO `treatment` (name) VALUES ('Head Trauma Rehabilitation');
-- INSERT INTO `treatment` (name) VALUES ('Hyperbaric Therapy (HBOT)');
-- INSERT INTO `treatment` (name) VALUES ('Physical Therapy (Physiotherapy)');
-- INSERT INTO `treatment` (name) VALUES ('Speech and Language Therapy');
-- INSERT INTO `treatment` (name) VALUES ('Spinal Injuries');
-- INSERT INTO `treatment` (name) VALUES ('Sports Medicine');
-- INSERT INTO `treatment` (name) VALUES ('Stroke Rehabilitation');
-- INSERT INTO `treatment` (name) VALUES ('Breast Reconstruction');
-- INSERT INTO `treatment` (name) VALUES ('Cleft Lip / Cleft Palate');
-- INSERT INTO `treatment` (name) VALUES ('Craniofacial Surgeries');
-- INSERT INTO `treatment` (name) VALUES ('Hand Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Orthognathic surgery (Jaw Surgery)');
-- INSERT INTO `treatment` (name) VALUES ('Reconstructive Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Antireflux Surgery (Fundoplication)');
-- INSERT INTO `treatment` (name) VALUES ('Biliary Stents');
-- INSERT INTO `treatment` (name) VALUES ('Brain Tumor Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Cholecystectomy (Gallbladder Removal)');
-- INSERT INTO `treatment` (name) VALUES ('Da Vinci Robotic Surgery');
-- INSERT INTO `treatment` (name) VALUES ('Gender Reassignment (Sex-Change Operation)');
-- INSERT INTO `treatment` (name) VALUES ('Hemorrhoidectomy');
-- INSERT INTO `treatment` (name) VALUES ('Mastectomy');
-- INSERT INTO `treatment` (name) VALUES ('Neurosurgery');
-- INSERT INTO `treatment` (name) VALUES ('Tumor Removal');
-- INSERT INTO `treatment` (name) VALUES ('Colostomy Closure');
-- INSERT INTO `treatment` (name) VALUES ('Laparoscopic Hernia Repair');
-- INSERT INTO `treatment` (name) VALUES ('Gallbladder Removal');
-- INSERT INTO `treatment` (name) VALUES ('Umbilical Hernia Repair');
-- INSERT INTO `treatment` (name) VALUES ('Inguinal Hernia Repair');
-- INSERT INTO `treatment` (name) VALUES ('Face Transplant');
-- INSERT INTO `treatment` (name) VALUES ('Heart Transplant');
-- INSERT INTO `treatment` (name) VALUES ('Intestinal Transplant');
-- INSERT INTO `treatment` (name) VALUES ('Kidney Transplant');
-- INSERT INTO `treatment` (name) VALUES ('Liver transplant');
-- INSERT INTO `treatment` (name) VALUES ('Lung Transplant');
-- INSERT INTO `treatment` (name) VALUES ('Organ Transplant');
-- INSERT INTO `treatment` (name) VALUES ('Pancreas Transplant');
-- INSERT INTO `treatment` (name) VALUES ('Radical Prostate Resection');
-- INSERT INTO `treatment` (name) VALUES ('Laser Prostate Resection');
-- INSERT INTO `treatment` (name) VALUES ('Prostate Surgery (Benign Prostatic Hyperplasia)');
-- INSERT INTO `treatment` (name) VALUES ('Vasectomy Reversal');
-- INSERT INTO `treatment` (name) VALUES ('Vasectomy');
-- INSERT INTO `treatment` (name) VALUES ('Kidney Stone Removal');
-- INSERT INTO `treatment` (name) VALUES ('Open Prostatectomy');
-- INSERT INTO `treatment` (name) VALUES ('Hydrocelectomy');
-- INSERT INTO `treatment` (name) VALUES ('Bariatric Surgery (Weight Loss Surgery)');
-- INSERT INTO `treatment` (name) VALUES ('Gastric Bypass');
-- INSERT INTO `treatment` (name) VALUES ('Intragastric Balloon (IGB)');
-- INSERT INTO `treatment` (name) VALUES ('Laparoscopic Adjustable Gastric Band (LAGB)');
-- INSERT INTO `treatment` (name) VALUES ('Gastric Banding');
-- INSERT INTO `treatment` (name) VALUES ('Sleeve Gastrectomy');
-- INSERT INTO `treatment` (name) VALUES ('Panniculectomy');

-- Treatment days
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (1, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (2, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (3, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (4, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (5, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (6, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (7, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (8, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (9, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (10, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (11, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (12, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (13, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (14, 2, 7, 5, 3);
-- INSERT INTO `treatmentdays` (treatment, before_days, after_days, treatment_days, country) VALUES (15, 2, 7, 5, 3);

-- Treatment Aliases
-- INSERT INTO `treatment_alias` (name, treatment) VALUES ('Knee Arthroplasty', 1);

-- ==========================================End 2013 ====================================


-- Method
INSERT INTO `method` (name) VALUES ('General');
INSERT INTO `method` (name) VALUES ('Traditional');
INSERT INTO `method` (name) VALUES ('Robotics');
-- INSERT INTO `method` (name) VALUES ('Non-Invasive Traditional');
-- INSERT INTO `method` (name) VALUES ('Invasive Traditional');
-- INSERT INTO `method` (name) VALUES ('Non-Invasive Robotics');
-- INSERT INTO `method` (name) VALUES ('Invasive Robotics');

-- Documents
INSERT INTO `document` (name) VALUES ('X-Ray');
INSERT INTO `document` (name) VALUES ('Blood Tests');
INSERT INTO `document` (name) VALUES ('Other');


-- ======================= set us news for treatments.sql=======================

update treatment set usnews_name='neurology-and-neurosurgery' where id=1; -- 1|Neurology
update treatment set usnews_name='neurology-and-neurosurgery' where id=2; -- 1|Neurology
update treatment set usnews_name='neurology-and-neurosurgery' where id=3; -- 1|Neurology
update treatment set usnews_name='neurology-and-neurosurgery' where id=4; -- 1|Neurology
update treatment set usnews_name='neurology-and-neurosurgery' where id=5; -- 1|Neurology
update treatment set usnews_name='neurology-and-neurosurgery' where id=6; -- 1|Neurology
update treatment set usnews_name='neurology-and-neurosurgery' where id=7; -- 1|Neurology
update treatment set usnews_name='ophthalmology' where id=8; -- 2|Ophthalmology (Eye)
update treatment set usnews_name='ophthalmology' where id=9; -- 2|Ophthalmology (Eye)
update treatment set usnews_name='ophthalmology' where id=10; -- 2|Ophthalmology (Eye)
update treatment set usnews_name='ear-nose-and-throat' where id=11; -- 3|Otolaryngology (ENT)
update treatment set usnews_name='ear-nose-and-throat' where id=12; -- 3|Otolaryngology (ENT)
update treatment set usnews_name='ear-nose-and-throat' where id=13; -- 3|Otolaryngology (ENT)
update treatment set usnews_name='ear-nose-and-throat' where id=14; -- 3|Otolaryngology (ENT)
update treatment set usnews_name='ear-nose-and-throat' where id=15; -- 3|Otolaryngology (ENT)
update treatment set usnews_name='ear-nose-and-throat' where id=16; -- 3|Otolaryngology (ENT)
update treatment set usnews_name='pulmonology' where id=17; -- 4|Chest & Lungs
update treatment set usnews_name='pulmonology' where id=18; -- 4|Chest & Lungs
update treatment set usnews_name='cardiology-and-heart-surgery' where id=19; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=20; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=21; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=22; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=23; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=24; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=25; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=26; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=27; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=28; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=29; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=30; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=31; -- 5|Cardiology
update treatment set usnews_name='cardiology-and-heart-surgery' where id=32; -- 5|Cardiology
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=33; -- 6|Gastroenterology
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=34; -- 6|Gastroenterology
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=35; -- 6|Gastroenterology
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=36; -- 6|Gastroenterology
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=37; -- 6|Gastroenterology
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=38; -- 6|Gastroenterology
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=39; -- 6|Gastroenterology
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=40; -- 6|Gastroenterology
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=41; -- 6|Gastroenterology
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=42; -- 7|Liver & Pancreas
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=43; -- 7|Liver & Pancreas
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=44; -- 7|Liver & Pancreas
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=45; -- 7|Liver & Pancreas
update treatment set usnews_name='gastroenterology-and-gi-surgery' where id=46; -- 7|Liver & Pancreas
update treatment set usnews_name='orthopedics' where id=47; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=48; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=49; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=50; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=51; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=52; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=53; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=54; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=55; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=56; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=57; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=58; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=59; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=60; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=61; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=62; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=63; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=64; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=65; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=66; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=67; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=68; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=69; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=70; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=71; -- 8|Orthopedic
update treatment set usnews_name='orthopedics' where id=72; -- 8|Orthopedic
-- update treatment set usnews_name='9' where id=73; 9|Dermatology
-- update treatment set usnews_name='9' where id=74; 9|Dermatology
-- update treatment set usnews_name='9' where id=75; 9|Dermatology
-- update treatment set usnews_name='9' where id=76; 9|Dermatology
-- update treatment set usnews_name='9' where id=77; 9|Dermatology
update treatment set usnews_name='diabetes-and-endocrinology' where id=78; -- 10|Endocrinology
update treatment set usnews_name='diabetes-and-endocrinology' where id=79; -- 10|Endocrinology
update treatment set usnews_name='diabetes-and-endocrinology' where id=80; -- 10|Endocrinology
update treatment set usnews_name='diabetes-and-endocrinology' where id=81; -- 10|Endocrinology
update treatment set usnews_name='diabetes-and-endocrinology' where id=82; -- 10|Endocrinology
update treatment set usnews_name='diabetes-and-endocrinology' where id=83; -- 10|Endocrinology
update treatment set usnews_name='urology' where id=84; -- 11|Urology
update treatment set usnews_name='urology' where id=85; -- 11|Urology
update treatment set usnews_name='urology' where id=86; -- 11|Urology
update treatment set usnews_name='urology' where id=87; -- 11|Urology
update treatment set usnews_name='urology' where id=88; -- 11|Urology
update treatment set usnews_name='urology' where id=89; -- 11|Urology
update treatment set usnews_name='urology' where id=90; -- 11|Urology
update treatment set usnews_name='urology' where id=91; -- 11|Urology
update treatment set usnews_name='urology' where id=92; -- 12|Male Reproductive
update treatment set usnews_name='urology' where id=93; -- 12|Male Reproductive
update treatment set usnews_name='urology' where id=94; -- 12|Male Reproductive
update treatment set usnews_name='urology' where id=95; -- 12|Male Reproductive
update treatment set usnews_name='urology' where id=96; -- 12|Male Reproductive
update treatment set usnews_name='gynecology' where id=97; -- 13|Gynecology
update treatment set usnews_name='gynecology' where id=98; -- 13|Gynecology
update treatment set usnews_name='gynecology' where id=99; -- 13|Gynecology
update treatment set usnews_name='gynecology' where id=100; -- 13|Gynecology
update treatment set usnews_name='gynecology' where id=101; -- 13|Gynecology
update treatment set usnews_name='gynecology' where id=102; -- 13|Gynecology
update treatment set usnews_name='gynecology' where id=103; -- 14|Obstetrics
update treatment set usnews_name='gynecology' where id=104; -- 14|Obstetrics
update treatment set usnews_name='gynecology' where id=105; -- 14|Obstetrics
update treatment set usnews_name='gynecology' where id=106; -- 14|Obstetrics
-- update treatment set usnews_name='16' where id=107; 16|Hematology
-- update treatment set usnews_name='16' where id=108; 16|Hematology
update treatment set usnews_name='cancer' where id=109; -- 17|Oncology
update treatment set usnews_name='cancer' where id=110; -- 17|Oncology
update treatment set usnews_name='cancer' where id=111; -- 17|Oncology
-- update treatment set usnews_name='18' where id=112; 18|Infections
-- update treatment set usnews_name='18' where id=113; 18|Infections
-- update treatment set usnews_name='21' where id=114; 21|Emergency
-- update treatment set usnews_name='21' where id=115; 21|Emergency
-- update treatment set usnews_name='21' where id=116; 21|Emergency
-- update treatment set usnews_name='21' where id=117; 21|Emergency
-- update treatment set usnews_name='22' where id=118; 22|Burns
-- update treatment set usnews_name='22' where id=119; 22|Burns
-- update treatment set usnews_name='23' where id=120; 23|Misc
-- update treatment set usnews_name='24' where id=121; 24|Trauma
-- update treatment set usnews_name='24' where id=122 24|Trauma
-- update treatment set usnews_name='24' where id=123; 24|Trauma
-- update treatment set usnews_name='25' where id=124; 25|HIV
-- update treatment set usnews_name='26' where id=125; 26|Transplants
-- update treatment set usnews_name='26' where id=126; 26|Transplants
-- update treatment set usnews_name='26' where id=127; 26|Transplants
-- update treatment set usnews_name='26' where id=128; 26|Transplants
-- update treatment set usnews_name='26' where id=129; 26|Transplants
-- update treatment set usnews_name='26' where id=130; 26|Transplants
-- update treatment set usnews_name='26' where id=131; 26|Transplants


-- ======================= Create patient and cojmpany.sql=======================
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

-- ======================= Create patient and cojmpany.sql=======================
insert into city (name, state, country) values ("Beverly Hills", 6, 3);
insert into city (name, state, country) values ("Washington", 10, 3);
insert into city (name, state, country) values ("Lilburn", 12, 3);
insert into city (name, state, country) values ("Charlotte", 35, 3);
insert into city (name, state, country) values ("Dallas", 45, 3);
insert into city (name, state, country) values ("Hollywood", 11, 3);
insert into city (name, state, country) values ("Cambridge", 23, 3);
insert into city (name, state, country) values ("Philadelphia", 40, 3);
insert into city (name, state, country) values ("Chicago", 15, 3);
insert into city (name, state, country) values ("Niles", 15, 3);
insert into city (name, state, country) values ("Detroit", 24, 3);
insert into city (name, state, country) values ("Minneapolis (Fridley)", 25, 3);
insert into city (name, state, country) values ("Indianapolis", 16, 3);
insert into city (name, state, country) values ("Hayward", 6, 3);
insert into city (name, state, country) values ("Las Vegas", 30, 3);
insert into city (name, state, country) values ("Sacramento", 6, 3);
insert into city (name, state, country) values ("Cotton Wood Hights", 46, 3);
insert into city (name, state, country) values ("Portland", 39, 3);
insert into city (name, state, country) values ("Cotton Wood Hights", 40, 3);
insert into city (name, state, country) values ("Port Orchard", 49, 3);
insert into city (name, state, country) values ("Birmingham", 2, 3);
insert into city (name, state, country) values ("Yorktown Hts", 34, 3);
insert into city (name, state, country) values ("San Ysidro", 6, 3);
insert into city (name, state, country) values ("Azusa", 6, 3);
insert into city (name, state, country) values ("Klamath Falls", 39, 3);
insert into city (name, state, country) values ("Salisbury", 22, 3);
insert into city (name, state, country) values ("Portsmouth", 48, 3);
insert into city (name, state, country) values ("Duryea", 40, 3);
insert into city (name, state, country) values ("Flint", 24, 3);
insert into city (name, state, country) values ("Capitol Heights", 22, 3);
insert into city (name, state, country) values ("Madison", 51, 3);
insert into city (name, state, country) values ("St Petersburg", 11, 3);
insert into city (name, state, country) values ("Ansonia", 8, 3);
insert into city (name, state, country) values ("Oklahoma City", 38, 3);
insert into city (name, state, country) values ("Manchester", 8, 3);
insert into city (name, state, country) values ("Lake Geneva", 51, 3);
insert into city (name, state, country) values ("San Anselmo", 6, 3);
insert into city (name, state, country) values ("Butler", 12, 3);
insert into city (name, state, country) values ("Freeport", 15, 3);
insert into city (name, state, country) values ("Modesto", 6, 3);
insert into city (name, state, country) values ("Lebanon", 37, 3);
insert into city (name, state, country) values ("Staten Island", 34, 3);
insert into city (name, state, country) values ("Merritt Is", 11, 3);
insert into city (name, state, country) values ("Brooklyn", 34, 3);
insert into city (name, state, country) values ("San Diego", 6, 3);
insert into city (name, state, country) values ("Mountain View", 6, 3);
insert into city (name, state, country) values ("Sarasota", 11, 3);
insert into city (name, state, country) values ("Redwood City", 6, 3);
insert into city (name, state, country) values ("Urbana", 15, 3);
insert into city (name, state, country) values ("Saint Louis", 27, 3);
insert into city (name, state, country) values ("Portage", 24, 3);
insert into city (name, state, country) values ("West Mifflin", 40, 3);
insert into city (name, state, country) values ("New London", 8, 3);


INSERT INTO `city` (id, name, state, country, lat, lon) VALUES (1, 'New Delhi',1,1, 28.613939,77.209021);

insert into city (name, state, country) values("Pittsburg", 37, 3);

insert into city (name, state, country) values("St. Petersburg", FL, US]
insert into city (name, state, country) values("Wilimington", DE, US]
insert into city (name, state, country) values("San Juan Capistrano", 6, 3);
insert into city (name, state, country) values("Madison", 32, 3);

insert into city (name, state, country) values("Battleground", 49, 3);

insert into city (name, state, country) values("Jackson Hole", WY, 3);
