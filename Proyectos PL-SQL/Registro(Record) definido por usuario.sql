set serveroutput on;

DECLARE

    type carro is record(
        marca nvarchar2(100),
        modelo nvarchar2(100),
        puertas number
        
    );
    
    mazda carro;
    toyota carro;
    --Procedimiento de Impresion
    PROCEDURE imprimir_carro(car carro) is
    BEGIN
        dbms_output.put_line(car.marca);
        dbms_output.put_line(car.modelo);
        dbms_output.put_line(car.puertas);
    END;
    --Fin Proecdimiento de impresion
BEGIN

    mazda.marca := 'Mazda';
    mazda.modelo := 'Mazda 3';
    mazda.puertas := 4;
    
    toyota.marca := 'Toyota';
    toyota.modelo := 'Prado';
    toyota.puertas := 5;
    
    dbms_output.put_line(mazda.modelo);
    dbms_output.put_line(mazda.puertas);
    
    imprimir_carro(mazda);
    imprimir_carro(toyota);
    
END;
/