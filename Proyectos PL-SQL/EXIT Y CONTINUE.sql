SET SERVEROUTPUT ON;

DECLARE

BEGIN
    << ciclo_tabla_2>>
    FOR i in 1..10 LOOP
        IF(i = 5) then
            continue;
        END IF;
        
        IF(i = 7) then
            exit;
        END IF;
        
        -- Solo pares
        if(MOD(i,2) <> 0) then
            continue;
        end if;
        -- dbms_output.put_line(i || '* 2 = ' || (i*2)); -- 1* 2 = "
        dbms_output.put(i);
        dbms_output.put('* 2 =');
        dbms_output.put_line(i * 2);
        
    END LOOP ciclo_tabla_2;

END;
/