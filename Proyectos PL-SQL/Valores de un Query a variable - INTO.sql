SET SERVEROUTPUT ON;

DECLARE
    cantidad number;
    usuario nvarchar2(100);
BEGIN
    /*
    select user into usuario from dual;
    DBMS_OUTPUT.put_line('Usuario:' || usuario);
    
    select count(*) into cantidad from dual;
    DBMS_OUTPUT.put_line('Cantidad:' || cantidad);
    */
    
    select user, count(*) into usuario, cantidad from dual;
    DBMS_OUTPUT.put_line('Usuario:' || usuario);
    DBMS_OUTPUT.put_line('Cantidad:' || cantidad);
    
    
END;
/