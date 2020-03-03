set serveroutput on;

DECLARE
    salarioPromedio number := 0;
    
    --==================
    -- Obtener promedio
    --==================
    FUNCTION obtener_promedio
    return number
    is
        promedio number :=0;
    BEGIN 
        select avg(salario) into promedio from empleados;
        return promedio;
    END;
    -- ========== Fin de la funcion Promedio

BEGIN -- Funcion PL Principal

    salarioPromedio := obtener_promedio();
    DBMS_OUTPUT.put_line('El salario promedio es: ' || salarioPromedio);

END;
/