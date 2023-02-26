-- Se crearan dos usuarios nuevos a los cuales se les asignaran permisos.
-- Un usuario solamente podra observar los precios y modificarlos
-- El otro tendra acceso a todo menos eliminar registros.


user bbdd_haver; 
CREATE user "usuario1" IDENTIFIED by "123456";
GRANT SELECT (precio) ON bbdd_haver.producto to "usuario1";
show grants for usuario1;


CREATE user "usuario2" IDENTIFIED by "123456789";
GRANT UPDATE, SELECT, CREATE ON *.* TO "usuario2";
SHOW GRANTS FOR "usuario2";