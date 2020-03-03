SET SERVEROUTPUT ON;

DECLARE
    
    salarioBase number :=100;
    aumento number;
    baseConAumento number;
BEGIN

    if( salarioBase between 0 and 600) then
        aumento := salarioBase * 0.15;
    elsif(salarioBase<= 950) then
        aumento := salarioBase * 0.315;
    elsif(salarioBase<= 1400) then
        aumento := salarioBase * 0.10;
    else
        aumento := salarioBase * 0.05;
    end if;
    
    baseConAumento := salarioBase + aumento;
    
    DBMS_OUTPUT.PUT_LINE('Salario base: ' || salarioBase);
    DBMS_OUTPUT.PUT_LINE('Aumento: ' || aumento);
    DBMS_OUTPUT.PUT_LINE('Nuevo Salario: ' || baseConAumento);
    

END;
/