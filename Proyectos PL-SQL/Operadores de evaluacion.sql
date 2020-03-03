set SERVEROUTPUT ON;


DECLARE
    
    Numero1 number := 5;
    Numero2 number := 10;
    
    nombre1 nvarchar2(100) := 'Angel';
    nombre2 nvarchar2(100);

BEGIN
    IF(Numero1 <> Numero2) THEN
        dbms_output.put_line('Numero2 es diferente a Numero1');
    END IF;
    
    IF (nombre1 like 'A%') THEN
        dbms_output.put_line('El nombre inicia con An');
    END IF;
    
    IF (nombre1 like '%ge%') THEN
        dbms_output.put_line('El nombre contiene ge');
    END IF;
    
    IF (nombre1 like '%el') THEN
        dbms_output.put_line('El nombre termina en el');
    END IF;
    
    IF (Numero1 between 0 and 10) THEN
        DBMS_OUTPUT.PUT_LINE('Numero 1 esta entre 0 y 10');
    END IF;
    
    IF (Numero2 in (5,10,15,20)) THEN
        dbms_output.put_line('Numero2 esta en el grupo de elementos');
    END IF;
    
    IF (nombre2 is null) THEN
        DBMS_OUTPUT.PUT_LINE('El nombre2 es nulo');
    END IF;
END;
/