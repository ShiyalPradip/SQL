CREATE TABLE BOOKS
(
    BID NUMBER(3) NOT NULL,
    BNAME VARCHAR(23),
    BPRICE NUMBER(7,3)
);

INSERT INTO BOOKS(BID,BNAME)VALUES(1,'C Language');
INSERT INTO BOOKS(BID,BNAME,BPRICE)VALUES(1,'Python',750);