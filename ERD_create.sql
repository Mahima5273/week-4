-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-10 05:57:39.418

-- tables
-- Table: Event
CREATE TABLE Event (
    EventID int  NOT NULL,
    HeldYear int  NOT NULL,
    StudentID int  NOT NULL,
    CONSTRAINT Event_pk PRIMARY KEY (EventID)
);

-- Table: Parent
CREATE TABLE Parent (
    ParentID int  NOT NULL,
    ParentName varchar(30)  NOT NULL,
    DateOfBirth date  NOT NULL,
    PhoneNumber int  NOT NULL,
    CONSTRAINT Parent_pk PRIMARY KEY (ParentID)
);

-- Table: Student
CREATE TABLE Student (
    StudentID int  NOT NULL,
    StudentName varchar(30)  NOT NULL,
    DateOfBirth date  NOT NULL,
    IsFeePaid varchar(10)  NOT NULL,
    ParentID int  NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY (StudentID)
);

-- Table: StudentSubject
CREATE TABLE StudentSubject (
    StudentID int  NOT NULL,
    SubjectID int  NOT NULL
);

-- Table: Subject
CREATE TABLE Subject (
    SubjectID int  NOT NULL,
    SubjectName varchar(40)  NOT NULL,
    Marksheet varchar(40)  NOT NULL,
    CONSTRAINT Subject_pk PRIMARY KEY (SubjectID)
);

-- Table: Transportation
CREATE TABLE Transportation (
    TransportationID int  NOT NULL,
    FeesDetails int  NOT NULL,
    StudentID int  NOT NULL,
    CONSTRAINT Transportation_pk PRIMARY KEY (TransportationID)
);

-- foreign keys
-- Reference: Event_Student (table: Event)
ALTER TABLE Event ADD CONSTRAINT Event_Student
    FOREIGN KEY (StudentID)
    REFERENCES Student (StudentID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: StudentSubject_Student (table: StudentSubject)
ALTER TABLE StudentSubject ADD CONSTRAINT StudentSubject_Student
    FOREIGN KEY (StudentID)
    REFERENCES Student (StudentID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: StudentSubject_Subject (table: StudentSubject)
ALTER TABLE StudentSubject ADD CONSTRAINT StudentSubject_Subject
    FOREIGN KEY (SubjectID)
    REFERENCES Subject (SubjectID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Student_Parent (table: Student)
ALTER TABLE Student ADD CONSTRAINT Student_Parent
    FOREIGN KEY (ParentID)
    REFERENCES Parent (ParentID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Transportation_Student (table: Transportation)
ALTER TABLE Transportation ADD CONSTRAINT Transportation_Student
    FOREIGN KEY (StudentID)
    REFERENCES Student (StudentID)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

