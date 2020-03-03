set serveroutput on;

DECLARE
    empleado empleados%rowtype;
    
    CURSOR c_empleados is
        select * from empleados;
    -- Procedimiento de impresion de empleado
    PROCEDURE imprimir_empleado(empleado empleados%rowtype) is
        salarioDiario number;
    BEGIN
        salarioDiario := empleado.salario / 30;
        dbms_output.put_line('==================');
        dbms_output.put_line('Nombre: '|| empleado.nombre);
        dbms_output.put_line('Salario Diario: '|| round(salarioDiario,2));
        dbms_output.put_line('Dias Trabajados: '|| empleado.diastrabajados);
        dbms_output.put_line('Salario a Pagar: '|| round(salarioDiario * empleado.diastrabajados, 2));
        dbms_output.put_line('==================');
    END;
    --Fin de procedimiento de impresion de empleado
BEGIN

    OPEN c_empleados;
    LOOP
        FETCH c_empleados into empleado;
        EXIT WHEN c_empleados%notfound;
        
        imprimir_empleado(empleado);
        
    END LOOP;
    CLOSE c_empleados;
END;
/