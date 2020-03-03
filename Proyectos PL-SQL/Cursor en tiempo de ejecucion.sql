set SERVEROUTPUT ON;

DECLARE
    promedio number;

BEGIN

    FOR fila in (select * from notas order by nombre asc) LOOP
      promedio := (fila.nota1 + fila.nota2 + fila.nota3 + fila.nota4)/4;
      
      dbms_output.put_line('Nombre: ' || fila.nombre || ',promedio ' || promedio);
            
    END LOOP;

END;
/