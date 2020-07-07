

CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO admins VALUES("1","admin","21232f297a57a5a743894a0e4a801fc3");



CREATE TABLE `consumers` (
  `consumer_code` varchar(255) NOT NULL DEFAULT '0',
  `consumer_meterid` varchar(500) DEFAULT NULL,
  `consumer_name` varchar(500) DEFAULT NULL,
  `consumer_name_edited` varchar(500) DEFAULT NULL,
  `consumer_father` varchar(500) DEFAULT NULL,
  `consumer_father_edited` varchar(500) DEFAULT NULL,
  `consumer_address` varchar(500) DEFAULT NULL,
  `consumer_address_edited` varchar(500) DEFAULT NULL,
  `consumer_aadhar` longtext,
  `consumer_meter` longtext,
  `consumer_meter_status` varchar(500) DEFAULT NULL,
  `consumer_aadhar_qr` longtext,
  `consumer_mobile` varchar(500) DEFAULT NULL,
  `consumer_village` varchar(500) DEFAULT NULL,
  `consumer_village_code` varchar(500) DEFAULT NULL,
  `consumer_subdivision` varchar(500) DEFAULT NULL,
  `consumer_zone` varchar(500) DEFAULT NULL,
  `consumer_circle` varchar(500) DEFAULT NULL,
  `consumer_division` varchar(500) DEFAULT NULL,
  `consumer_subdivision_code` varchar(500) DEFAULT NULL,
  `consumer_feeder_code` varchar(500) DEFAULT NULL,
  `consumer_lat` varchar(500) DEFAULT NULL,
  `consumer_lat_edited` varchar(500) DEFAULT NULL,
  `consumer_long` varchar(500) DEFAULT NULL,
  `consumer_long_edited` varchar(500) DEFAULT NULL,
  `consumer_gaddress` varchar(500) DEFAULT NULL,
  `consumer_gaddress_edited` varchar(500) DEFAULT NULL,
  `consumer_map_status` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_modified_by` varchar(500) DEFAULT NULL,
  `last_modified_time` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`consumer_code`),
  UNIQUE KEY `consumer_code` (`consumer_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO consumers VALUES("43593220901","7.52E+11","ACHELAL KUSHWAHA","ACHELAL KUSHWAHA","RAM NARAYAN","RAM NARAYAN","ADDRESS3
INSERT INTO consumers VALUES("43593220902","7.52E+11","JAIGOVIND",""," ","","BUJURG
INSERT INTO consumers VALUES("43593220903","7.52E+11","RAM ADHAR YADAV","","CHOKAT YADAV","","RAGHAWA PUR
INSERT INTO consumers VALUES("43593220904","7.52E+11","RAJKISHOR RAO","","KAMLA RAO","","DEORIA
INSERT INTO consumers VALUES("43593220905","7.52E+11","GHAN SHYAM YADAV",""," ","","DEORIA
INSERT INTO consumers VALUES("43593220906","7.52E+11","NAGINA YADAWA",""," ","","BAIDA KUWAR PAIKAULI
INSERT INTO consumers VALUES("43593220907","7.52E+11","RAMA NAND CHAUHAN",""," ","","BABU DHANAUTI
INSERT INTO consumers VALUES("43593220908","7.52E+11","SMT RUMALI DEVI",""," ","","MAHDEIA
INSERT INTO consumers VALUES("43593220909","7.52E+11","BADRAINI PANDEY RAMNA",""," ","","PARSIYA BHANDARI
INSERT INTO consumers VALUES("43593220910","7.52E+11","GUDAR RAO PAUHARI CHH",""," ",""," 
INSERT INTO consumers VALUES("43593220911","7.52E+11","SMT MAINADEVI",""," ","","UR
INSERT INTO consumers VALUES("43593220912","7.52E+11","GANESH SINGH","","NANDAN SINGH","","BHIMPUR
INSERT INTO consumers VALUES("43593220913","7.52E+11","KAILASH YADAV",""," ","","GADPUR UP
INSERT INTO consumers VALUES("43593220914","7.52E+11","NATHUNI","","SARAJU","","PIPARA CHANDRABHAN
INSERT INTO consumers VALUES("43593220915","7.52E+11","CHANDAR BHAN TIWARI",""," ","","RAMPUR KHARKHAN
INSERT INTO consumers VALUES("43593220916","7.52E+11","TARA PATI SINGH",""," ","","DEORIA
INSERT INTO consumers VALUES("43593220917","7.52E+11","HEERA PD JAISWAL POKH",""," ","","BODIYA ANANT
INSERT INTO consumers VALUES("43593220918","7.52E+11","MUNNI BHAGAT SISAI KU",""," ","","ORIA
INSERT INTO consumers VALUES("43593220919","7.52E+11","BANSHU SINGH MEHRATOL",""," ","","AGAR
INSERT INTO consumers VALUES("43593220920","7.52E+11","SUMESHWAR SINGH","","BABBAN SINGH",""," 
INSERT INTO consumers VALUES("43593220921","7.52E+11","JAI KARAN SINGH BISUN",""," ","","G I STATE DEORIA
INSERT INTO consumers VALUES("43593220922","7.52E+11","ABDUL HAQUIM BHIKHAM",""," ",""," 
INSERT INTO consumers VALUES("43593220923","7.52E+11","ABHI MANU RAI",""," ","","RIA
INSERT INTO consumers VALUES("43593220924","7.52E+11","LAKHTHOO",""," ","","BAIJ NATH PUR
INSERT INTO consumers VALUES("43593220925","7.52E+11","BRIJRAJ TIWARI",""," ","","DEVARAR
INSERT INTO consumers VALUES("43593220926","7.52E+11","BRIJ RAJ PANDEY",""," ","","SONDA
INSERT INTO consumers VALUES("43593220927","7.52E+11","RAM ASHISH SINGH S/O",""," ","","RAM NATH DEORIA
INSERT INTO consumers VALUES("43593220928","7.52E+11","PRITHAVI NATH MISRA",""," ","","BAITAL PUR DEO
INSERT INTO consumers VALUES("43593220929","7.52E+11","VIRANDAR MARI",""," ","","DEORIA
INSERT INTO consumers VALUES("43593220930","7.52E+11","CHANDRA BHAN YADAW",""," ","","KHORA RAM
INSERT INTO consumers VALUES("43593220931","7.52E+11","AATA HUSEN","","LALI MUHAMMD","","SAHJAULI
INSERT INTO consumers VALUES("43593220932","7.52E+11","GULAB HUSAIN",""," ","","TRKULAW
INSERT INTO consumers VALUES("43593220933","7.52E+11","HARI SHANKAR GUPT",""," ","","MALWA BAR BANARAHI
INSERT INTO consumers VALUES("43593220934","7.52E+11","GOPI CHAND",""," ","","MALLAWABAR BANARAHI
INSERT INTO consumers VALUES("43593220935","7.52E+11","JITENDRA YADAV",""," ","","MALAWABAR BANARAHI
INSERT INTO consumers VALUES("43593220936","7.52E+11","BHIKHAM BHAGAT",""," ","","BAGHAUCH GHAT
INSERT INTO consumers VALUES("43593220937","7.52E+11","DHANUSHDHARI RAI",""," ","","BAGHAUCHGHAT
INSERT INTO consumers VALUES("43593220938","7.52E+11","RAHAMTULLAH ANSARI",""," ","","BAGHAUCHAGHAT AHIRAUL
INSERT INTO consumers VALUES("43593220939","7.52E+11","UPENDRA PATIRAIPATHI","","GORTA PATTI","","RAM NAGAR
INSERT INTO consumers VALUES("43593220940","7.52E+11","ANIRUDH","","SHRI","","TARKULWA
INSERT INTO consumers VALUES("43593220941","7.52E+11","RAMDEV","","RAMDAS","","PATHERDEVA
INSERT INTO consumers VALUES("43593220942","7.52E+11","RAJ NARAIN SHUKLA",""," ","","PATHUR DEVA
INSERT INTO consumers VALUES("43593220943","7.52E+11","RAM ARTI SHUKLA",""," ","","N/NIA PATTI
INSERT INTO consumers VALUES("43593220944","7.52E+11","JATA SHANKER SHUKLA",""," ","","NONIA PATTI
INSERT INTO consumers VALUES("43593220945","7.52E+11","HAJRAT",""," ","","NONIA PATTI
INSERT INTO consumers VALUES("43593220946","7.52E+11","ARJUN KUSHAWAHA","","LAITA KUSHAA","","MEHAHAR HANGPUR
INSERT INTO consumers VALUES("43593220947","7.52E+11","RAM DULAREY PRASAD",""," ","","TARKULWA
INSERT INTO consumers VALUES("43593220948","7.52E+11","RAJPATI SINGH",""," ",""," 
INSERT INTO consumers VALUES("43593220949","7.52E+11","VISHWAKARMA SHARMA",""," ",""," 
INSERT INTO consumers VALUES("43593220950","7.52E+11","RAM ADHAR YADAV",""," ","","VILL JAMUNI
INSERT INTO consumers VALUES("43593220951","7.52E+11","GOBIND SINGH",""," ","","KOIL ASHWA
INSERT INTO consumers VALUES("43593220952","7.52E+11","MOHD SAUKAT","","HASNAIN",""," 
INSERT INTO consumers VALUES("43593220953","7.52E+11","GOVIND JI RAI","","VINDHYACHAL RAI","","SHANKER PATHKAULI
INSERT INTO consumers VALUES("43593220954","7.52E+11","RAMESHWAR PD JAISWAL",""," ","","BABHAUCH GHAT
INSERT INTO consumers VALUES("43593220955","7.52E+11","WAZIM ANSARI","","ISMAIL ANSAR","","LAHIL PAR
INSERT INTO consumers VALUES("43593220956","7.52E+11","YADU  BANSH",""," ","","SHANKAR
INSERT INTO consumers VALUES("43593220957","7.52E+11","CHOTE LAL KUSHWAHA","","RADHE SHYAM KUSHWAHA",""," 
INSERT INTO consumers VALUES("43593220958","7.52E+11","AJIT KUMAR","","HIRA","","PATHAR DEWA
INSERT INTO consumers VALUES("43593220959","7.52E+11","GULAB",""," ","","TEWAI
INSERT INTO consumers VALUES("43593220960","7.52E+11","BALIRAM RAI","","MANGAL RAI","","BARAYA BUZURG
INSERT INTO consumers VALUES("43593220961","7.52E+11","GANGA PD",""," ","","KOTWA MISHRA
INSERT INTO consumers VALUES("43593220962","7.52E+11","BHAGAWATI MISRA",""," ","","SHANKER PATARBULI
INSERT INTO consumers VALUES("43593220963","7.52E+11","BAIJ NATH SHARMA",""," ","","SIRWANIA
INSERT INTO consumers VALUES("43593220964","7.52E+11","NARSINGH GUPTA","","VISHWANATH","","PATHAR DEWA
INSERT INTO consumers VALUES("43593220965","7.52E+11","PRINCIPAL / B S A","","PRIMARY SCHO","","SIRSIYA
INSERT INTO consumers VALUES("43593220966","7.52E+11","PRINCIPAL B S A","","PRIMARY SCHO","","RAMPUR KARKHANA
INSERT INTO consumers VALUES("43593220967","7.52E+11","PRINCIPAL B S A","","PRIMARY SCHO","","BHALUANI
INSERT INTO consumers VALUES("43593220968","7.52E+11","PRINCIPAL BSA","","PRIMARYSCHOO","","BHALUANI
INSERT INTO consumers VALUES("43593220969","7.52E+11","GORAKH PD RAMGATTI KH",""," ","","BAITALPUR
INSERT INTO consumers VALUES("43593220970","7.52E+11","PRINCIPAL B S A","","PRIMARY SCHO",""," 
INSERT INTO consumers VALUES("43593220971","7.52E+11","PRINCIPAL B S A","","PRIMARY SCHO","","PATHAR DEVA
INSERT INTO consumers VALUES("43593220972","7.52E+11","PRINCIPAL BSA","","PRIMARYSCHOO","","PATHARDEVA
INSERT INTO consumers VALUES("43593220973","7.52E+11","PRINCIPAL BSA","","PRIMARYSCHOO","","RUDRAPUR
INSERT INTO consumers VALUES("43593220974","7.52E+11","PRINCIPAL BSA","","PRIMARYSCHOO","","RUDRAPUR
INSERT INTO consumers VALUES("43593220975","7.52E+11","PRINCIPAL BSA","","PRIMARYSCHOO","","RUDRAPUR
INSERT INTO consumers VALUES("43593220976","7.52E+11","PRINCIPAL BSA","","PRIMARYSCHOO","","RUDRAPUR
INSERT INTO consumers VALUES("43593220977","7.52E+11","PRINCIPAL BSA","","PRIMARYSCHOO","","RUDRAPUR
INSERT INTO consumers VALUES("43593220978","7.52E+11","JEOAT SINGH VILL SING",""," ","","BAITALPUR
INSERT INTO consumers VALUES("43593220979","7.52E+11","PRINCIPAL B S A","","JUNIOR SCH",""," 
INSERT INTO consumers VALUES("43593220980","7.52E+11","PRINCIPAL B S A","","JUNIOR SCH","","DEORIA
INSERT INTO consumers VALUES("43593220981","7.52E+11","PRINCIPAL B S A","","JUNIOR SCH","","DEORIA
INSERT INTO consumers VALUES("43593220982","7.52E+11","RAM BACHAM CHAURASIA",""," ","","RUDRAPUR
INSERT INTO consumers VALUES("43593220983","7.52E+11","MURAT YADAV","","RAMAKANT YAD",""," 
INSERT INTO consumers VALUES("43593220984","7.52E+11","KEWAL","","RAM NATH","","DEORIA
INSERT INTO consumers VALUES("43593220985","7.52E+11","SHEO KALI DEVI",""," ","","BADAYA BUJURG
INSERT INTO consumers VALUES("43593220986","7.52E+11","RAM BRIKSH  PRASAD",""," ","","KATRARI
INSERT INTO consumers VALUES("43593220987","7.52E+11","KIRAN TEWARI","","UDAI KISHOR","","AGAYA MAJHGAWA
INSERT INTO consumers VALUES("43593220988","7.52E+11","MAHENDRA KUSHAWAHA",""," ","","DHANAUTI KHURD
INSERT INTO consumers VALUES("43593220989","7.52E+11","SHANTI DEVI","","VIJAI PRASAD","","BHARASARA
INSERT INTO consumers VALUES("43593220990","7.52E+11","SHARADA DEVI","","AVADHESH","","PIPARPATI
INSERT INTO consumers VALUES("43593220991","7.52E+11","LIYAKAT ALI","","ESABALLI","","DEORIA
INSERT INTO consumers VALUES("43593220992","7.52E+11","RAM MURAT BIND","","RAM PYAREY BIND","","PARASIYA
INSERT INTO consumers VALUES("43593220993","7.52E+11","ARVIND RAJBHAR","","MANGRU RAJ","","DEORIA
INSERT INTO consumers VALUES("43593220994","7.52E+11","MANOJ","","RAMSARAN","","PAIKAULI
INSERT INTO consumers VALUES("43593220995","7.52E+11","SAVITA DEVI","","BASISHTH","","TOLA BHANDARI
INSERT INTO consumers VALUES("43593220996","7.52E+11","RAMJEE SHARMA",""," ","","G I ESTATE
INSERT INTO consumers VALUES("43593220997","7.52E+11","MANOJ SINGH","","CHANDRABHAN","","PURWA MEHRA G I ESATE
INSERT INTO consumers VALUES("43593220998","7.52E+11","SAROJ DEVI","","CHANDRA SHER","","KHUNKHUNDOO
INSERT INTO consumers VALUES("43593220999","7.52E+11","AVIDA KHATOON","","MOHD RAJA","","LAR
INSERT INTO consumers VALUES("43593221000","7.52E+11","SRI KISHUN BHAR",""," ","","SAJAW
INSERT INTO consumers VALUES("43593221001","7.52E+11","RAMPATI SINGH","","RAMRAJ SINGH","","DEORIA
INSERT INTO consumers VALUES("43593221002","7.52E+11","RAMAI YADAW",""," ","","CHANDRABHAN
INSERT INTO consumers VALUES("43593221003","7.52E+11","RAMJEE LALJEE YADAW",""," ","","GARER
INSERT INTO consumers VALUES("43593221004","7.52E+11","RAM KEWAL RAI GAURA",""," ","","DEORIA
INSERT INTO consumers VALUES("43593221005","7.52E+11","SURJ BALLI MANI",""," ",""," 
INSERT INTO consumers VALUES("43593221006","7.52E+11","SURYA NARAYAN S/O CHA",""," ","","BANKI TIWARI
INSERT INTO consumers VALUES("43593221007","7.52E+11","RAM NARAIN MISHRA KAT",""," ","","GAJE
INSERT INTO consumers VALUES("43593221008","7.52E+11","SHYAM SUNDAR PANDEY N",""," ",""," 
INSERT INTO consumers VALUES("43593221009","7.52E+11","BUDHAI BACCHA KAMLA S",""," ","","PANDEY
INSERT INTO consumers VALUES("43593221010","7.52E+11","CHANDRIKA RAI",""," ",""," 
INSERT INTO consumers VALUES("43593221011","7.52E+11","SHEO GOVIND PRADHAN B",""," ","","DEORIA
INSERT INTO consumers VALUES("43593221012","7.52E+11","MIRTUNJAI NATH TIWARI",""," ",""," 
INSERT INTO consumers VALUES("43593221013","7.52E+11","CHANDRIKA PD","","CUMMAN PANDEY","","AWALI
INSERT INTO consumers VALUES("43593221014","7.52E+11","RAM SEWAK S/O LOCHAN",""," ","","BABHANI
INSERT INTO consumers VALUES("43593221015","7.52E+11","REKHA MALL PADRI MALL",""," ",""," 
INSERT INTO consumers VALUES("43593221016","7.52E+11","CHANDRIKA KUSHWAHA",""," ",""," 
INSERT INTO consumers VALUES("43593221017","7.52E+11","RAM PYAREYA PANDEY BH",""," ","","DEORIA
INSERT INTO consumers VALUES("43593221018","7.52E+11","RAM AWADH SINGH",""," ",""," 
INSERT INTO consumers VALUES("43593221019","7.52E+11","GULAB",""," ","","DEORIA
INSERT INTO consumers VALUES("43593221020","7.52E+11","RAM KISHUN YADAW MUND",""," ","","BAGAHA CHAURI TOLA
INSERT INTO consumers VALUES("43593221021","7.52E+11","SMT SUMESARA DEVE S/O",""," ",""," 
INSERT INTO consumers VALUES("43593221022","7.52E+11","SURYA NATH YADAW",""," ","","ISRA BANSPAR DE
INSERT INTO consumers VALUES("43593221023","7.52E+11","MANOJ PANDEY","","ASHOK PANDEY","","PAKARI BUZURG
INSERT INTO consumers VALUES("43593221024","7.52E+11","GORAKH NATH PANDEY",""," ","","KUSHAHRI
INSERT INTO consumers VALUES("43593221025","7.52E+11","ISHAK","","RAMRUN",""," 
INSERT INTO consumers VALUES("43593221026","7.52E+11","RADHIKA DEVI","","RAMASHANKR","","TARKULWA
INSERT INTO consumers VALUES("43593221027","7.52E+11","KAILASH","","BHAVAL","","GAORIBAZAR
INSERT INTO consumers VALUES("43593221028","7.52E+11","LALOO MIYA",""," ","","BAGHADA
INSERT INTO consumers VALUES("43593221029","7.52E+11","SHAMSULHUQUE",""," ","","JALKAL WARI
INSERT INTO consumers VALUES("43593221030","7.42E+11","Ms. KAMALAVATI DEVI","","W/O. RAM PYARE","","RAJGADDI
INSERT INTO consumers VALUES("43593221031","7.42E+11","Mr. OMPRAKASH","","S/O. PAUARU",""," 
INSERT INTO consumers VALUES("43593221032","7.42E+11","Ms. SANGEETA","","W/O. OMPRAKASH",""," 
INSERT INTO consumers VALUES("43593221033","7.42E+11","Ms. SUMAN","","W/O. RAVINDRA",""," 
INSERT INTO consumers VALUES("43593221034","7.42E+11","Ms. REETA","","W/O. GHURAHU",""," 
INSERT INTO consumers VALUES("43593221035","7.42E+11","Mr. MOHAN","","S/O. GYAN",""," 
INSERT INTO consumers VALUES("43593221036","7.42E+11","Ms. DULARI DEVI","","S/O. MUNNILAL",""," 
INSERT INTO consumers VALUES("43593221037","7.42E+11","Ms. GUDIYA","","W/O. AJAY",""," 
INSERT INTO consumers VALUES("43593221038","7.42E+11","Mr. SHIVANAND","","S/O. JAWAHAR",""," 
INSERT INTO consumers VALUES("43593221039","7.42E+11","Mr. SARWR ALAM","","S/O. NUR MOHAMMD",""," 
INSERT INTO consumers VALUES("43593221040","7.52E+11","RAJBALI SINGH",""," ",""," 
INSERT INTO consumers VALUES("43593221041","7.52E+11","LAL SAHAB","","BAJILAL MADE","","VILL CHIUTAHA
INSERT INTO consumers VALUES("43593221042","7.52E+11","BHAGMANI DEVI",""," ","","DEORIA
INSERT INTO consumers VALUES("43593221043","7.52E+11","SMT JAYANTRI DEVI",""," ","","PAIKAULI MAHRAJ
INSERT INTO consumers VALUES("43593221044","7.52E+11","RAMESH PRASAD","","JAGARNATH PRASAD","","KANCHAN PUR
INSERT INTO consumers VALUES("43593221045","7.52E+11","ASHA GUPTA","","SURESH GUPTA","","PAGHARDEWA
INSERT INTO consumers VALUES("43593221046","7.52E+11","SANDEEP CHAUHAN","","SANTUCHAUHAN","","BARHYA BUZURG
INSERT INTO consumers VALUES("43593221047","7.52E+11","PARSHURAM SHARMA",""," ","","PATHARDEVA
INSERT INTO consumers VALUES("43593221048","7.52E+11","ASHOK KUMAR",""," ",""," 
INSERT INTO consumers VALUES("43593221049","7.52E+11","RAM ASHISH",""," ",""," 
INSERT INTO consumers VALUES("43593221050","7.52E+11","V NATH BHAJU PD",""," ",""," 
INSERT INTO consumers VALUES("43593221051","7.52E+11","GUDIA","","GOBND GUPTA","","PAHARPUR
INSERT INTO consumers VALUES("43593221052","7.52E+11","RAM BELASH MADHESIA","","GAYA PD MADHESIA","","RAMPUR MAHUWARIR
INSERT INTO consumers VALUES("43593221053","7.52E+11","UMA SHANKER SINGH",""," ","","PATHARDEWA
INSERT INTO consumers VALUES("43593221054","7.52E+11","VISHWA NATH",""," ",""," 
INSERT INTO consumers VALUES("43593221055","7.52E+11","SATENDRA SINGH",""," ","","BARIYAR PUR
INSERT INTO consumers VALUES("43593221056","7.52E+11","MOHD MUFTAFA",""," ","","BANJARIYA
INSERT INTO consumers VALUES("43593221057","7.52E+11","DUDH NATH PD",""," ",""," 
INSERT INTO consumers VALUES("43593221058","7.52E+11","KASHI NATH JAIWAL",""," ","","BISHUNPURA BAZAR
INSERT INTO consumers VALUES("43593221059","7.52E+11","RAM GATI SHAHU VILL S",""," ","","BANKATA BAZAR
INSERT INTO consumers VALUES("43593221060","7.52E+11","DEVI SINGH VILL SURAJ",""," ",""," 
INSERT INTO consumers VALUES("43593221061","7.52E+11","GAJADHAR SINGH VILL S",""," ",""," 
INSERT INTO consumers VALUES("43593221062","7.52E+11","RAM CHARITRA SHAHI VI",""," ",""," 
INSERT INTO consumers VALUES("43593221063","7.52E+11","RAMNATH RAMPUR KARKHA",""," ",""," 
INSERT INTO consumers VALUES("43593221064","7.52E+11","PRINCIPAL / B S A","","PRIMARY SCHO",""," 
INSERT INTO consumers VALUES("43593221065","7.52E+11","PRINCIPAL / B S A","","PRIMARY SCHO","","GOURI BAJAR
INSERT INTO consumers VALUES("43593221066","7.52E+11","PRINCIPAL B S A","","JUNIOR SCH","","RAMPUR KARKHANA
INSERT INTO consumers VALUES("43593221067","7.52E+11","PRINCIPAL B S A","","PRIMARY SCHO","","PATHARDEVA
INSERT INTO consumers VALUES("43593221068","7.52E+11","PRINCIPAL / B S A","","PRIMARY SCHO","","DEORIA
INSERT INTO consumers VALUES("43593221069","7.52E+11","PRINCIPAL BSA","","PRIMARYSCHOO","","DESAHI DEORIA
INSERT INTO consumers VALUES("43593221070","7.52E+11","PRINCIPAL BSA","","JUNIORHIGHSC","","RUDRAPUR
INSERT INTO consumers VALUES("43593221071","7.52E+11","PRINCIPAL / B S A","","PRIMARY SCHO","","BAITALPUR
INSERT INTO consumers VALUES("43593221072","7.52E+11","PRINCIPAL B S A","","PRIMARY SCHO","","RAMPUR KARKHANA
INSERT INTO consumers VALUES("43593221073","7.52E+11","PRINCIPAL B S A","","PRIMARY SCH","","DEORIA
INSERT INTO consumers VALUES("43593221074","7.52E+11","PRINCIPAL B S A","","JUNIOR H S","","DEORIA
INSERT INTO consumers VALUES("43593221075","7.52E+11","PRINCIPAL / B S A","","PRIMARY SCHO","","PATHARDEVA
INSERT INTO consumers VALUES("43593221076","7.52E+11","PRINCIPAL B S A","","JUNIOR SCH","","DESAHI DEORIA
INSERT INTO consumers VALUES("43593221077","7.52E+11","RAM NARESH YADAV",""," ","","BHALUANI
INSERT INTO consumers VALUES("43593221078","7.52E+11","OM PARKASH SINGH",""," ","","APURWAMHERTOLA
INSERT INTO consumers VALUES("43593221079","7.52E+11","BIGGAN SINGH",""," ","","BODIYA ANANT
INSERT INTO consumers VALUES("43593221080","7.52E+11","BRIJASH KUMAR",""," ","","AURA CHAURI
INSERT INTO consumers VALUES("43593221081","7.52E+11","KAPILDEV MADHESIYA","","GOPAL PRASAD","","MEHRA PUWA
INSERT INTO consumers VALUES("43593221082","7.52E+11","RAMKALI DEVI","","PRAVIN PRASA","","BHAWANI
INSERT INTO consumers VALUES("43593221083","7.52E+11","ALGOO YADAV",""," ","","BAITALPUR
INSERT INTO consumers VALUES("43593221084","7.52E+11","SANJAY YADAV","","SHIV MANGAL","","BDDIYA SULTAN
INSERT INTO consumers VALUES("43593221085","7.52E+11","VAKIL",""," ","","MATIYARA
INSERT INTO consumers VALUES("43593221086","7.52E+11","SAROJ SRIVASTAVA","","RAVINDRALAL","","JANGAL SAHJAULI
INSERT INTO consumers VALUES("43593221087","7.52E+11","HIRA SINGH",""," ","","DEORIA
INSERT INTO consumers VALUES("43593221088","7.52E+11","ANAJANI DEVI","","SHESHNATH","","AURA CHAURI GI E
INSERT INTO consumers VALUES("43593221089","7.52E+11","OMPARKASH",""," ","","GISTATE
INSERT INTO consumers VALUES("43593221090","7.52E+11","BAHADUR","","LOKAI","","MEHRA PURWA
INSERT INTO consumers VALUES("43593221091","7.52E+11","ENDRA DEO YADAV",""," ","","GISTATE DEORIA
INSERT INTO consumers VALUES("43593221092","7.52E+11","BINDRAWATI DEVI","","RAMASHANKAR","","MEHRAAPURWA
INSERT INTO consumers VALUES("43593221093","7.52E+11","JAIHARI PANDEY","","SURENDRA BHAGAT","","GADER
INSERT INTO consumers VALUES("43593221094","7.52E+11","ALGOO",""," ","","PURWA
INSERT INTO consumers VALUES("43593221095","7.52E+11","RAM BHAGAT MAURYA",""," ","","MUNDARA
INSERT INTO consumers VALUES("43593221096","7.52E+11","MEMBAR SECRETORY INDO",""," ","","JHIRIWA CHAURAHA
INSERT INTO consumers VALUES("43593221097","7.52E+11","RAM NARAIN UPADHAY CH",""," ","","CHAK SAM PUR
INSERT INTO consumers VALUES("43593221098","7.52E+11","RAM SWAROOP YADAW GOB",""," ",""," 
INSERT INTO consumers VALUES("43593221099","7.52E+11","RAM NAGINA YADAW",""," ",""," 
INSERT INTO consumers VALUES("43593221100","7.52E+11","DHRUWA TRIPATHI S/O M",""," ","","SARAWARA
INSERT INTO consumers VALUES("43593221101","7.52E+11","LAL BAHADUR MISHRA GH",""," ","","PUR
INSERT INTO consumers VALUES("43593221102","7.52E+11","RAM JEE YADAV",""," ",""," 
INSERT INTO consumers VALUES("43593221103","7.52E+11","MARZAD YADAW BAIDA PA",""," ","","USARA BAZAR
INSERT INTO consumers VALUES("43593221104","7.52E+11","SHEO GOVIND PRADHAN B",""," ","","RAJ
INSERT INTO consumers VALUES("43593221105","7.52E+11","SURYA NATH MISRA JANG",""," ","","ALI MAHARAJ
INSERT INTO consumers VALUES("43593221106","7.52E+11","MAHNTH RAGHAW DAS JEE",""," ",""," 
INSERT INTO consumers VALUES("43593221107","7.52E+11","GANGA YADAW GOBRAHI",""," ","","IZARHI
INSERT INTO consumers VALUES("43593221108","7.52E+11","GMOTI LAL GUPTA",""," ",""," 
INSERT INTO consumers VALUES("43593221109","7.52E+11","SMT GIRJA DEVI W/O HA",""," ","","JANGAL THAKURAHI



CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `office_id` varchar(500) DEFAULT NULL,
  `emp_id` varchar(500) DEFAULT NULL,
  `emp_job_id` varchar(500) DEFAULT NULL,
  `emp_discom_id` varchar(500) DEFAULT NULL,
  `emp_aadhar_qr_code` longtext,
  `emp_father_name` varchar(500) DEFAULT NULL,
  `emp_dob` varchar(500) DEFAULT NULL,
  `emp_add_line_one` varchar(500) DEFAULT NULL,
  `emp_add_line_two` varchar(500) DEFAULT NULL,
  `emp_aadhar_photo` longtext,
  `emp_current_photo` longtext,
  `emp_finger_print` varchar(500) DEFAULT NULL,
  `emp_contact_number` varchar(500) DEFAULT NULL,
  `emp_blood_group` varchar(500) DEFAULT NULL,
  `emp_mail_id` varchar(500) DEFAULT NULL,
  `emp_passbook_image` varchar(500) DEFAULT NULL,
  `emp_bank_acc_number` varchar(500) DEFAULT NULL,
  `emp_bank_branch_name` varchar(500) DEFAULT NULL,
  `is_sbi_account` varchar(500) DEFAULT NULL,
  `emp_ref_name` varchar(500) DEFAULT NULL,
  `emp_ref_number` varchar(500) DEFAULT NULL,
  `emp_father_occupation` varchar(500) DEFAULT NULL,
  `emp_father_number` varchar(500) DEFAULT NULL,
  `emp_mother_name` varchar(500) DEFAULT NULL,
  `emp_mother_occupation` varchar(500) DEFAULT NULL,
  `emp_mother_number` varchar(500) DEFAULT NULL,
  `emp_emerg_name` varchar(500) DEFAULT NULL,
  `emp_emerg_number` varchar(500) DEFAULT NULL,
  `emp_emerg_rship` varchar(500) DEFAULT NULL,
  `emp_emerg_email` varchar(500) DEFAULT NULL,
  `emp_tenth_regular` varchar(500) DEFAULT NULL,
  `emp_tenth_inst` varchar(500) DEFAULT NULL,
  `emp_tenth_year` varchar(500) DEFAULT NULL,
  `emp_tenth_percent` varchar(500) DEFAULT NULL,
  `emp_twealth_regular` varchar(500) DEFAULT NULL,
  `emp_twealth_inst` varchar(500) DEFAULT NULL,
  `emp_twealth_year` varchar(500) DEFAULT NULL,
  `emp_twealth_percent` varchar(500) DEFAULT NULL,
  `emp_degree_regular` varchar(500) DEFAULT NULL,
  `emp_degree_inst` varchar(500) DEFAULT NULL,
  `emp_degree_year` varchar(500) DEFAULT NULL,
  `emp_degree_percent` varchar(500) DEFAULT NULL,
  `emp_addnl_qual` varchar(500) DEFAULT NULL,
  `emp_exp_org_name` varchar(500) DEFAULT NULL,
  `emp_exp_org_exp` varchar(500) DEFAULT NULL,
  `emp_exp_desg` varchar(500) DEFAULT NULL,
  `emp_exp_years` varchar(500) DEFAULT NULL,
  `emp_prof_ref_name` varchar(500) DEFAULT NULL,
  `emp_prof_ref_number` varchar(500) DEFAULT NULL,
  `emp_prof_ref_occup` varchar(500) DEFAULT NULL,
  `emp_doc_id` varchar(500) DEFAULT NULL,
  `emp_doc_name` varchar(500) DEFAULT NULL,
  `emp_check_list_status` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




CREATE TABLE `offices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `office_id` varchar(500) DEFAULT NULL,
  `office_type` varchar(500) DEFAULT NULL,
  `office_name` varchar(500) DEFAULT NULL,
  `office_address` varchar(500) DEFAULT NULL,
  `contact_person_name` varchar(500) DEFAULT NULL,
  `contact_person_number` varchar(500) DEFAULT NULL,
  `office_parent_id` varchar(500) DEFAULT NULL,
  `is_active` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




CREATE TABLE `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `mr_id` varchar(500) DEFAULT NULL,
  `zone` varchar(500) DEFAULT NULL,
  `circle` varchar(500) DEFAULT NULL,
  `division` varchar(500) DEFAULT NULL,
  `subdivision` varchar(500) DEFAULT NULL,
  `subdivision_code` varchar(500) DEFAULT NULL,
  `feeder_code` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","admin","21232f297a57a5a743894a0e4a801fc3","123456","KK-Circle","KK-Circle","KK-Circle","KK-Circle","KK-Circle","123456");
INSERT INTO users VALUES("2","BADMR1","6de6ba40377a2bafefc0b916825c3a44","DEBADMR1","Gorakhpur","EDC- Deoria","EDD DEORIA","EDSD-II DEORIA","4359322","43593220907BAN");
INSERT INTO users VALUES("3","BADMR2","827ccb0eea8a706c4c34a16891f84e7b","DEBADMR2","Gorakhpur","EDC- Deoria","EDD DEORIA","EDSD-II DEORIA","4359322","43593220905BAD
INSERT INTO users VALUES("4","BADMR3","827ccb0eea8a706c4c34a16891f84e7b","DEBADMR3","Gorakhpur","EDC- Deoria","EDD DEORIA","EDSD-II DEORIA","4359322","43593220905BAD
INSERT INTO users VALUES("5","BADMR4","827ccb0eea8a706c4c34a16891f84e7b","DEBADMR4","Gorakhpur","EDC- Deoria","EDD DEORIA","EDSD-II DEORIA","4359322","43593220905BAD
INSERT INTO users VALUES("6","BADMR5","827ccb0eea8a706c4c34a16891f84e7b","DEBADMR5","Gorakhpur","EDC- Deoria","EDD DEORIA","EDSD-II DEORIA","4359322","43593220905BAD
INSERT INTO users VALUES("7","BADMR6","827ccb0eea8a706c4c34a16891f84e7b","DEBADMR6","Gorakhpur","EDC- Deoria","EDD DEORIA","EDSD-II DEORIA","4359322","43593220905BAD
INSERT INTO users VALUES("8","BADMR7","827ccb0eea8a706c4c34a16891f84e7b","DEBADMR7","Gorakhpur","EDC- Deoria","EDD DEORIA","EDSD-II DEORIA","4359322","43593220905BAD
INSERT INTO users VALUES("9","BADMR8","827ccb0eea8a706c4c34a16891f84e7b","DEBADMR8","Gorakhpur","EDC- Deoria","EDD DEORIA","EDSD-II DEORIA","4359322","43593220905BAD
INSERT INTO users VALUES("10","BADMR9","827ccb0eea8a706c4c34a16891f84e7b","DEBADMR9","Gorakhpur","EDC- Deoria","EDD DEORIA","EDSD-II DEORIA","4359322","43593220905BAD
INSERT INTO users VALUES("11","BADMR10","827ccb0eea8a706c4c34a16891f84e7b","DEBADMR10","Gorakhpur","EDC- Deoria","EDD DEORIA","EDSD-II DEORIA","4359322","43593220905BAD
INSERT INTO users VALUES("12","PAKMR1","827ccb0eea8a706c4c34a16891f84e7b","DEOPAKMR1","GORAKHPUR ","EDC- Deoria","EDD - Deoria","EDSD-I DEORIA","4359321","43593220907PAK");
INSERT INTO users VALUES("13","CHAMR1","827ccb0eea8a706c4c34a16891f84e7b","DEO1CHAMR1","GORAKHPUR","EDC- Deoria","EDD - Deoria","EDSD-I DEORIA","4359321","43593210900SOU");



CREATE TABLE `villages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(500) DEFAULT NULL,
  `circle` varchar(500) DEFAULT NULL,
  `division` varchar(500) DEFAULT NULL,
  `subdivision` varchar(500) DEFAULT NULL,
  `subdivision_code` varchar(500) DEFAULT NULL,
  `feeder_name` varchar(500) DEFAULT NULL,
  `feeder_code` varchar(500) DEFAULT NULL,
  `village_name` varchar(500) DEFAULT NULL,
  `village_code` varchar(500) DEFAULT NULL,
  `latitude` varchar(500) DEFAULT NULL,
  `longitude` varchar(500) DEFAULT NULL,
  `photo` longtext,
  `mapped` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `village_code` (`village_code`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO villages VALUES("1","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","Pachrokhia
INSERT INTO villages VALUES("2","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","BINDWALIYA
INSERT INTO villages VALUES("3","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","Khairat
INSERT INTO villages VALUES("4","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","Imiliha Urf Bhagwanpur
INSERT INTO villages VALUES("5","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","bhatwa
INSERT INTO villages VALUES("6","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","chainpur
INSERT INTO villages VALUES("7","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","mohanpur
INSERT INTO villages VALUES("8","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","chakiya
INSERT INTO villages VALUES("9","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","sherpur
INSERT INTO villages VALUES("10","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","pakdiya
INSERT INTO villages VALUES("11","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","BELWA MADAS
INSERT INTO villages VALUES("12","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","SUMAHITELA RAMPUR
INSERT INTO villages VALUES("13","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","SEKHPURA BARHARA
INSERT INTO villages VALUES("14","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","SHEKHAR PATTI
INSERT INTO villages VALUES("15","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","BANKARA
INSERT INTO villages VALUES("16","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","KOI KOILASWA
INSERT INTO villages VALUES("17","Gorakhpur","EDC- Deoria","EDD DEORIA","4359322","EDSD-II DEORIA","BANKATA","43593220907BAN","NARAYANPUR
