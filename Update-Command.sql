CREATE TABLE STUDENT21
(
    STUDID NUMBER(3),
    STUDNAME VARCHAR(20),
    STUDROLLNO NUMBER(3),
    STUDEMAIL VARCHAR(40)
);

INSERT INTO STUDENT21 VALUES(1,'Rajesh',12,'JoliyaRajesh@gmail.com');
INSERT INTO STUDENT21 VALUES(2,'Kishan',31,'SarviyaKishan@gmail.com');
INSERT INTO STUDENT21 VALUES(3,'Ramesh',22,'joliyaRamesh@gmail.com');
INSERT INTO STUDENT21 VALUES(4,'Manan',52,'Donashiya12@gmail.com');
INSERT INTO STUDENT21 VALUES(5,'Raj',12,'MrRaj@gmail.com');

UPDATE STUDENT21 SET STUDNAME='Mahesh' WHERE STUDID=1;

UPDATE STUDENT21 SET STUDROLLNO=24 WHERE STUDID=3;

CREATE TABLE STUDENT16
(
    SID NUMBER(3),
    SNAME VARCHAR(23),
    SCITY VARCHAR(23),
    SCOUNTRY VARCHAR(20),
    SGENDER VARCHAR(7),
    SPHONENO NUMBER(10),
    SCOURSE VARCHAR(20),
    SEMAIL VARCHAR(45),
    SROLLNO NUMBER(3),
    SMARKS NUMBER(5),
    SGRADE VARCHAR(2)
);