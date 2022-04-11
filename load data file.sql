-- Table: Parent
LOAD DATA LOCAL INFILE 'D:/CS509/Parent.csv'
INTO TABLE Parent
FIELDS TERMINATED BY','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ParentID,ParentName,DateOfBirth,PhoneNumber);

-- Table: Student

LOAD DATA LOCAL INFILE 'D:/CS509/Student.csv'
INTO TABLE Student
FIELDS TERMINATED BY','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(StudentID,StudentName,DateOfBirth,IsFeePaid,ParentID);

-- Table: Event

LOAD DATA LOCAL INFILE 'D:/CS509/Event.csv'
INTO TABLE Event
FIELDS TERMINATED BY','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(EventID,HeldYear,StudentID);

-- Table: Transportation
LOAD DATA LOCAL INFILE 'D:/CS509/Transportation.csv'
INTO TABLE Transportation
FIELDS TERMINATED BY','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(TransportationID,FeesDetails,StudentID);

-- Table: Subject

LOAD DATA LOCAL INFILE 'D:/CS509/Subject.csv'
INTO TABLE Subject
FIELDS TERMINATED BY','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(SubjectID,SubjectName,MarkSheet);

-- Table: StudentSubject

LOAD DATA LOCAL INFILE 'D:/CS509/StudentSubject.csv'
INTO TABLE StudentSubject
FIELDS TERMINATED BY','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(StudentID,SubjectID);


