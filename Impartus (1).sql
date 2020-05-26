CREATE TABLE Department
(
  D_name VARCHAR(50) NOT NULL ,
  D_id VARCHAR(50) NOT NULL UNIQUE,
  Program VARCHAR(50) NOT NULL,
  PRIMARY KEY (D_id)
);

CREATE TABLE Admin
(
  user_id VARCHAR NOT NULL UNIQUE,
  password VARCHAR NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE Student
(
  Name VARCHAR(50) NOT NULL,
  Semester INT NOT NULL,
  Karma_Points INT NOT NULL,
  SRN VARCHAR(50) NOT NULL UNIQUE,
  gender VARCHAR(1) NOT NULL,
  D_id VARCHAR(50) NOT NULL,
  PRIMARY KEY (SRN),
  FOREIGN KEY (D_id) REFERENCES Department(D_id),
  
  CHECK(gender IN('M','F'))
);

CREATE TABLE Professor
(
  E_id INT NOT NULL UNIQUE,
  Name VARCHAR(50) NOT NULL,
  Mail_id VARCHAR(50) NOT NULL UNIQUE,
  About VARCHAR(50) NOT NULL,
  gender VARCHAR(1) NOT NULL,
  D_id VARCHAR(50) NOT NULL,
  PRIMARY KEY (E_id),
  FOREIGN KEY (D_id) REFERENCES Department(D_id),
  CHECK(gender IN('M','F')) 
);

CREATE TABLE Courses
(
  C_name VARCHAR(50) NOT NULL UNIQUE,
  Semester INT NOT NULL,
  C_id INT NOT NULL UNIQUE,
  Course_info VARCHAR(50) NOT NULL UNIQUE,
  D_id VARCHAR(50) NOT NULL,
  E_id INT NOT NULL,
  PRIMARY KEY (C_id),
  FOREIGN KEY (D_id) REFERENCES Department(D_id),
  FOREIGN KEY (E_id) REFERENCES Professor(E_id)
);

CREATE TABLE Videos
(
  Duration INT NOT NULL,
  Date VARCHAR(50) NOT NULL,
  Time VARCHAR(50) NOT NULL,
  E_id INT NOT NULL,
  Title VARCHAR(50) NOT NULL UNIQUE,
  v_id INT NOT NULL UNIQUE,
  PRIMARY KEY (v_id),
  FOREIGN KEY (E_id) REFERENCES Professor(E_id)
);

CREATE TABLE Topic
(
  T_id INT NOT NULL UNIQUE,
  No_of_videos_uploaded INT NOT NULL,
  No_of_followers INT NOT NULL,
  Name VARCHAR(50) NOT NULL UNIQUE,
  E_id INT NOT NULL,
  C_id INT NOT NULL,
  PRIMARY KEY (T_id),
  FOREIGN KEY (E_id) REFERENCES Professor(E_id),
  FOREIGN KEY (C_id) REFERENCES Courses(C_id)
);

CREATE TABLE Student_views_videos
(
  views_id VARCHAR(5) NOT NULL UNIQUE,
  SRN VARCHAR(50) NOT NULL,
  v_id INT NOT NULL,
  PRIMARY KEY (views_id),
  FOREIGN KEY (SRN) REFERENCES Student(SRN),
  FOREIGN KEY (v_id) REFERENCES Videos(v_id)
);


INSERT INTO Department VALUES ('CSE', '0001', 'BTECH');
INSERT INTO Department VALUES ('ECE', '0002', 'BTECH');
INSERT INTO Department VALUES ('MECH', '0003', 'BTECH');
INSERT INTO Department VALUES ('EEE', '0004', 'BTECH');
INSERT INTO Department VALUES ('BT', '0005', 'BTECH');
INSERT INTO Department VALUES ('CIVIL', '0006', 'BTECH');
INSERT INTO Department VALUES ('DESIGN', '0007', 'BDESIGN');
INSERT INTO Department VALUES ('ARCH', '0008', 'BDESIGN');
INSERT INTO Department VALUES ('BBA18', '0009', 'BBA');
INSERT INTO Department VALUES ('MBA18', '0010', 'MBA');
INSERT INTO Department VALUES ('MTECH18', '0011', 'MTECH');
INSERT INTO Department VALUES ('CHEM', '0012', 'BTECH');
INSERT INTO Department VALUES ('ENV', '0013', 'BTECH');
INSERT INTO Department VALUES ('THERM', '0014', 'BTECH');
INSERT INTO Department VALUES ('AEROSPC', '0015', 'BTECH');
INSERT INTO Department VALUES ('AERONAUT', '0016', 'BTECH');
INSERT INTO Department VALUES ('AGGRICUL', '0017', 'BTECH');
INSERT INTO Department VALUES ('PETROLE', '0018', 'BTECH');
INSERT INTO Department VALUES ('IT', '0019', 'BTECH');
INSERT INTO Department VALUES ('TEXTIL', '0020', 'BTECH');




INSERT INTO Admin VALUES ('6999','password');





INSERT INTO Student VALUES ('TEJA',4,2000,'PES1201800408','M','0001');
INSERT INTO Student VALUES ('SAMSON',2,170,'PESECE2018','M','0002');
INSERT INTO Student VALUES ('SHARAN',4,800,'PESMECH2018','M','0003');
INSERT INTO Student VALUES ('THARUN',7,290,'PESEEE2018','M','0004');
INSERT INTO Student VALUES ('YAMINI',5,3000,'PESBT2018','F','0005');
INSERT INTO Student VALUES ('TEJAS',4,700,'PESCVL2018','M','0006');
INSERT INTO Student VALUES ('AJAZ',7,1000,'PESDSN2018','M','0007');
INSERT INTO Student VALUES ('YUTHIKA',8,2400,'PESARC2018','F','0008');
INSERT INTO Student VALUES ('ARPIT',6,10,'PESBBA2018','M','0009');
INSERT INTO Student VALUES ('AAYUSH',4,20,'PESMBA2018','M','0010');
INSERT INTO Student VALUES ('CHARAN',2,1700,'PESMT2018','M','0011');
INSERT INTO Student VALUES ('YUKTA',5,200,'PESCHM2018','F','0012');
INSERT INTO Student VALUES ('CELIN',3,299,'PESENV2018','F','0013');
INSERT INTO Student VALUES ('VEDANT',4,2992,'PESTH2018','M','0014');
INSERT INTO Student VALUES ('JIMMY',4,3000,'PESASP2018','M','0015');
INSERT INTO Student VALUES ('SANDRA',4,2000,'PESARN2018','F','0016');
INSERT INTO Student VALUES ('TANYA',4,1000,'PESAG2018','F','0017');
INSERT INTO Student VALUES ('SHRUTIKA',5,2900,'PESPT2018','F','0018');
INSERT INTO Student VALUES ('PRIYA',3,1000,'PESIT2018','F','0019');
INSERT INTO Student VALUES ('DHEERAJ',1,2300,'PESTXT2018','M','0020');
INSERT INTO Student VALUES ('SAKSHI',6,20,'PESCSE2018','F','0001');


INSERT INTO Professor VALUES (11,'DASH','dash@gmail.com','Ex google employee','M','0001');
INSERT INTO Professor VALUES (22,'DARSHANA','darshana@yahoo.com','Ex apple employee','F','0002');
INSERT INTO Professor VALUES (33,'MONICA','monica@yahoo.com','Ex amazon employee','F','0003');
INSERT INTO Professor VALUES (44,'SHARMILA','dsa@hotmail.com','Ex apple employee','F','0004');
INSERT INTO Professor VALUES (55,'PUNAM','punam@yahoo.com','Ex google employee','F','0002');
INSERT INTO Professor VALUES (66,'AJOY','AJOY@yahoo.com','HOD','M','0005');
INSERT INTO Professor VALUES (90,'PIUL','piul@yahoo.com','Ex IITB employee','F','0006');
INSERT INTO Professor VALUES (77,'KAMAL','kamal@yahoo.com','Ex Reddsun employee','M','0007');
INSERT INTO Professor VALUES (88,'DARSHAN','darshan@yahoo.com','Ex flipkart employee','M','0008');
INSERT INTO Professor VALUES (99,'DARSH','darsh@gmail.com','Ex HP employee','M','0009');
INSERT INTO Professor VALUES (12,'ANAA','ana@yahoo.com','International Player','F','0010');
INSERT INTO Professor VALUES (21,'ASTHA','asthan@hotmail.com','First Job ','F','0011');
INSERT INTO Professor VALUES (13,'SHANTI','shanti@yahoo.com','Best Teacher Award 2010','F','0012');
INSERT INTO Professor VALUES (31,'DISHA','disha@yahoo.com','PES alumini','F','0013');
INSERT INTO Professor VALUES (131,'ARKA','arka@yahoo.com','Orkut Employee','M','0014');
INSERT INTO Professor VALUES (14,'AYESHA','ayesha@yahoo.com','Best Employee award','F','0015');
INSERT INTO Professor VALUES (41,'STUTI','stuti@yahoo.com','Ex stanford professor','F','0016');
INSERT INTO Professor VALUES (15,'DSHAN','dshan@yahoo.com','Ex ICICI employee','M','0017');
INSERT INTO Professor VALUES (51,'PAWAN','pawan@yahoo.com','Ex WIPRO employee','M','0018');
INSERT INTO Professor VALUES (61,'SHANA','shana@yahoo.com','Ex apple employee','F','0019');
INSERT INTO Professor VALUES (16,'JYOTHI','jyothi@outlook.com','Ex IISC professor','F','0020');


INSERT INTO Courses VALUES ('DBMS', 1, 111,'Data Base','0001',11);
INSERT INTO Courses VALUES ('MPCA', 2, 222,'Computer Architecture','0002',22);
INSERT INTO Courses VALUES ('GMT', 3,333, 'Mass Transfer','0003',33);
INSERT INTO Courses VALUES ('LA', 4,444, 'Linear Algebra','0004',44);
INSERT INTO Courses VALUES ('WT', 5,555, 'Web technology','0005',55);
INSERT INTO Courses VALUES ('TOC', 6,666, 'Theory of computation','0006',66);
INSERT INTO Courses VALUES ('IOT', 7, 777,'Internet of things','0007',77);
INSERT INTO Courses VALUES ('DDCO', 8, 888,'Design of computer','0008',88);
INSERT INTO Courses VALUES ('ST', 1, 999,'Structural','0009',99);
INSERT INTO Courses VALUES ('ET', 2, 121,'Economic','0010',12);
INSERT INTO Courses VALUES ('PHY', 3, 131,'Physics','0011',13);
INSERT INTO Courses VALUES ('DS', 4, 141,'Data structure','0012',21);
INSERT INTO Courses VALUES ('DAA', 5, 151,'Algorithm','0013',31);
INSERT INTO Courses VALUES ('PYT', 6, 161,'Python','0014',14);
INSERT INTO Courses VALUES ('JAV', 7, 171,'Java','0015',15);
INSERT INTO Courses VALUES ('C', 8, 181,'C CLass','0016',41);
INSERT INTO Courses VALUES ('BD', 1, 191,'BIG DATA','0017',51);
INSERT INTO Courses VALUES ('CC', 3, 201,'Cloud Computing','0018',16);
INSERT INTO Courses VALUES ('LP', 5, 221,'Processor','0019',61);
INSERT INTO Courses VALUES ('MTH1', 6, 231,'Mathematics','0020',22);






INSERT INTO Videos VALUES(35,'2020-01-21','13:45:14',11,'VIDEO13',1);
INSERT INTO Videos VALUES(60,'2020-02-22','13:35:14',12,'VIDEO14',2);
INSERT INTO Videos VALUES(65,'2020-05-21','13:45:14',13,'VIDEO15',3);
INSERT INTO Videos VALUES(15,'2020-06-21','23:45:14',14,'VIDEO16',4);
INSERT INTO Videos VALUES(45,'2010-02-21','11:45:14',15,'VIDEO17',5);
INSERT INTO Videos VALUES(75,'2020-09-21','13:45:14',16,'VIDEO18',6);
INSERT INTO Videos VALUES(66,'2020-04-21','13:05:14',22,'VIDEO19',7);
INSERT INTO Videos VALUES(33,'2020-08-11','13:45:14',33,'VIDEO20',8);
INSERT INTO Videos VALUES(45,'2020-04-21','13:45:34',44,'VIDEO1',11);
INSERT INTO Videos VALUES(30,'2020-04-22','13:35:34',55,'VIDEO2',12);
INSERT INTO Videos VALUES(55,'2020-03-21','13:45:24',66,'VIDEO3',13);
INSERT INTO Videos VALUES(25,'2020-07-21','23:45:34',77,'VIDEO4',14);
INSERT INTO Videos VALUES(55,'2010-04-21','11:45:34',88,'VIDEO5',15);
INSERT INTO Videos VALUES(35,'2020-12-21','13:45:34',99,'VIDEO6',16);
INSERT INTO Videos VALUES(16,'2020-11-21','13:05:34',90,'VIDEO7',17);
INSERT INTO Videos VALUES(43,'2020-04-11','13:45:44',31,'VIDEO8',18);
INSERT INTO Videos VALUES(50,'2020-05-21','13:45:34',131,'VIDEO9',19);
INSERT INTO Videos VALUES(25,'2019-04-21','01:45:34',41,'VIDEO10',20);
INSERT INTO Videos VALUES(45,'2020-04-21','13:45:34',51,'VIDEO11',10);
INSERT INTO Videos VALUES(15,'2020-04-29','15:45:34',61,'VIDEO12',9);




INSERT INTO Topic VALUES(1,5,1280,'TOPIC1',11,111);
INSERT INTO Topic VALUES(2,6,2,'TOPIC2',22,222);
INSERT INTO Topic VALUES(3,7,156,'TOPIC3',33,333);
INSERT INTO Topic VALUES(4,5,1290,'TOPIC4',44,444);
INSERT INTO Topic VALUES(5,5,1200,'TOPIC5',55,555);
INSERT INTO Topic VALUES(6,3,1000,'TOPIC6',66,666);
INSERT INTO Topic VALUES(7,6,780,'TOPIC7',77,777);
INSERT INTO Topic VALUES(8,5,190,'TOPIC8',88,888);
INSERT INTO Topic VALUES(9,99,5680,'TOPIC9',99,999);
INSERT INTO Topic VALUES(10,4,120,'TOPIC10',12,121);
INSERT INTO Topic VALUES(11,2,12,'TOPIC11',21,131);






