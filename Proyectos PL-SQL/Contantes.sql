set SERVEROUTPUT ON;

DECLARE
    --Contantes
    PI CONSTANT number := 3.1415559;
    --Variables
    area number;
    radio number;
BEGIN
    
    radio := 7;
    
    area := PI * (radio * radio);
    
    dbms_output.put_line('Area: '|| round(area, 2) || 'cm2');
    dbms_output.put_line('Area: '|| round(area) || 'cm2');
    dbms_output.put_line('Area: '|| round(area, 4) || 'cm2');
END;
/