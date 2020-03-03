set serveroutput on;

DECLARE

BEGIN

        --update empleados set actualizado = sysdate;
        update empleados set actualizado = sysdate where id > 500;
        
        
        dbms_output.put_line('Afectados:' || sql%rowcount); -- sqlsql%rowcount ->cursor implicito  referencia el ultimo query
        
        -- dbms_output.put_line -> no soporta boolean (usar condicional)
        IF(sql%found) THEN
            dbms_output.put_line('Encontro registros');
        ELSE
            dbms_output.put_line('No registros');
        END IF;
END;
/