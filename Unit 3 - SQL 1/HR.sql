DROP SCHEMA IF EXISTS HR;
CREATE SCHEMA HR;
USE HR;

DROP TABLE IF EXISTS departments;
CREATE TABLE departments(
   department_id   INTEGER  NOT NULL PRIMARY KEY 
  ,department_name VARCHAR(20) NOT NULL
  ,manager_id      INTEGER  NOT NULL
  ,location_id     INTEGER  NOT NULL
);

DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
   employee_id    INTEGER  NOT NULL PRIMARY KEY 
  ,first_name     VARCHAR(11) NOT NULL
  ,last_name      VARCHAR(11) NOT NULL
  ,email          VARCHAR(8) NOT NULL
  ,phone_number   VARCHAR(18) NOT NULL
  ,hire_date      DATE  NOT NULL
  ,job_id         VARCHAR(10) NOT NULL
  ,salary         NUMERIC(8,2) NOT NULL
  ,commission_pct NUMERIC(4,2) NOT NULL
  ,manager_id     INTEGER  NOT NULL
  ,department_id  INTEGER  NOT NULL
);

DROP TABLE IF EXISTS locations;
CREATE TABLE locations(
   location_id    INTEGER  NOT NULL PRIMARY KEY 
  ,street_address VARCHAR(425) NOT NULL
  ,postal_code    VARCHAR(10)
  ,city           VARCHAR(19)
  ,state_province VARCHAR(16)
  ,country_id     VARCHAR(2)
);



INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (10,'Administration',200,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (20,'Marketing',201,1800);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (30,'Purchasing',114,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (40,'Human Resources',203,2400);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (50,'Shipping',121,1500);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (60,'IT',103,1400);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (70,'Public Relations',204,2700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (80,'Sales',145,2500);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (90,'Executive',100,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (100,'Finance',108,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (110,'Accounting',205,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (120,'Treasury',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (130,'Corporate Tax',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (140,'Control And Credit',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (150,'Shareholder Services',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (160,'Benefits',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (170,'Manufacturing',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (180,'Construction',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (190,'Contracting',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (200,'Operations',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (210,'IT Support',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (220,'NOC',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (230,'IT Helpdesk',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (240,'Government Sales',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (250,'Retail Sales',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (260,'Recruiting',0,1700);
INSERT INTO departments(department_id,department_name,manager_id,location_id) VALUES (270,'Payroll',0,1700);

INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (100,'Steven','King','SKING','515.123.4567','2003-06-17','AD_PRES',24000.00,0.00,0,90);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (101,'Neena','Kochhar','NKOCHHAR','515.123.4568','2005-09-21','AD_VP',17000.00,0.00,100,90);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (102,'Lex','De Haan','LDEHAAN','515.123.4569','2001-01-13','AD_VP',17000.00,0.00,100,90);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (103,'Alexander','Hunold','AHUNOLD','590.423.4567','2006-01-03','IT_PROG',9000.00,0.00,102,60);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (104,'Bruce','Ernst','BERNST','590.423.4568','2007-05-21','IT_PROG',6000.00,0.00,103,60);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (105,'David','Austin','DAUSTIN','590.423.4569','2005-06-25','IT_PROG',4800.00,0.00,103,60);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (106,'Valli','Pataballa','VPATABAL','590.423.4560','2006-02-05','IT_PROG',4800.00,0.00,103,60);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (107,'Diana','Lorentz','DLORENTZ','590.423.5567','2007-02-07','IT_PROG',4200.00,0.00,103,60);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (108,'Nancy','Greenberg','NGREENBE','515.124.4569','2002-08-17','FI_MGR',12000.00,0.00,101,100);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (109,'Daniel','Faviet','DFAVIET','515.124.4169','2002-08-16','FI_ACCOUNT',9000.00,0.00,108,100);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (110,'John','Chen','JCHEN','515.124.4269','2005-09-28','FI_ACCOUNT',8200.00,0.00,108,100);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (111,'Ismael','Sciarra','ISCIARRA','515.124.4369','2005-09-30','FI_ACCOUNT',7700.00,0.00,108,100);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (112,'Jose Manuel','Urman','JMURMAN','515.124.4469','2006-03-07','FI_ACCOUNT',7800.00,0.00,108,100);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (113,'Luis','Popp','LPOPP','515.124.4567','2007-12-07','FI_ACCOUNT',6900.00,0.00,108,100);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (114,'Den','Raphaely','DRAPHEAL','515.127.4561','2002-12-07','PU_MAN',11000.00,0.00,100,30);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (115,'Alexander','Khoo','AKHOO','515.127.4562','2003-05-18','PU_CLERK',3100.00,0.00,114,30);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (116,'Shelli','Baida','SBAIDA','515.127.4563','2005-12-24','PU_CLERK',2900.00,0.00,114,30);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (117,'Sigal','Tobias','STOBIAS','515.127.4564','2005-07-24','PU_CLERK',2800.00,0.00,114,30);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (118,'Guy','Himuro','GHIMURO','515.127.4565','2006-11-15','PU_CLERK',2600.00,0.00,114,30);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (119,'Karen','Colmenares','KCOLMENA','515.127.4566','2007-08-10','PU_CLERK',2500.00,0.00,114,30);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (120,'Matthew','Weiss','MWEISS','650.123.1234','2004-07-18','ST_MAN',8000.00,0.00,100,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (121,'Adam','Fripp','AFRIPP','650.123.2234','2005-04-10','ST_MAN',8200.00,0.00,100,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (122,'Payam','Kaufling','PKAUFLIN','650.123.3234','2003-05-01','ST_MAN',7900.00,0.00,100,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (123,'Shanta','Vollman','SVOLLMAN','650.123.4234','2005-10-10','ST_MAN',6500.00,0.00,100,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (124,'Kevin','Mourgos','KMOURGOS','650.123.5234','2007-11-16','ST_MAN',5800.00,0.00,100,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (125,'Julia','Nayer','JNAYER','650.124.1214','2005-07-16','ST_CLERK',3200.00,0.00,120,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (126,'Irene','Mikkilineni','IMIKKILI','650.124.1224','2006-09-28','ST_CLERK',2700.00,0.00,120,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (127,'James','Landry','JLANDRY','650.124.1334','2007-01-14','ST_CLERK',2400.00,0.00,120,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (128,'Steven','Markle','SMARKLE','650.124.1434','2008-03-08','ST_CLERK',2200.00,0.00,120,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (129,'Laura','Bissot','LBISSOT','650.124.5234','2005-08-20','ST_CLERK',3300.00,0.00,121,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (130,'Mozhe','Atkinson','MATKINSO','650.124.6234','2005-10-30','ST_CLERK',2800.00,0.00,121,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (131,'James','Marlow','JAMRLOW','650.124.7234','2005-02-16','ST_CLERK',2500.00,0.00,121,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (132,'TJ','Olson','TJOLSON','650.124.8234','2007-04-10','ST_CLERK',2100.00,0.00,121,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (133,'Jason','Mallin','JMALLIN','650.127.1934','2004-06-14','ST_CLERK',3300.00,0.00,122,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (134,'Michael','Rogers','MROGERS','650.127.1834','2006-08-26','ST_CLERK',2900.00,0.00,122,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (135,'Ki','Gee','KGEE','650.127.1734','2007-12-12','ST_CLERK',2400.00,0.00,122,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (136,'Hazel','Philtanker','HPHILTAN','650.127.1634','2008-02-06','ST_CLERK',2200.00,0.00,122,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (137,'Renske','Ladwig','RLADWIG','650.121.1234','2003-07-14','ST_CLERK',3600.00,0.00,123,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (138,'Stephen','Stiles','SSTILES','650.121.2034','2005-10-26','ST_CLERK',3200.00,0.00,123,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (139,'John','Seo','JSEO','650.121.2019','2006-02-12','ST_CLERK',2700.00,0.00,123,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (140,'Joshua','Patel','JPATEL','650.121.1834','2006-04-06','ST_CLERK',2500.00,0.00,123,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (141,'Trenna','Rajs','TRAJS','650.121.8009','2003-10-17','ST_CLERK',3500.00,0.00,124,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (142,'Curtis','Davies','CDAVIES','650.121.2994','2005-01-29','ST_CLERK',3100.00,0.00,124,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (143,'Randall','Matos','RMATOS','650.121.2874','2006-03-15','ST_CLERK',2600.00,0.00,124,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (144,'Peter','Vargas','PVARGAS','650.121.2004','2006-07-09','ST_CLERK',2500.00,0.00,124,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (145,'John','Russell','JRUSSEL','011.44.1344.429268','2004-10-01','SA_MAN',14000.00,0.40,100,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (146,'Karen','Partners','KPARTNER','011.44.1344.467268','2005-01-05','SA_MAN',13500.00,0.30,100,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','2005-03-10','SA_MAN',12000.00,0.30,100,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268','2007-10-15','SA_MAN',11000.00,0.30,100,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','2008-01-29','SA_MAN',10500.00,0.20,100,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (150,'Peter','Tucker','PTUCKER','011.44.1344.129268','2005-01-30','SA_REP',10000.00,0.30,145,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (151,'David','Bernstein','DBERNSTE','011.44.1344.345268','2005-03-24','SA_REP',9500.00,0.25,145,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (152,'Peter','Hall','PHALL','011.44.1344.478968','2005-08-20','SA_REP',9000.00,0.25,145,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (153,'Christopher','Olsen','COLSEN','011.44.1344.498718','2006-03-30','SA_REP',8000.00,0.20,145,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668','2006-12-09','SA_REP',7500.00,0.20,145,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','2007-11-23','SA_REP',7000.00,0.15,145,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (156,'Janette','King','JKING','011.44.1345.429268','2004-01-30','SA_REP',10000.00,0.35,146,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (157,'Patrick','Sully','PSULLY','011.44.1345.929268','2004-03-04','SA_REP',9500.00,0.35,146,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (158,'Allan','McEwen','AMCEWEN','011.44.1345.829268','2004-08-01','SA_REP',9000.00,0.35,146,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (159,'Lindsey','Smith','LSMITH','011.44.1345.729268','2005-03-10','SA_REP',8000.00,0.30,146,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (160,'Louise','Doran','LDORAN','011.44.1345.629268','2005-12-15','SA_REP',7500.00,0.30,146,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (161,'Sarath','Sewall','SSEWALL','011.44.1345.529268','2006-11-03','SA_REP',7000.00,0.25,146,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (162,'Clara','Vishney','CVISHNEY','011.44.1346.129268','2005-11-11','SA_REP',10500.00,0.25,147,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (163,'Danielle','Greene','DGREENE','011.44.1346.229268','2007-03-19','SA_REP',9500.00,0.15,147,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (164,'Mattea','Marvins','MMARVINS','011.44.1346.329268','2008-01-24','SA_REP',7200.00,0.10,147,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (165,'David','Lee','DLEE','011.44.1346.529268','2008-02-23','SA_REP',6800.00,0.10,147,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (166,'Sundar','Ande','SANDE','011.44.1346.629268','2008-03-24','SA_REP',6400.00,0.10,147,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (167,'Amit','Banda','ABANDA','011.44.1346.729268','2008-04-21','SA_REP',6200.00,0.10,147,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (168,'Lisa','Ozer','LOZER','011.44.1343.929268','2005-03-11','SA_REP',11500.00,0.25,148,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (169,'Harrison','Bloom','HBLOOM','011.44.1343.829268','2006-03-23','SA_REP',10000.00,0.20,148,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (170,'Tayler','Fox','TFOX','011.44.1343.729268','2006-01-24','SA_REP',9600.00,0.20,148,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (171,'William','Smith','WSMITH','011.44.1343.629268','2007-02-23','SA_REP',7400.00,0.15,148,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (172,'Elizabeth','Bates','EBATES','011.44.1343.529268','2007-03-24','SA_REP',7300.00,0.15,148,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (173,'Sundita','Kumar','SKUMAR','011.44.1343.329268','2008-04-21','SA_REP',6100.00,0.10,148,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (174,'Ellen','Abel','EABEL','011.44.1644.429267','2004-05-11','SA_REP',11000.00,0.30,149,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (175,'Alyssa','Hutton','AHUTTON','011.44.1644.429266','2005-03-19','SA_REP',8800.00,0.25,149,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','2006-03-24','SA_REP',8600.00,0.20,149,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (177,'Jack','Livingston','JLIVINGS','011.44.1644.429264','2006-04-23','SA_REP',8400.00,0.20,149,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (178,'Kimberely','Grant','KGRANT','011.44.1644.429263','2007-05-24','SA_REP',7000.00,0.15,149,0);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (179,'Charles','Johnson','CJOHNSON','011.44.1644.429262','2008-01-04','SA_REP',6200.00,0.10,149,80);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (180,'Winston','Taylor','WTAYLOR','650.507.9876','2006-01-24','SH_CLERK',3200.00,0.00,120,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (181,'Jean','Fleaur','JFLEAUR','650.507.9877','2006-02-23','SH_CLERK',3100.00,0.00,120,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (182,'Martha','Sullivan','MSULLIVA','650.507.9878','2007-06-21','SH_CLERK',2500.00,0.00,120,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (183,'Girard','Geoni','GGEONI','650.507.9879','2008-02-03','SH_CLERK',2800.00,0.00,120,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (184,'Nandita','Sarchand','NSARCHAN','650.509.1876','2004-01-27','SH_CLERK',4200.00,0.00,121,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (185,'Alexis','Bull','ABULL','650.509.2876','2005-02-20','SH_CLERK',4100.00,0.00,121,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (186,'Julia','Dellinger','JDELLING','650.509.3876','2006-06-24','SH_CLERK',3400.00,0.00,121,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (187,'Anthony','Cabrio','ACABRIO','650.509.4876','2007-02-07','SH_CLERK',3000.00,0.00,121,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (188,'Kelly','Chung','KCHUNG','650.505.1876','2005-06-14','SH_CLERK',3800.00,0.00,122,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (189,'Jennifer','Dilly','JDILLY','650.505.2876','2005-08-13','SH_CLERK',3600.00,0.00,122,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (190,'Timothy','Gates','TGATES','650.505.3876','2006-07-11','SH_CLERK',2900.00,0.00,122,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (191,'Randall','Perkins','RPERKINS','650.505.4876','2007-12-19','SH_CLERK',2500.00,0.00,122,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (192,'Sarah','Bell','SBELL','650.501.1876','2004-02-04','SH_CLERK',4000.00,0.00,123,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (193,'Britney','Everett','BEVERETT','650.501.2876','2005-03-03','SH_CLERK',3900.00,0.00,123,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (194,'Samuel','McCain','SMCCAIN','650.501.3876','2006-07-01','SH_CLERK',3200.00,0.00,123,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (195,'Vance','Jones','VJONES','650.501.4876','2007-03-17','SH_CLERK',2800.00,0.00,123,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (196,'Alana','Walsh','AWALSH','650.507.9811','2006-04-24','SH_CLERK',3100.00,0.00,124,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (197,'Kevin','Feeney','KFEENEY','650.507.9822','2006-05-23','SH_CLERK',3000.00,0.00,124,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (198,'Donald','OConnell','DOCONNEL','650.507.9833','2007-06-21','SH_CLERK',2600.00,0.00,124,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (199,'Douglas','Grant','DGRANT','650.507.9844','2008-01-13','SH_CLERK',2600.00,0.00,124,50);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (200,'Jennifer','Whalen','JWHALEN','515.123.4444','2003-09-17','AD_ASST',4400.00,0.00,101,10);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (201,'Michael','Hartstein','MHARTSTE','515.123.5555','2004-02-17','MK_MAN',13000.00,0.00,100,20);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (202,'Pat','Fay','PFAY','603.123.6666','2005-08-17','MK_REP',6000.00,0.00,201,20);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (203,'Susan','Mavris','SMAVRIS','515.123.7777','2002-06-07','HR_REP',6500.00,0.00,101,40);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (204,'Hermann','Baer','HBAER','515.123.8888','2002-06-07','PR_REP',10000.00,0.00,101,70);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (205,'Shelley','Higgins','SHIGGINS','515.123.8080','2002-06-07','AC_MGR',12000.00,0.00,101,110);
INSERT INTO employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES (206,'William','Gietz','WGIETZ','515.123.8181','2002-06-07','AC_ACCOUNT',8300.00,0.00,205,110);



INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1000,'1297 Via Cola di Rie','989','Roma',NULL,'IT');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1100,'93091 Calle della Testa','10934','Venice',NULL,'IT');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1300,'9450 Kamiya-cho','6823','Hiroshima',NULL,'JP');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1700,'2004 Charade Rd','98199','Seattle','Washington','US');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2000,'40-5-12 Laogianggen','190518','Beijing',NULL,'CN');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2300,'198 Clementi North','540198','Singapore',NULL,'SG');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2400,'8204 Arthur St',NULL,'London',NULL,'UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2500,'Magdalen Centre','The Oxford','OX9 9ZB','Oxford','Ox');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2600,'9702 Chester Road','9629850293','Stretford','Manchester','UK');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2800,'Rua Frei Caneca 1360','01307-002','Sao Paulo','Sao Paulo','BR');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (2900,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (3000,'Murtenstrasse 921','3095','Bern','BE','CH');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (3100,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL');
INSERT INTO locations(location_id,street_address,postal_code,city,state_province,country_id) VALUES (3200,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal','MX');
