set SERVEROUTPUT ON;

DECLARE

    numero number :=4; --4*3*2*1
    factorial number;
BEGIN

    factorial := numero;  
    
    <<while_factorial>>
    WHILE numero > 1 LOOP
    
        numero := numero - 1;
        factorial := factorial * numero;
    
    END LOOP while_factorial;
    
    DBMS_OUTPUT.PUT_LINE(factorial);

END;
/