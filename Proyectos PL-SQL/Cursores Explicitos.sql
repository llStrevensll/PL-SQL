set SERVEROUTPUT on;

DECLARE

    nombre nvarchar2(200);
    salario number;
    
    CURSOR c_empleado is
        select nombre, salario from empleados order by nombre asc;
BEGIN

    OPEN c_empleado;
    LOOP
        FETCH c_empleado into nombre, salario;
        EXIT WHEN c_empleado%notfound;
        
        dbms_output.put_line(nombre || ': ' || salario);
    END LOOP;
    CLOSE c_empleado;

END;
/