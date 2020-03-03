CREATE OR REPLACE PROCEDURE actualiza_fecha_empleados
AS
BEGIN
    
    update empleados set actualizado = sysdate;

END;
/