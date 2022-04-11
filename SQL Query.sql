
--INSERT

INSERT INTO parent VALUES(4,'Jhon','1978-05-06','987678978');
INSERT INTO StudentSubject VALUES(2,3);

--UPDATE

UPDATE parent
SET PhoneNumber = '894348848'
WHERE ParentID='4';

UPDATE Subject
SET Marksheet = 'B Grade'
WHERE SubjectID='3';


--DELETE

DELETE FROM parent WHERE ParentID='3';

--SELECT

SELECT * FROM Student;


--JOIN

SELECT S.StudentName,T.FeesDetails FROM Student S JOIN Transportation T
ON S.StudentID=T.StudentID;

SELECT P.PhoneNumber,P.ParentName,S.StudentName,S.IsFeePaid FROM Student S JOIN Parent P
ON S.ParentID=P.ParentID;


--SUMMARY STATEMENT

SELECT COUNT(S.StudentID) as 'N',SUB.SubjectID FROM Student S JOIN StudentSubject SUB
ON S.StudentID=SUB.StudentID GROUP BY SUB.StudentID

SELECT StudentID,SUM(FeesDetails) FROM Transportation GROUP BY StudentID

SELECT S.StudentName,S.IsFeePaid,AVG(T.FeesDetails) FROM Student S JOIN Transportation T
ON S.StudentID=T.StudentID GROUP BY S.StudentName,S.IsFeePaid


--MULTI TABLE QUERY

SELECT S.StudentName,SUB.SubjectName,T.FeesDetails
FROM Student S JOIN Transportation T JOIN Subject SUB JOIN StudentSubject SS
ON S.StudentID=T.StudentID AND S.StudentID=SS.StudentID AND SUB.SubjectID=SS.SubjectID
GROUP BY S.StudentName,SUB.SubjectName;