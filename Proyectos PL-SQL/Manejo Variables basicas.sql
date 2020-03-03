set SERVEROUTPUT ON;

DECLARE 
 --Definicion de funciones y variables
  salario number := 1500;
  nombreEmpleado nvarchar2(100);
  activo boolean;
  fecha date;
  
BEGIN
    nombreEmpleado :='Angel Rodriguez';
    activo := true;
    fecha := sysdate;
    
    dbms_output.put_line('Nombre: ' || nombreEmpleado);
    dbms_output.put_line('Salario: ' || salario);
    dbms_output.put_line('Fecha: ' || fecha);
    
    dbms_output.put_line('Activo: ' || case when activo then 'Si' else 'No' end);
END;
/