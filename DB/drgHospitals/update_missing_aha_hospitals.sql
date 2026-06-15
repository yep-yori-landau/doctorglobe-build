-- we don't have this hospital which seems large: http://www.midhudsonregional.org

use DOCTOR_GLOBE;

-- Commented lines existed in DRG100 2013, but don't exist in DRGALL 2014, Keep it here if they pop up in the future for easy fix
-- The below hospital is not included in usnews file, and doesn't exist in their site.
-- update healthcareprovider set website='', lat=43.447394, lon=-70.767439 where drg_id=200040;  -- Henrietta D Goodall Hospital,  25 June Street,  Sanford

-- The below hospitals were not included in usnews file, but are found in their site (might have been added after 2013). So, all is good with them.
update healthcareprovider set website='www.sfhhc.org', phone_1='(845) 483–5000', aha_name='St. Francis Hospital and Health Centers', lat=41.718463, lon=-73.927103, aha_id='6210295' where drg_id=330067;
update healthcareprovider set website='www.admc.org', phone_1='(979) 849–7721', aha_name='Angleton Danbury Medical Center', lat=29.184744, lon=-95.404716, aha_id='6740111' where drg_id=450591;

-- update healthcareprovider set website='www.stanthonyhosp.org', phone_1='(720) 321–0000', aha_name='St. Anthony Hospital', lat=39.717030, lon=-105.128706, aha_id='6840385' where drg_id=100047;
-- update healthcareprovider set website='www.woodshospital.org', phone_1='(423) 263–3600', aha_name='Woods Memorial Hospital', lat=35.342581, lon=-84.520479, aha_id='6520271' where drg_id=450176;
-- update healthcareprovider set website='www.firststreethospital.com ', phone_1='(713) 275–1111', aha_name='First Street Hospital', lat=29.709851, lon=-95.462770, aha_id='6740357' where drg_id=2763;
update healthcareprovider set website='http://www.hearthospital.com', phone_1='(317) 621–8000', aha_name='Community Heart and Vascular Hospital', lat=39.901857, lon=-86.044774, aha_id=6420041 where drg_id=150154;
-- update healthcareprovider set website='http://www.lanierhospital.com/', lat=32.823774, lon=-85.170189, aha_id='6530580' where drg_id=010025;
-- update healthcareprovider set website='http://www.warmc.com/Western-Arizona-Regional-Medical-Center/home.aspx', lat=33.424788, lon=-111.821639, aha_id='6860045' where drg_id=030126;
-- update healthcareprovider set website='http://www.lapazhospital.org/getpage.php?name=index', lat=34.135532, lon=-114.284787, aha_id='6860205' where drg_id=030067;
update healthcareprovider set website='http://www.cpmc.org/', lat=37.768669, lon=-122.435441, aha_id='6930032' where drg_id=050008;
-- update healthcareprovider set website='http://losrobleshospital.com/service/thousand-oaks-surgical-hospital', lat=34.174794, lon=-118.869457, aha_id='6930126' where drg_id=050749;
update healthcareprovider set website='http://www.orthopedichospital.com/#~S81522', lat=33.660747, lon=-117.772459, aha_id='6930397' where drg_id=050769;
update healthcareprovider set website='http://www.fallbrookmedicalcenter.com/', lat=33.380827, lon=-117.244592, aha_id='6930733' where drg_id=050435;
update healthcareprovider set website='https://www.orthocolorado.org/oco/home/', lat=39.717057, lon=-105.129204, aha_id='6849221' where drg_id=060124;
update healthcareprovider set website='http://www.newmilfordhospital.org/', lat=41.580789, lon=-73.410014, aha_id='6160500' where drg_id=070015;
update healthcareprovider set website='http://www.bayhealth.org/milford-memorial-hospital/bayhealth-milford-memorial', lat=38.907184, lon=-75.432639 where drg_id=080009;
-- update healthcareprovider set website='http://www.northshore.org/locations/our-hospitals/skokie-hospital/', lat=42.056389, lon=-87.740797 where drg_id=140051;
update healthcareprovider set website='http://ecommunity.com/westview/', lat=39.819985, lon=-86.223628, aha_id='6420640' where drg_id=150129;
update healthcareprovider set website='http://www.franciscanalliance.org/hospitals/dyer/pages/default.aspx', lat=41.492657, lon=-87.524423 where drg_id=150090;
-- update healthcareprovider set website='http://www.newmanrh.org/', lat=38.411503, lon=-96.195531, aha_id='6670200' where drg_id=170001;
update healthcareprovider set website='http://premiersurgicalinstitute.com/', lat=37.074862, lon=-94.657961 where drg_id=170203;
update healthcareprovider set website='http://www.cpsh.org/', lat=30.477074, lon=-90.412856 where drg_id=190303;
update healthcareprovider set website='https://www.ochsner.org/locations/ochsner-medical-complex-river-parishes', lat=30.073314, lon=-90.516021, aha_id='6720414' where drg_id=190175;
-- update healthcareprovider set website='http://www.mileshealthcare.org/', lat=44.026113, lon=-69.528114, aha_id='6110367' where drg_id=200002;
-- update healthcareprovider set website='http://www.medstarsouthernmaryland.org/#q={}', lat=38.748567, lon=-76.875742, aha_id='6320416' where drg_id=210054;
-- update healthcareprovider set website='http://www.stjosephtowson.com/home.aspx', lat=39.387325, lon=-76.61116, aha_id='6320260' where drg_id=210007;
-- update healthcareprovider set website='http://www.stjosephtowson.com/home.aspx' where drg_id=210063; -- Only the hospital's website at the aha file is wrong (rest of data is okay)
-- update healthcareprovider set website='http://www.lowellgeneral.org/utility-nav/maps-and-directions/saints-campus', lat=42.645683, lon=-71.301177, aha_id='6140428' where drg_id=220082;
update healthcareprovider set website='http://www.berkshirehealthsystems.org/bmcnorth', lat=42.70589, lon=-73.108404 where drg_id=220051;
update healthcareprovider set website='http://www.quincymedical.org/', lat=42.250976, lon=-71.014149, aha_id='6141740' where drg_id=220067;
update healthcareprovider set website='http://www.bidneedham.org/', lat=42.277237, lon=-71.236667 where drg_id=220083;
update healthcareprovider set website='http://www.stewardphysicians.org/merrimack-valley-hospital/', lat=42.764889, lon=-71.044786, aha_id='6141080' where drg_id=220174;
update healthcareprovider set website='http://www.mayoclinic.org/patient-visitor-guide/minnesota/clinic-hospital-buildings/mayo-clinic-hospital-methodist-campus', lat=44.024387, lon=-92.466131, aha_id='6610451' where drg_id=240061;
update healthcareprovider set website='http://www.rwjuh.edu/rwjuh/home.aspx', lat=40.568117, lon=-74.595265, aha_id='6221340' where drg_id=310048;
-- update healthcareprovider set website='http://www.nyp.org/lowermanhattan', lat=40.710359, lon=-74.005103, aha_id='6212615' where drg_id=330064;
update healthcareprovider set website='http://www.communitymemorial.org/', lat=42.81327, lon=-75.543163, aha_id='6211775' where drg_id=330249;
update healthcareprovider set website='http://tlchealth.org/', lat=42.4642, lon=-78.943337 where drg_id=330132;
update healthcareprovider set website='http://www.kdmcohio.com/', lat=38.7473, lon=-82.9936 where drg_id=360361;
update healthcareprovider set website='http://www.crystalclinic.com/', lat=41.096977, lon=-81.513552 where drg_id=360351;
update healthcareprovider set website='http://www.southwoodshealth.com/', lat=41.01547, lon=-80.655832 where drg_id=360352;
update healthcareprovider set website='https://www.ovsurgical.com/', lat=39.925385, lon=-83.812816 where drg_id=360355;
-- update healthcareprovider set website='http://e-mercy.com/mercy-hospital-western-hills.aspx', lat=39.135176, lon=-84.606949 where drg_id=360113;
-- update healthcareprovider set website='http://www.trihealth.com/hospitals-and-practices/trihealth-evendale-hospital/', lat=39.251561, lon=-84.420553 where drg_id=360350;
update healthcareprovider set website='http://www.summahealth.org/locations/healthcenters/summa%20health%20center%20at%20wadsworth-rittman', lat=41.028329, lon=-81.751129, aha_id='6412250' where drg_id=360195;
update healthcareprovider set website='http://www.wellspan.org/offices-locations/hospitals/wellspan-surgery-rehabilitation-hospital/', lat=39.926225, lon=-76.718686 where drg_id=390327;
update healthcareprovider set website='http://www.ashospital.net/', lat=40.156544, lon=-80.279075 where drg_id=390323;
update healthcareprovider set website='http://www.titusvillehospital.org/', lat=41.410991, lon=-79.750149, aha_id='6233240' where drg_id=390122;
-- update healthcareprovider set website='http://www.regionalhealth.com/Our-Locations/Spearfish-Regional-Surgery-Center.aspx', lat=44.49754, lon=-103.854732, aha_id='6650016' where drg_id=430094;
-- update healthcareprovider set website='http://www.starrregional.com/', lat=35.342581, lon=-84.520479 where drg_id=440054;
update healthcareprovider set website='http://www.utsouthwestern.edu/', lat=32.810158, lon=-96.835203, aha_id='6740343' where drg_id=450044;
update healthcareprovider set website='http://www.firststreethospital.com/first-surgical-hospital-bellaire.html', lat=29.709851, lon=-95.46277 where drg_id=670029;
-- update healthcareprovider set website='http://www.admc.org/getpage.php?name=index', lat=29.184744, lon=-95.404716, aha_id='6740111' where drg_id=490053;
update healthcareprovider set website='http://www.camc.org/tvh', lat=38.44828, lon=-81.951607, aha_id='6350415' where drg_id=510085;
update healthcareprovider set website='http://sagewesthealthcare.com/', lat=42.820507, lon=-108.726776, aha_id='6830170' where drg_id=530010;


update healthcareprovider set website='http://www.westshoremedcenter.org/', lat=44.272531, lon=-86.271915, aha_id='6441705' where drg_id=230303;
update healthcareprovider set website='http://http://www.bluevalleysurgical.com/', lat=38.896288, lon=-94.669143 where drg_id=170201;
update healthcareprovider set website='http://www.temeculavalleyhospital.com/', lat=33.481136, lon=-117.106099 where drg_id=050775;

update healthcareprovider set website='http://www.atlantichealth.org/morristown.html' where drg_id=310015;

-- This hospital seems to be closed. HospitalContainer.java takes care of removing it.
-- update healthcareprovider set website='http://', lat=, lon=, aha_id='' where drg_id=110183;

-- Update wrong informaiton in aha file:
update healthcareprovider set aha_id='6931755' where drg_id=050262;



update healthcareprovider set website='https://www.selectmedical.com/', aha_id=6350008, lat=38.353398, lon=-81.632851 where drg_id=510091;
update healthcareprovider set website='http://www.holycrosshealth.org/HCGH', aha_id=6320391, lat=39.014708, lon=-77.034749 where drg_id=210065;
update healthcareprovider set website='http://www.collegemedicalcenter.com/index.htm', aha_id=6931356, lat=33.807525, lon=-118.193552 where drg_id=050776;
update healthcareprovider set website='https://www.loyolamedicine.org/locations/loyola-university-medical-center' where drg_id=140276;

--       *************************  2016 additions  ************************* --
update healthcareprovider set website='http://cumberlandsh.com/', aha_id=6740326, aha_name='Cumberland Surgical Hospital', lat=29.590821, lon=-98.590315 where drg_id=670112;
update healthcareprovider set website='https://www.umc.edu/Grenada/Grenada_Home.html', aha_id=6540290, aha_name='University of Mississippi Medical Center Grenada', lat=33.769, lon=-89.8084 where drg_id=250168;
update healthcareprovider set website='https://scvrhaz.com/', lat=31.8543, lon=-110.9937 where drg_id=030137;
update healthcareprovider set website='https://www.monroehospital.com/', aha_id=6420068, aha_name='Monroe Hospital', lat=38.999882, lon=-86.832142 where drg_id=150183;
update healthcareprovider set website='https://www.bswhealth.com/locations/marble-falls', aha_id=6740880, aha_name='Baylor Scott and White Medical Center–Marble Falls', lat=30.5787, lon=-98.2717 where drg_id=670108;
update healthcareprovider set website='http://www.casacolina.org/', aha_id=6930399, aha_name='Casa Colina Hospital', lat=34.096223, lon=-117.743974 where drg_id=050782;
update healthcareprovider set website='http://sonomawestmedicalcenter.com/', aha_id=6933500, aha_name='Sonoma West Medical Center', lat=38.397065, lon=-122.81942 where drg_id=050781;
update healthcareprovider set website='https://www.bannerhealth.com/locations/fort-collins/banner-fort-collins-medical-center', aha_id=6840445, aha_name='', lat=40.521242, lon=-105.00914 where drg_id=060126;
update healthcareprovider set website='https://faculty.mdanderson.org/profiles/emil_j_freireich.html', lat=29.695434, lon=-95.398933 where drg_id=670099;
--       ***********************End of  2016 additions  ********************* --
