SET SERVEROUTPUT ON

DECLARE
	P NUMBER(3);
	R NUMBER(3);
	N NUMBER(6);
	SI NUMBER(6);
BEGIN
	P := &P;
	R := &R;
	N := &N;

	SI := (P * R * N) / 100;

	DBMS_OUTPUT.PUT_LINE('SIMPLE INTRAST IS : ' || SI);
END;
/