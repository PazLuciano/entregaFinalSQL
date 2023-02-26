-- INSERTAREMOS CLIENTES EN LA TABLA CLIENTE

use bbdd_haver;
SET autocommit = 0;
START TRANSACTION;
	SELECT * FROM cliente;
	INSERT INTO cliente (id, id_tipo_de_cliente,razon_social,dni_cuit,direccion)
	VALUES
	(null,1,"Sergio Gimenez",2054352,"Avenida Peron 1237"),
	(null,1,"Candela Martinez",35745221,"Simon de iriondo 6531"),
	(null,1,"Manuela Gircia", 40125773,"Lavalle 1114"),
	(null,2,"Estudio Acuña SRL", 301236452,"Pampa 5441")
;
	SELECT * FROM cliente;
-- ROLLBACK;


-- CREAREMOS DOS PEDIDOS Y POSTERIOR A ESO AGREGAREMOS LOS PRODUCTOS A LA TABLA PEDIDO-PRODUCTO.
-- Utilizaremos los clientes agregados en la START TRANSACTION 1(arriba)
START TRANSACTION;
    INSERT INTO pedido (idpedido, id_cliente, importe, fecha)
	VALUES (null,5,0,CURDATE());
    INSERT INTO pedido_producto (id_pedido, id_producto,cantidad,precio_producto)
    VALUES (4,1,3,SELECT importe_producto(1)),(4,6,2, SELECT importe_producto(6)),(4,3,5,SELECT importe_producto(3));
    SAVEPOINT pedido1;
    INSERT INTO pedido (idpedido, id_cliente, importe, fecha)
	VALUES (null,7,0,CURDATE());
    INSERT INTO pedido_producto (id_pedido, id_producto,cantidad,precio_producto)
    VALUES (5,8,3,SELECT importe_producto(8)),(5,5,200, SELECT importe_producto(5)),(5,1,5,SELECT importe_producto(1));
    SAVEPOINT pedido2;

-- release pedido1;