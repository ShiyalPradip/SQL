SET SERVEROUTPUT ON

DECLARE 
	NUM1 NUMBER(3);
	NUM2 NUMBER(3);
BEGIN
	NUM1 := &NUM1;
	NUM2 := &NUM2;

	IF NUM1 > NUM2 THEN
		DBMS_OUTPUT.PUT_LINE('MAX  NUM IS ' || NUM1);
	ELSE
		DBMS_OUTPUT.PUT_LINE('MAX NUM IS ' || NUM2);
	END IF;
END;
/