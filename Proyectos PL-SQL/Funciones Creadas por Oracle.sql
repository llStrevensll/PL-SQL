set serveroutput on;

DECLARE
    nombre nvarchar2(100) := ' Angel   ';
    apellido nvarchar2(100) := 'Rodriguez';
    nombreCompleto nvarchar2(200);
    hoy date := sysdate;
    
    nombre2 nvarchar2(100);
BEGIN
    
    --Funciones con textos o variables String
    DBMS_OUTPUT.PUT_LINE('Largo: ' || length(nombre)); --tamaño
    DBMS_OUTPUT.PUT_LINE('Trim: ' || trim(nombre) || ';'); --quita espacios
    DBMS_OUTPUT.PUT_LINE('Minusculas: ' || lower(nombre)); --minuscula
    DBMS_OUTPUT.PUT_LINE('Mayuscula: ' || upper(nombre)); --mayuscula
    
    nombre := trim(nombre);
    nombreCompleto := nombre || ' ' || apellido;
    DBMS_OUTPUT.PUT_LINE('Nombre Completo: ' || nombreCompleto); --concatenar
    
    DBMS_OUTPUT.PUT_LINE('Cortar: ' || substr(nombre,1,3) ); --dividir cadena
    DBMS_OUTPUT.PUT_LINE('Reemplazo: ' || replace(nombre,'A','L') ); --reemplazar
    DBMS_OUTPUT.PUT_LINE('Reemplazo: ' || replace(nombre,'Ang', '') );
    
    --Funcion de fecha
    DBMS_OUTPUT.PUT_LINE('Hoy: '|| hoy);
    DBMS_OUTPUT.PUT_LINE('Agregar mes: ' || add_months(hoy, 1));
    DBMS_OUTPUT.PUT_LINE('Agregar dia: ' || (hoy + 1));
    
    DBMS_OUTPUT.PUT_LINE('Dia: '|| TO_CHAR(hoy, 'dd')); -- dia
    DBMS_OUTPUT.PUT_LINE('Dia Mes: '|| TO_CHAR(hoy, 'dd-MM')); -- Mes
    DBMS_OUTPUT.PUT_LINE('Anio: '|| TO_CHAR(hoy, 'yyyy'));   -- Año
    
    DBMS_OUTPUT.PUT_LINE('NVL: '|| NVL(nombre2, 'Es nulo')); --Manejar nulos
END;
/