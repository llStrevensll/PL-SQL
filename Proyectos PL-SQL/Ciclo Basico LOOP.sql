SET SERVEROUTPUT ON;

DECLARE

    x number := 10;
BEGIN
    LOOP
        dbms_output.put_line(x);
        x := x + 10;
        
        if(x > 120) then
            exit;
        end if;
        
    END LOOP;
    
END;
/