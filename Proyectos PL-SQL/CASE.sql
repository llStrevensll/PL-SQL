set SERVEROUTPUT ON;

DECLARE
    
    ran number := round(dbms_random.value(0,5));
BEGIN

    dbms_output.put_line(ran);
    
    case
        when ran = 0 then
            dbms_output.put_line('Cero');
        when ran = 1 then
            dbms_output.put_line('Uno');
        when ran = 2 then
            dbms_output.put_line('Dos');
        when ran = 3 then
            dbms_output.put_line('Tres');
        when ran = 4 then
            dbms_output.put_line('Cuatro');
        else
            dbms_output.put_line('Cinco');
    END CASE;
END;
/