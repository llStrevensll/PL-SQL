select fechanaci, edad_actual(fechanaci),sysdate from empleados
where edad_actual(fechanaci)>35;