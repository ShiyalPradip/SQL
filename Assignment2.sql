CREATE TABLE ACMASTER -- Parent Table
(
    ACNO NUMBER(3) CONSTRAINT PY_KEY PRIMARY KEY,
    NAME VARCHAR2(10),
    ADATE DATE,
    BAL NUMBER(9,2)
);

CREATE TABLE ACTRAN -- Child Table
(
    TNO NUMBER(3),
    TDATE DATE,
    AMOUNT NUMBER(7,2),
    TYPE CHAR(1),
    ACNO NUMBER(3) CONSTRAINT FG_KEY REFERENCES ACMASTER
);

-- Insert 10 records in ACMASTER table
    INSERT INTO ACMASTER VALUES(101,'Ashok','1-APR-1997',5000);
    INSERT INTO ACMASTER VALUES(102,'Nilesh','2-JUN-1998',1000);
    INSERT INTO ACMASTER VALUES(103,'RITESH','4-JUL-1998',2060);
    INSERT INTO ACMASTER VALUES(104,'MUKESH','20-DEC-1998',5000);
    INSERT INTO ACMASTER VALUES(105,'JAYESH','25-DEC-1998 ',60000);
    INSERT INTO ACMASTER VALUES(106,'RAJESH','26-JAN-1999',2400);
    INSERT INTO ACMASTER VALUES(107,'KUNAL','21-JAN-1999',1500);
    INSERT INTO ACMASTER VALUES(108,'DEVANG','20-JAN-1999',1999);
    INSERT INTO ACMASTER VALUES(109,'ABHAY','26-FEB-1999',2050);
    INSERT INTO ACMASTER VALUES(110,'KAPIL','25-MAR-1999',1000);

-- Geting Data From The Parent Table
    SELECT * FROM ACMASTER;

-- View The Parent Table Structure
    DESCRIBE  ACMASTER;

-- Geting Data Into The Child Table 
    SELECT * FROM ACTRAN;

-- View The Child Table Structure
    DESCRIBE ACTRAN;

-- Drop Child Table
    DROP TABLE ACTRAN;

-- Drop Parent Table
    DROP TABLE ACMASTER;

-- Insert 10 records in ACTRAN table
    INSERT INTO ACTRAN VALUES(1,'1-APR-2000',500,'W',101,'SCOTT');
    INSERT INTO ACTRAN VALUES(2,'2-JUN-2000',1000,'D',101,'SCOTT');
    INSERT INTO ACTRAN VALUES(3,'4-JUL-2000 ',500,'W',102,'SCOTT');
    INSERT INTO ACTRAN VALUES(4,'20-DEC-2000',6000,'D',103,'SCOTT');
    INSERT INTO ACTRAN VALUES(5,'25-DEC-2001 ',200,'D',105,'SCOTT');
    INSERT INTO ACTRAN VALUES(6,'26-JAN-2001 ',1500,'D',106,'SCOTT');
    INSERT INTO ACTRAN VALUES(7,'21-JAN-2001',3000,'D',105,'SCOTT');
    INSERT INTO ACTRAN VALUES(8,'20-JAN-2002',5000,'D',102,'SCOTT');
    INSERT INTO ACTRAN VALUES(9,'26-FEB-2002',50000,'D',101,'SCOTT');
    INSERT INTO ACTRAN VALUES(10,'25-MAR-2003',4500,'D',109,'SCOTT');

-- (1) Modify Balance Of All Rows Of ACMASTER By Adding 100 Rupees In Their Current Balance
    UPDATE ACMASTER SET BAL = BAL + 100;

-- (2) Delete The Row From ACTRAN Table Having Transaction No 1.
    DELETE FROM ACTRAN WHERE TNO=1;

-- (3) Replace The Name MUKESH With ROGER Having Account Number 104
    -- UPDATE ACMASTER SET NAME='ROGER' WHERE ACNO=104;
    UPDATE ACMASTER SET NAME1='ROGER' WHERE ACNO=104;

-- (4) Delete Account Having Account No 110
    DELETE FROM ACMASTER WHERE ACNO=110;

-- (5) Display All Account Holders’ Name Those Who Have Opened Account Before Year 1999
    -- SELECT NAME FROM ACMASTER WHERE ADATE <= '1-JAN-1999';
    SELECT NAME1 FROM ACMASTER WHERE ADATE < '1-JAN-1999';

-- (6) List All Transactions Of Account Number 101
    SELECT * FROM ACTRAN WHERE ACNO=101;

-- (7) List All Account Holders Detail Having Balance Greater Than 2000
    SELECT * FROM ACMASTER WHERE BAL > 2000;

-- (8) Update Transaction Type And Amount With D And 5000 Having Transition No 3
    UPDATE ACTRAN SET TYPE='D',AMOUNT=5000 WHERE TNO=3;
    
-- (9) Display All Rows Of ACTRAN
    SELECT * FROM ACTRAN;

-- (10) Add Column CITY In ACMASTER
    ALTER TABLE ACMASTER ADD CITY VARCHAR(20);

-- (11) Add City Name In Following Order
--      [A] 101 MAHUVA
            UPDATE ACMASTER SET CITY='MAHUVA' WHERE ACNO=101;

--      [B] 102 BHAVNAGAR
            UPDATE ACMASTER SET CITY='BHAVNAGAR' WHERE ACNO=102; 

--      [C] 103 RAJKOT
            UPDATE ACMASTER SET CITY='RAJKOT' WHERE ACNO=103; 

--      [D] 104 JUNAGADH
            UPDATE ACMASTER SET CITY='JUNAGADH' WHERE ACNO=104; 

--      [E] 105 To 109 KATPAR
            UPDATE ACMASTER SET CITY='KATPAR' WHERE ACNO>=105 AND ACNO<=109; 

-- (12) Change Date To ‘1-APR-2002’ Of Transaction No 9
    UPDATE ACTRAN SET TDATE='1-APR-2002' WHERE TNO=9;