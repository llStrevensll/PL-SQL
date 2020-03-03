SET SERVEROUTPUT ON;

DECLARE
    
    nota number := 28;
BEGIN
    
    IF(nota = 29 or nota = 28) THEN
        nota := 30;
    END IF;
    
    IF(nota BETWEEN 27 and 29) THEN
        nota := 30;
    END IF;
    
    IF (nota >= 30) THEN
        dbms_output.put_line('Paso la materia');
    ELSE
        DBMS_OUTPUT.put_line('Perdio la materia');
    END IF;
    
    
    IF (nota >= 45) THEN
        dbms_output.put_line('Excelente');
    ELSIF(nota >= 40) THEN
        dbms_output.put_line('Muy bien');
    ELSIF(nota >= 30) THEN
        dbms_output.put_line('Bien');
    ELSE
        dbms_output.put_line('Necesita mejorar');
    END IF;
    
    
DBMS_OUTPUT.put_line('Nota:' || nota);

END;
/