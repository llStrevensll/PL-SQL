set serveroutput on;

DECLARE
    -- Contiene los registros de la tabla
    reg_empleado empleados%rowtype;
BEGIN
    
    select * into reg_empleado from empleados where id = 5;
    
    dbms_output.put_line(reg_empleado.nombre);
    dbms_output.put_line(reg_empleado.id);
    dbms_output.put_line(reg_empleado.salario);
    dbms_output.put_line(reg_empleado.actualizado);
END;
/