CREATE TABLE Students (
	sID SMALLINT UNSIGNED NOT NULL,
    sName TEXT,
    GPA FLOAT,
    sizeHS SMALLINT UNSIGNED
);

CREATE TABLE College (
    cName TEXT NOT NULL,
    state CHAR(2),
    enr SMALLINT UNSIGNED
);

CREATE TABLE Apply (
	sID SMALLINT UNSIGNED NOT NULL,
    cName TEXT,
    major CHAR(2),
    decision CHAR(1)
);

INSERT INTO College VALUES
('Stanford','CA', 1000),
('Berkeley','CA', 2500),
('MIT','MA', 8000);

INSERT INTO Students VALUES
(123, 'Amy', 3.7, 1000),
(234, 'Bob', 3.4, 1500),
(673, 'Craig', NULL, 2600),
(774, 'Mike', 3.6, 2000),
(889, 'John', 3.9, 1000),
(557, 'Sarah', 3.8, 700);

INSERT INTO Apply VALUES
(123, 'Stanford', 'CS', 'A'),
(234, 'Stanford', 'EE', 'R'),
(123, 'Berkeley', 'CS', 'A'),
(673, 'MIT', 'CS', 'R'),
(774, 'Standford', 'CS', 'R'),
(889, 'Berkeley', 'EE', 'A'),
(557, 'MIT', 'CS', 'A'),
(557, 'MIT', 'EE', 'R'),
(889, 'Standford', 'EE', 'A'),
(673, 'Standford', 'MA', 'R');