Create or replace function mayor_entre(x in number, y in number)
return number
IS

BEGIN

    IF(x>y) THEN
        return x;
    ELSE
        return y;
    END IF;
    
END;
/