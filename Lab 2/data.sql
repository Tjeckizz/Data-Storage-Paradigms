INSERT INTO students (student_id,personal_number,name,street_name,zip_code,city,discount_percentage)
VALUES
  (DEFAULT,201589473624,'Jonah Gonzales','Ap #340-5182 Ullamcorper Road','73945','Gravataí','10'),
  (DEFAULT,200730647760,'Alika Herman','8782 Nisi. Rd.','23059','Sicuani','5'),
  (DEFAULT,193695821321,'Jemima Mckee','172-9058 Aenean St.','59983','Skien','5'),
  (DEFAULT,193975179296,'Justine Garrett','1425 Feugiat Street','948649','Guaymas','5'),
  (DEFAULT,194540003039,'Faith Deleon','8718 Risus. St.','86225','Placilla','5'),
  (DEFAULT,198688504792,'Clinton Cherry','P.O. Box 623, 674 Donec Av.','760372','Pamplona',0),
  (DEFAULT,197896661174,'Channing Kirby','828-9079 Erat Av.','67143','Bridge of Allan',0),
  (DEFAULT,192020907718,'Quynn Roach','Ap #798-7405 Eget St.','2669','San Pietro Avellana',0),
  (DEFAULT,200566060300,'Cherokee Price','Ap #913-2005 Tristique Av.','92236','Starachowice',0),
  (DEFAULT,194472162840,'Riley Rios','317-7497 Blandit Street','1852','Cork',0),
  (DEFAULT,200510816724,'Hakeem Livingston','6760 Aptent Street','16183','Huaral',0),
  (DEFAULT,196657036391,'Noelle Dixon','Ap #404-7608 Dui, St.','8521','Brunn am Gebirge',0),
  (DEFAULT,191001142359,'Basil Mcgee','777-6792 Fringilla Street','84699','Tianjin',0),
  (DEFAULT,195488569631,'Ciara Hendrix','Ap #692-2126 Ipsum Av.','09887426','Granada',0),
  (DEFAULT,199913157446,'Harrison Patrick','Ap #880-5550 Cras Ave','09000','Pasir Ris',0),
  (DEFAULT,190897229675,'Christen Quinn','793-7407 Aenean St.','488853','Neusiedl am See',0),
  (DEFAULT,199419921172,'Ezra Wise','Ap #760-1664 Metus. Av.','514 232','Galway',0),
  (DEFAULT,196501025144,'Herman Decker','Ap #702-1086 Duis Road','17210','La Tebaida',0),
  (DEFAULT,201410612660,'Jael Newman','Ap #418-7322 Vitae Av.','9498','Palu',0),
  (DEFAULT,192887315165,'Kelly Malone','Ap #472-3039 Ullamcorper Av.','21028','Rocky Mountain House',0),
  (DEFAULT,201589473624,'Kebab Gonzales','Ap #340-5182 Ullamcorper Road','73945','Gravataí','10'),
  (DEFAULT,201589473624,'Shawarma Gonzales','Ap #340-5182 Ullamcorper Road','73945','Gravataí','10'),
  (DEFAULT,200730647760,'Isak Herman','8782 Nisi. Rd.','23059','Sicuani', '5'),
  (DEFAULT,193695821321,'Stripstallrik Mckee','172-9058 Aenean St.','59983','Skien','5'),
  (DEFAULT,193975179296,'Nuggets Garrett','1425 Feugiat Street','948649','Guaymas','5'),
  (DEFAULT,194540003039,'Oxfile Deleon','8718 Risus. St.','86225','Placilla','5');


INSERT INTO siblings_on_school (student_id,sibling_id)
VALUES
  (1,21),
  (1,22),
  (21,22),
  (2,23),
  (3,24),
  (4,25),
  (5,26);

INSERT INTO instructors (instructor_id,personal_number,name,street_name,zip_code,city)
VALUES
  (DEFAULT,196339804291,'Teagan Zamora','P.O. Box 499, 4840 Augue Avenue','372197','Giyani'),
  (DEFAULT,195134734021,'Knox Edwards','871-1615 Nostra, Road','3889','Höchst'),
  (DEFAULT,200049603784,'Lyle Mann','5546 Sociis Road','57854225','Banda Aceh'),
  (DEFAULT,202166223304,'Melanie Carroll','P.O. Box 358, 597 Vehicula Avenue','00764','Cork'),
  (DEFAULT,200190503211,'Janna Martin','691-6470 Elit, Ave','121106','Mexico City');


INSERT INTO student_emails (student_id,email)
VALUES
  (1,'libero.nec.ligula@aol.couk'),
  (2,'nec.tempus@google.ca'),
  (3,'mauris.rhoncus.id@google.com'),
  (4,'magna@protonmail.edu'),
  (5,'nibh.sit.amet@icloud.couk'),
  (6,'nec.urna.et@protonmail.net'),
  (7,'in.consequat@yahoo.edu'),
  (8,'id.sapien@aol.couk'),
  (9,'cursus.in@aol.ca'),
  (10,'at.risus.nunc@outlook.com'),
  (11,'nonummy.ut@outlook.com'),
  (12,'id.erat@hotmail.net'),
  (13,'amet.consectetuer.adipiscing@yahoo.edu'),
  (14,'mauris.suspendisse@icloud.edu'),
  (15,'dictum@protonmail.couk'),
  (16,'eleifend@google.edu'),
  (17,'sagittis.placerat@yahoo.couk'),
  (18,'inceptos@icloud.com'),
  (19,'nascetur.ridiculus@hotmail.ca'),
  (20,'risus.odio.auctor@google.net');


INSERT INTO student_phone_numbers (student_id,phone_number)
VALUES
  (1,'1-587-579-7898'),
  (2,'(512) 876-9335'),
  (3,'(218) 862-9114'),
  (4,'(226) 458-4545'),
  (5,'1-214-767-2829'),
 (6,'(981) 505-8727'),
  (7,'(813) 712-6987'),
  (8,'1-221-155-5655'),
  (9,'(875) 816-0579'),
  (10,'(699) 603-0512'),
  (11,'1-562-429-2862'),
  (12,'(487) 507-2708'),
  (13,'(799) 617-6618'),
  (14,'1-853-118-1183'),
  (15,'1-391-613-5639'),
  (16,'1-958-565-4850'),
  (17,'(326) 462-8677'),
  (18,'1-778-463-7511'),
  (19,'1-307-380-7772'),
  (20,'1-353-625-3164');


INSERT INTO contact_person_phone_numbers (student_id,phone_number,relationship)
VALUES
  (1,'(663) 703-2437','parent'),
  (2,'1-405-245-6433','parent'),
  (3,'1-417-568-3744','parent'),
  (4,'1-637-555-4273','parent'),
  (5,'(682) 853-2836','parent'),
  (6,'1-670-635-7101','parent'),
  (7,'1-317-233-3350','parent'),
  (8,'(414) 734-4272','parent'),
  (9,'(665) 472-4526','parent'),
  (10,'(338) 248-3771','parent'),
  (11,'(226) 687-1837','parent'),
  (12,'1-636-976-7831','parent'),
  (13,'1-119-736-8571','parent'),
  (14,'(797) 383-5762','parent'),
  (15,'(788) 946-2475','parent'),
  (16,'(758) 224-6750','parent'),
  (17,'1-486-336-2484','parent'),
  (18,'(216) 696-7524','parent'),
  (19,'1-739-493-8635','parent'),
  (20,'(724) 566-6453','parent');


INSERT INTO contact_person_emails (student_id,email,relationship)
VALUES
  (1,'iaculis.aliquet@yahoo.couk','parent'),
  (2,'amet.massa.quisque@icloud.ca','parent'),
  (3,'nec.ligula.consectetuer@yahoo.couk','parent'),
  (4,'donec@outlook.ca','parent'),
  (5,'magna.a@google.org','parent'),
  (6,'augue@yahoo.edu','parent'),
  (7,'eu@protonmail.net','parent'),
  (8,'id.risus@protonmail.couk','parent'),
  (9,'fusce@aol.org','parent'),
  (10,'enim.sit@outlook.org','parent'),
  (11,'enim.etiam.imperdiet@outlook.edu','parent'),
  (12,'faucibus.ut@protonmail.net','parent'),
  (13,'nulla.magna@yahoo.org','parent'),
  (14,'lorem@icloud.edu','parent'),
  (15,'id.libero.donec@outlook.com','parent'),
  (16,'montes.nascetur@protonmail.ca','parent'),
  (17,'sem.nulla@outlook.ca','parent'),
  (18,'in.at@outlook.com','parent'),
  (19,'elit@hotmail.couk','parent'),
  (20,'non.egestas@hotmail.com','parent'),
  (16,'massa@protonmail.net','parent'),
  (17,'mauris.quis@aol.org','parent'),
  (18,'at.iaculis@google.edu','parent'),
  (19,'aliquet@hotmail.ca','parent'),
  (20,'vel.quam@aol.ca','parent');


INSERT INTO instructor_emails (instructor_id,email)
VALUES
  (1,'sem.consequat.nec@protonmail.ca'),
  (2,'adipiscing.ligula@hotmail.edu'),
  (3,'non.justo.proin@outlook.org'),
  (4,'cum.sociis@protonmail.couk'),
  (5,'auctor.mauris@yahoo.ca');

INSERT INTO instructor_phone_numbers (instructor_id,phone_number)
VALUES
  (1,'1-423-447-8083'),
  (2,'(957) 538-4293'),
  (3,'(315) 486-1020'),
  (4,'(725) 654-5731'),
  (5,'1-205-545-7853');

INSERT INTO instructor_instruments (instructor_id,instrument_type)
VALUES
  (1,'guitar'),
  (2,'cello'),
  (3,'bass guitar'),
  (4,'bongo drums'),
  (5,'guitar');

INSERT INTO instructor_availability (instructor_id,from_time,to_time)
VALUES
  (1,'2023-11-21 06:18','2023-11-21 08:26'),
  (2,'2023-11-21 05:04','2023-11-21 07:00'),
  (3,'2023-11-21 06:57','2023-11-21 09:13'),
  (4,'2023-11-21 11:36','2023-11-21 21:14'),
  (5,'2023-11-21 02:12','2023-11-21 11:08'),
  (1,'2023-11-22 06:18','2023-11-21 08:26'),
  (2,'2023-11-22 05:04','2023-11-21 07:00'),
  (3,'2023-11-22 06:57','2023-11-21 09:13'),
  (4,'2023-11-22 11:36','2023-11-21 21:14'),
  (5,'2023-11-22 02:12','2023-11-21 11:08');








COPY public.pricing_schemes (price_id, lesson_type, skill_level, instructor_lesson_salary, lesson_price) FROM stdin;
SOLBEG	Solitary	Beginner	200	300
SOLINT	Solitary	Intermediate	200	300
SOLADV	Solitary	Advanced	300	400
GROBEG	Group	Beginner	500	150
GROINT	Group	Intermediate	500	150
GROADV	Group	Advanced	700	200
ENSBEG	Ensemble	Beginner	600	200
ENSINT	Ensemble	Intermediate	600	200
ENSADV	Ensemble	Advanced	900	300
\.

INSERT INTO lessons (lesson_id,price_id,location,start_time,end_time,instructor_id,instrument_type,min_student_limit,max_student_limit,target_genre,lesson_type,skill_level)
VALUES
  (DEFAULT,'SOLBEG','A','2023-11-23 08:00',NULL,1,'guitar',1,3,'Rock','Solitary','Beginner'),
  (DEFAULT,'SOLINT','B','2023-11-23 04:30',NULL,2,'cello',1,3,'Rock','Solitary','Intermediate'),
  (DEFAULT,'GROADV','C','2023-11-23 05:30','2023-11-23 07:30',3,'bass guitar',2,4,'Pop','Group','Advanced'),
  (DEFAULT,'GROBEG','A','2023-11-23 10:00','2023-11-23 12:00',4,'bongo drums',2,4,'Pop','Group','Beginner'),
  (DEFAULT,'ENSINT','Zoom','2023-11-23 04:00','2023-11-23 06:00',5,'guitar',1,5,'Punk','Ensemble','Intermediate');

INSERT INTO student_lessons (student_id,lesson_id,price_id)
VALUES
  (1,1,'SOLBEG'),
  (2,2,'SOLINT'),
  (3,3,'GROADV'),
  (4,4,'GROBEG'),
  (5,5,'ENSINT'),
  (6,3,'GROADV'),
  (7,4,'GROBEG'),
  (8,5,'ENSINT');

COPY public.instruments (instrument_type, instrument_brand, available) FROM stdin;
accordion	Gibson	FALSE
acoustic guitar	Fender	FALSE
bagpipe	NULL	FALSE
banjo	Roland	FALSE
bass guitar	Yamaha	FALSE
bongo drums	NULL	TRUE
bugle	Harman Professional	TRUE
cello	Steinway	TRUE
clarinet	Shure	TRUE
cymbals	Yamaha	TRUE
drums	Gibson	TRUE
electric guitar	Roland	TRUE
flute	Sennheiser	TRUE
French horn	Baguette	TRUE
harmonica	NULL	TRUE
harp	Roland	TRUE
\.


INSERT INTO leased_instruments (student_id,instrument_id,lease_period_start,price_per_month)
VALUES
  (1,1,'2023-11-21 01:23',300),
  (2,2,'2023-11-21 10:45',500),
  (3,3,'2023-11-21 08:20',200),
  (4,4,'2023-11-21 01:42',100),
  (5,5,'2023-11-21 10:18',400);



