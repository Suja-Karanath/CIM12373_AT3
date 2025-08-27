/*              Insert data into tables            */

/* ---------------------------- ARTIST ---------------------------- */

INSERT INTO ARTIST VALUES(101,'Arjun','Menon','Digital Art','arjun.menon@artmail.in','9876101101','Kerala-based digital artist.','https://portfolio.in/arjun-menon');
INSERT INTO ARTIST VALUES(102,'Nithya','Nair','Abstract','nithya.nair@artmail.in','9876101102','Abstract painter from Kochi.','https://portfolio.in/nithya-nair');
INSERT INTO ARTIST VALUES(103,'Deepak','Pillai','Sculpture','deepak.pillai@artmail.in','9876101103','Bronze sculptor from Trivandrum.','https://portfolio.in/deepak-pillai');
INSERT INTO ARTIST VALUES(104,'Kavya','Iyer','Realism','kavya.iyer@artmail.in','9876101104','Realist painter focusing on nature.','https://portfolio.in/kavya-iyer');
INSERT INTO ARTIST VALUES(105,'Sanjay','Reddy','Mixed Media','sanjay.reddy@artmail.in','9876101105','Mixed-media experimentalist.','https://portfolio.in/sanjay-reddy');
INSERT INTO ARTIST VALUES(106,'Meera','Rao','Acrylic','meera.rao@artmail.in','9876101106','Acrylic landscapes and seascapes.','https://portfolio.in/meera-rao');
INSERT INTO ARTIST VALUES(107,'Vishnu','Krishnan','Oil','vishnu.krishnan@artmail.in','9876101107','Oil painter; temple themes.','https://portfolio.in/vishnu-krishnan');
INSERT INTO ARTIST VALUES(108,'Ananya','Varma','Digital Art','ananya.varma@artmail.in','9876101108','Digital installations and AR.','https://portfolio.in/ananya-varma');
INSERT INTO ARTIST VALUES(109,'Rohit','Kumar','Realism','rohit.kumar@artmail.in','9876101109','Realist portraits.','https://portfolio.in/rohit-kumar');
INSERT INTO ARTIST VALUES(110,'Lakshmi','Pillai','Acrylic','lakshmi.pillai@artmail.in','9876101110','Coastal acrylics.','https://portfolio.in/lakshmi-pillai');

/* ---------------------------- CURATOR ---------------------------- */

INSERT INTO CURATOR VALUES(201,'Ajith','Menon','Sculpture','ajith.menon@nccc.in','9895001201');
INSERT INTO CURATOR VALUES(202,'Sruthi','Nair','Digital Installations','sruthi.nair@nccc.in','9895001202');
INSERT INTO CURATOR VALUES(203,'Harish','Iyer','Painting','harish.iyer@nccc.in','9895001203');
INSERT INTO CURATOR VALUES(204,'Neha','Reddy','Digital','neha.reddy@nccc.in','9895001204');
INSERT INTO CURATOR VALUES(205,'Pranav','Rao','Mixed Media','pranav.rao@nccc.in','9895001205');
INSERT INTO CURATOR VALUES(206,'Divya','Krishnan','Sculpture','divya.krishnan@nccc.in','9895001206');
INSERT INTO CURATOR VALUES(207,'Suresh','Varma','Photography','suresh.varma@nccc.in','9895001207');
INSERT INTO CURATOR VALUES(208,'Keerthi','Kumar','Acrylic','keerthi.kumar@nccc.in','9895001208');
INSERT INTO CURATOR VALUES(209,'Raghav','Pillai','Oil','raghav.pillai@nccc.in','9895001209');
INSERT INTO CURATOR VALUES(210,'Sneha','Menon','Curation','sneha.menon@nccc.in','9895001210');

/*  ---------------------------- MEMBER  ---------------------------- */

INSERT INTO MEMBER VALUES(301,'Hari','Menon','hari.menon@gmail.com','9822001001','42 MG Road, Kochi, Kerala 682001');
INSERT INTO MEMBER VALUES(302,'Asha','Nair','asha.nair@gmail.com','9822001002','11 Beach Rd, Kozhikode, Kerala 673001');
INSERT INTO MEMBER VALUES(303,'Kiran','Pillai','kiran.pillai@gmail.com','9822001003','88 Temple St, Thrissur, Kerala 680001');
INSERT INTO MEMBER VALUES(304,'Divya','Iyer','divya.iyer@gmail.com','9822001004','6 Residency, Chennai, TN 600001');
INSERT INTO MEMBER VALUES(305,'Rahul','Reddy','rahul.reddy@gmail.com','9822001005','7 Jubilee Hills, Hyderabad, TS 500033');
INSERT INTO MEMBER VALUES(306,'Anu','Rao','anu.rao@gmail.com','9822001006','19 Indiranagar, Bengaluru, KA 560038');
INSERT INTO MEMBER VALUES(307,'Sneha','Krishnan','sneha.krishnan@gmail.com','9822001007','55 Fort Rd, Mysuru, KA 570001');
INSERT INTO MEMBER VALUES(308,'Vikram','Varma','vikram.varma@gmail.com','9822001008','23 Cantonment, Trichy, TN 620001');
INSERT INTO MEMBER VALUES(309,'Meena','Kumar','meena.kumar@gmail.com','9822001009','31 MG Road, Pune, MH 411001');
INSERT INTO MEMBER VALUES(310,'Arun','Pillai','arun.pillai@gmail.com','9822001010','44 Marine Dr, Mumbai, MH 400001');

/*  ---------------------------- SUPPLIER  ---------------------------- */

INSERT INTO SUPPLIER VALUES(401,'Rakesh','Sharma','BlueDart Logistics','LOGISTICS','rakesh@bluedart.in','9811110001');
INSERT INTO SUPPLIER VALUES(402,'Priya','Singh','Delhivery Pvt Ltd','COURIER','priya@delhivery.com','9811110002');
INSERT INTO SUPPLIER VALUES(403,'Anoop','Menon','DTDC Express','COURIER','anoop@dtdc.com','9811110003');
INSERT INTO SUPPLIER VALUES(404,'Tanvi','Iyer','Gati Ltd','LOGISTICS','tanvi@gati.com','9811110004');
INSERT INTO SUPPLIER VALUES(405,'Karthik','Reddy','Ecom Express','COURIER','karthik@ecomexpress.in','9811110005');
INSERT INTO SUPPLIER VALUES(406,'Megha','Rao','Shadowfax','COURIER','megha@shadowfax.in','9811110006');
INSERT INTO SUPPLIER VALUES(407,'Dev','Pillai','Safexpress','LOGISTICS','dev@safexpress.com','9811110007');
INSERT INTO SUPPLIER VALUES(408,'Neeraj','Kumar','XpressBees','COURIER','neeraj@xpressbees.com','9811110008');
INSERT INTO SUPPLIER VALUES(409,'Srilatha','Nair','India Post Logistics','LOGISTICS','srilatha@indiapost.gov.in','9811110009');
INSERT INTO SUPPLIER VALUES(410,'Akash','Varma','Pickrr Logistics','INSURANCE','akash@pickrr.com','9811110010');


/*  ---------------------------- ARTWORK  ---------------------------- */

INSERT INTO ARTWORK VALUES(501,'Monsoon Raga', 2023,'OIL','Kerala monsoon in oils.',35000.00,'SOLD',101,201);
INSERT INTO ARTWORK VALUES(502,'Backwaters',    2022,'ACRYLIC','Houseboats on Vembanad.',28000.00,'SOLD',102,202);
INSERT INTO ARTWORK VALUES(503,'Temple Bells',  2021,'SCULPTURE','Bronze temple bells.',45000.00,'SOLD',103,203);
INSERT INTO ARTWORK VALUES(504,'Coconut Grove', 2024,'DIGITAL','Digital coastal scene.',22000.00,'SOLD',104,204);
INSERT INTO ARTWORK VALUES(505,'Kathakali Eyes',2020,'OIL','Expressive Kathakali portrait.',30000.00,'SOLD',101,205);
INSERT INTO ARTWORK VALUES(506,'Silicon Skyline',2023,'DIGITAL','Bengaluru tech skyline.',32000.00,'SOLD',102,206);
INSERT INTO ARTWORK VALUES(507,'Spice Route',   2019,'MIXED_MEDIA','Spice patterns collage.',26000.00,'SOLD',105,207);
INSERT INTO ARTWORK VALUES(508,'Nilgiri Mist',  2018,'ACRYLIC','Misty Nilgiri hills.',24000.00,'SOLD',106,208);
INSERT INTO ARTWORK VALUES(509,'Theyam Fire',   2025,'OIL','Theyyam performance.',40000.00,'SOLD',107,209);
INSERT INTO ARTWORK VALUES(510,'Saree Weaves',  2024,'MIXED_MEDIA','Weave textures.',27000.00,'SOLD',108,210);
INSERT INTO ARTWORK VALUES(511,'Marina Dawn',   2022,'OIL','Chennai Marina beach sunrise.',29000.00,'AVAILABLE',109,201);
INSERT INTO ARTWORK VALUES(512,'Charminar Blue',2021,'ACRYLIC','Charminar in blues.',25000.00,'PENDING_APPROVAL',110,202);

/*  ---------------------------- ORDERS ---------------------------- */


INSERT INTO ORDERS VALUES(601,301,'2025-11-01 10:15:00',35000.00);
INSERT INTO ORDERS VALUES(602,302,'2025-11-01 11:30:00',28000.00);
INSERT INTO ORDERS VALUES(603,303,'2025-11-02 12:00:00',45000.00);
INSERT INTO ORDERS VALUES(604,304,'2025-11-03 13:00:00',22000.00);
INSERT INTO ORDERS VALUES(605,305,'2025-11-04 14:15:00',30000.00);
INSERT INTO ORDERS VALUES(606,306,'2025-11-05 15:20:00',32000.00);
INSERT INTO ORDERS VALUES(607,307,'2025-11-06 16:25:00',26000.00);
INSERT INTO ORDERS VALUES(608,308,'2025-11-07 17:10:00',24000.00);
INSERT INTO ORDERS VALUES(609,309,'2025-11-08 09:45:00',40000.00);
INSERT INTO ORDERS VALUES(610,310,'2025-11-09 10:20:00',27000.00);

/*  ---------------------------- ORDERITEM  ---------------------------- */

INSERT INTO ORDERITEM VALUES(701,601,501,35000.00);
INSERT INTO ORDERITEM VALUES(702,602,502,28000.00);
INSERT INTO ORDERITEM VALUES(703,603,503,45000.00);
INSERT INTO ORDERITEM VALUES(704,604,504,22000.00);
INSERT INTO ORDERITEM VALUES(705,605,505,30000.00);
INSERT INTO ORDERITEM VALUES(706,606,506,32000.00);
INSERT INTO ORDERITEM VALUES(707,607,507,26000.00);
INSERT INTO ORDERITEM VALUES(708,608,508,24000.00);
INSERT INTO ORDERITEM VALUES(709,609,509,40000.00);
INSERT INTO ORDERITEM VALUES(710,610,510,27000.00);

/*  ----------------------------  CART  ---------------------------- */

INSERT INTO CART VALUES(601,301,'2025-10-31 18:00:00','CHECKED_OUT');
INSERT INTO CART VALUES(602,302,'2025-10-31 19:00:00','CHECKED_OUT');
INSERT INTO CART VALUES(603,303,'2025-11-01 09:30:00','CHECKED_OUT');
INSERT INTO CART VALUES(604,304,'2025-11-02 10:15:00','CHECKED_OUT');
INSERT INTO CART VALUES(605,305,'2025-11-03 10:45:00','CHECKED_OUT');
INSERT INTO CART VALUES(606,306,'2025-11-04 11:25:00','CHECKED_OUT');
INSERT INTO CART VALUES(607,307,'2025-11-05 12:00:00','CHECKED_OUT');
INSERT INTO CART VALUES(608,308,'2025-11-06 12:40:00','CHECKED_OUT');
INSERT INTO CART VALUES(609,309,'2025-11-07 13:10:00','CHECKED_OUT');
INSERT INTO CART VALUES(610,310,'2025-11-08 13:40:00','CHECKED_OUT');

/*  ---------------------------- INVOICE  ---------------------------- */

INSERT INTO INVOICE VALUES(801,601,401,35000.00,'CARD');
INSERT INTO INVOICE VALUES(802,602,402,28000.00,'PAYPAL');
INSERT INTO INVOICE VALUES(803,603,403,45000.00,'BANK_TRANSFER');
INSERT INTO INVOICE VALUES(804,604,404,22000.00,'CARD');
INSERT INTO INVOICE VALUES(805,605,405,30000.00,'OTHER');
INSERT INTO INVOICE VALUES(806,606,406,32000.00,'CARD');
INSERT INTO INVOICE VALUES(807,607,407,26000.00,'PAYPAL');
INSERT INTO INVOICE VALUES(808,608,408,24000.00,'CARD');
INSERT INTO INVOICE VALUES(809,609,409,40000.00,'BANK_TRANSFER');
INSERT INTO INVOICE VALUES(810,610,410,27000.00,'CARD');


/*  ---------------------------- REVIEW  ---------------------------- */

INSERT INTO REVIEW VALUES(901,301,501,5,'Stunning brushwork.');
INSERT INTO REVIEW VALUES(902,302,502,4,'Lovely tones.');
INSERT INTO REVIEW VALUES(903,303,503,5,'Exceptional craftsmanship.');
INSERT INTO REVIEW VALUES(904,304,504,4,'Vibrant digital work.');
INSERT INTO REVIEW VALUES(905,305,505,5,'Iconic Kerala expression.');
INSERT INTO REVIEW VALUES(906,306,506,4,'Modern and clean.');
INSERT INTO REVIEW VALUES(907,307,507,5,'Rich textures.');
INSERT INTO REVIEW VALUES(908,308,508,4,'Peaceful and calm.');
INSERT INTO REVIEW VALUES(909,309,509,5,'Powerful composition.');
INSERT INTO REVIEW VALUES(910,310,510,4,'Great concept.');

COMMIT;
