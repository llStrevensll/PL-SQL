SET SERVEROUTPUT ON;

DECLARE

    cantidad number :=5;
    montoUnitario number := 19.99;
    
    subTotal number;
    impuesto number;
    totalPagar number;

BEGIN
    -- Calcular Sub Total
    subTotal := montoUnitario * cantidad;
    
    -- Calcular impuesto
    impuesto := subTotal * 0.15;
    
    --Calcular total a Pagar
    totalPagar := subTotal + impuesto;
    
    -- Imprimir valores
    dbms_output.put_line('Sub Total: ' || subTotal);
    dbms_output.put_line('Impuesto 15%: ' || impuesto);
    dbms_output.put_line('Total a pagar: ' || totalPagar);

END;
/