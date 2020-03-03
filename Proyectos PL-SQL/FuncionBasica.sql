create or replace function total_empleados
return number
IS
    total number := 0;
BEGIN 

    select count(*) into total from empleados;
    
    return total;

END;
/