set SERVEROUTPUT on;

DECLARE
    a number := 15;
    b number := 10;
    c number;
BEGIN

    menor_entre(a,b,c);
    dbms_output.put_line('El menor es:' || c);
END;
/