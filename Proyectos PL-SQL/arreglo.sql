set serveroutput on;

DECLARE
    -- Definimos los arreglos
    type alumnosArray is varray(5) of nvarchar2(100);
    type notasArray is varray(5) of number;
    
    -- Utilizar los arreglos
    alumnos alumnosArray;
    notas notasArray;
BEGIN

    alumnos := alumnosArray('Angel','Emanuel','Steven','Strevens','Angue'); --Posicion incia en 1
    notas := notasArray(90,100,95,89,75);
    
    DBMS_OUTPUT.PUT_LINE( alumnos(1));
    DBMS_OUTPUT.PUT_LINE( alumnos(2));
    DBMS_OUTPUT.PUT_LINE( alumnos(3));
    
    DBMS_OUTPUT.PUT_LINE( notas(1));
    DBMS_OUTPUT.PUT_LINE( notas(2));
    DBMS_OUTPUT.PUT_LINE( notas(3));
    
    notas(1):= 9100000; --cambiar valor
    DBMS_OUTPUT.PUT_LINE( notas(1));
END;
/