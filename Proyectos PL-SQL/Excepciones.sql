set SERVEROUTPUT ON;

DECLARE

    nombre nvarchar2(100);
BEGIN

    select nombre into nombre from empleados where id = 20 ;
    dbms_output.put_line(nombre);

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No se encontro empleado con ese codigo');
    WHEN others THEN
        dbms_output.put_line('Sucedio algo inusual');
END;
/