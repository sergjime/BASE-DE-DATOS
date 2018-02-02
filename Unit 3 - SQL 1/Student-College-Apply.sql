CREATE TABLE College
(cName varchar(255),
state char(2),
enrolment int,
PRIMARY KEY (cName)
);

CREATE TABLE Student
(sID int,
sName varchar(255),
GPA float,
sizeHS int,
PRIMARY KEY (sID)
);

CREATE TABLE Apply
(sID int,
cName varchar(255),
major varchar(255),
decision char(1),
CONSTRAINT PK_Apply PRIMARY KEY (sID,cName,major),
FOREIGN KEY (sID) REFERENCES Student(sID),
FOREIGN KEY (cName) REFERENCES College(cName)
);

INSERT INTO College VALUES ('Borja Moll', 'PM', 1600);
INSERT INTO College VALUES ('Pau Casesnoves', 'IN', 1200);
INSERT INTO College VALUES ('Ses Estacions', 'PM', 900);
insert into College values ('Stanford', 'CA', 15000);
insert into College values ('Berkeley', 'CA', 36000);
insert into College values ('MIT', 'MA', 10000);
insert into College values ('Cornell', 'NY', 21000);

INSERT INTO Student VALUES (555, 'Raphael', 3.2, 900);
INSERT INTO Student VALUES (321, 'Anabel', 3.4, 1100);
insert into Student values (123, 'Amy', 3.9, 1000);
insert into Student values (234, 'Bob', 3.6, 1500);
insert into Student values (345, 'Craig', 3.5, 500);
insert into Student values (456, 'Doris', 3.9, 1000);
insert into Student values (567, 'Edward', 2.9, 2000);
insert into Student values (678, 'Fay', 3.8, 200);
insert into Student values (789, 'Gary', 3.4, 800);
insert into Student values (987, 'Helen', 3.7, 800);
insert into Student values (876, 'Irene', 3.9, 400);
insert into Student values (765, 'Jay', 2.9, 1500);
insert into Student values (654, 'Amy', 3.9, 1000);
insert into Student values (543, 'Craig', 3.4, 2000);

INSERT INTO Apply VALUES (543, 'Borja Moll', 'CS', 'Y');
INSERT INTO Apply VALUES (321, 'Borja Moll', 'CS', 'N');
INSERT INTO Apply VALUES (555, 'Borja Moll', 'EE', 'N');
INSERT INTO Apply VALUES (789, 'Borja Moll', 'EE', 'Y');
INSERT INTO Apply VALUES (234, 'Borja Moll', 'CS', 'Y');
INSERT INTO Apply VALUES (345, 'Borja Moll', 'CS', 'Y');
INSERT INTO Apply VALUES (555, 'Pau Casesnoves', 'EE', 'N');
INSERT INTO Apply VALUES (789, 'Pau Casesnoves', 'AD', 'Y');
INSERT INTO Apply VALUES (678, 'Ses Estacions', 'AD', 'Y');
INSERT INTO Apply VALUES (987, 'Ses Estacions', 'marine biology', 'N');