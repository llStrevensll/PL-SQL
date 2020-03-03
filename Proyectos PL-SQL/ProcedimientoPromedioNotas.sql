CREATE OR REPLACE FUNCTION promedio_notas(n1 number, n2 number, n3 number, n4 number)
return number is
    promedio number := 0;
BEGIN
    
    promedio := (n1 + n2 + n3 + n4)/4;
    return promedio;
END;
/