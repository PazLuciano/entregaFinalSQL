use bbdd_haver;

-- Agregando TABLA: tipo_de_producto


INSERT INTO tipo_de_producto (idtipo_de_producto, descripcion)
VALUES(
	null,
    "Material para la consutrccion"

);
INSERT INTO tipo_de_producto (idtipo_de_producto, descripcion)
VALUES(
	null,
    "Ferreteria"

);
INSERT INTO tipo_de_producto (idtipo_de_producto, descripcion)
VALUES(
	null,
    "Sanitarios"

);

-- Agregando TABLA: tipo_de_proveedor.
INSERT INTO tipo_de_proveedor (id, descripcion)
VALUES(
	null,
    "Proveedor de arena"

);
INSERT INTO tipo_de_proveedor (id, descripcion)
VALUES(
	null,
    "Proveedor de bolsas"

);
INSERT INTO tipo_de_proveedor (id, descripcion)
VALUES(
	null,
    "Proveedor de ladrillos"

);
INSERT INTO tipo_de_proveedor (id, descripcion)
VALUES(
	null,
    "Proveedor de Sanitarios"

);
INSERT INTO tipo_de_proveedor (id, descripcion)
VALUES(
	null,
    "Proveedor de Ferreteria"

);
-- Agregando TABLA: tipo_de_cliente;
INSERT INTO tipo_de_cliente (id, descripcion)
VALUES(
	null,
    "Consumidor Final"

);
INSERT INTO tipo_de_cliente (id, descripcion)
VALUES(
	null,
    "Responsable Inscripto"

);
INSERT INTO tipo_de_cliente (id, descripcion)
VALUES(
	null,
    "Responsable Monotributista"

);

-- Agregando TABLA: proveedor;
INSERT INTO proveedor (id, id_tipo_de_proveedor,razon_social,CUIT,direccion)
VALUES(
	null,
    3,
    "Latercer S.A",
    23123123,
    "Av Mayo 1235"
    
);
INSERT INTO proveedor (id, id_tipo_de_proveedor,razon_social,CUIT,direccion)
VALUES(
	null,
    2,
    "Loma Negra",
    23125433,
    "Av Libertador 1746"
    
);

-- Corrigiendo tabla producto
ALTER TABLE `bbdd_haver`.`producto` 
CHANGE COLUMN `precio` `precio` INT NOT NULL ;

-- Agregando TABLA: productos
INSERT INTO producto (id, id_tipo_de_producto,descripcion,precio,id_proveedor)
VALUES(
	null,
    1,
    "Cemento Loma Negra",
    2000,
    2
    
);
INSERT INTO producto (id, id_tipo_de_producto,descripcion,precio,id_proveedor)
VALUES(
	null,
    1,
    "Cal Cacique",
    1500,
    2
    
);
INSERT INTO producto (id, id_tipo_de_producto,descripcion,precio,id_proveedor)
VALUES(
	null,
    1,
    "Plasticor",
    1960,
    2
    
);
INSERT INTO producto (id, id_tipo_de_producto,descripcion,precio,id_proveedor)
VALUES(
	null,
    1,
    "Ladrillo Hueco 8x18x33",
    200,
    1
    
);
INSERT INTO producto (id, id_tipo_de_producto,descripcion,precio,id_proveedor)
VALUES(
	null,
    1,
    "Ladrillo Hueco 12x18x33",
    250,
    1
    
);

-- MODIFICANDO TABLA CLIENTES:
ALTER TABLE `bbdd_haver`.`cliente` 
CHANGE COLUMN `dni-cuit` `dni_cuit` INT NOT NULL ;

-- Agregando TABLA: Clientes
INSERT INTO cliente (id, id_tipo_de_cliente,razon_social,dni_cuit,direccion)
VALUES(
	null,
    1,
    "Paz Luciano",
    4342243,
    "Avenida Rolon 1234"
);

INSERT INTO cliente (id, id_tipo_de_cliente,razon_social,dni_cuit,direccion)
VALUES(
	null,
    2,
    "Empresa S.A",
    23566654,
    "Avenida Rolon 9852"
);

-- AGREGANDO TABLA PEDIDO MANUALMENTE.

INSERT INTO pedido (idpedido, id_cliente, importe, fecha)
VALUES (
	null,
    1,
    0,
    CURDATE()
);

INSERT INTO pedido (idpedido, id_cliente, importe, fecha)
VALUES (
	null,
    2,
    0,
    CURDATE()
);
INSERT INTO pedido (idpedido, id_cliente, importe, fecha)
VALUES (
	null,
    1,
    0,
    CURDATE()
);

-- AGREGNADO TABLA pedido_producto.

ALTER TABLE `bbdd_haver`.`pedido_producto` 
ADD COLUMN `precio_producto` INT NOT NULL AFTER `cantidad`;


-- INSERT INTO pedido_producto (id_pedido, id_producto,cantidad)
-- VALUES (1,1,3),(1,5,200),(1,3,5);

-- INSERT INTO pedido_producto (id_pedido, id_producto,cantidad)
-- VALUES (2,1,7),(2,4,600)

-- Corregimos la tabla pedido_producto
-- Agregando una columna con el precio del producto.


-- SET SQL_SAFE_UPDATES = 0;
-- delete from pedido_producto where precio_producto = 0;
-- SET SQL_SAFE_UPDATES = 1;

INSERT INTO pedido_producto (id_pedido, id_producto,cantidad,precio_producto)
VALUES (1,1,5,2000),(1,5,200,250),(1,3,5,1960);

INSERT INTO pedido_producto (id_pedido, id_producto,cantidad,precio_producto)
VALUES (2,1,7,2000),(2,4,600,200);








-- SCRIPT VISTAS
-- Crearemos vistas que nos daran informacion importante para analizar
-- productos y clientes.
use bbdd_haver;
CREATE VIEW cliente_con_mas_compras AS
SELECT 
COUNT(id_cliente) AS compras_cliente,
C.razon_social
FROM
pedido AS P
INNER JOIN cliente AS C on p.id_cliente = C.id
GROUP BY C.razon_social
ORDER BY compras_cliente DESC
LIMIT 1;

CREATE VIEW productos_mas_vendidos AS
SELECT
PP.id_producto,
p.descripcion,
SUM(cantidad) AS cantidad_vendido_por_producto
FROM
pedido_producto AS PP
INNER JOIN producto AS P on PP.id_producto = P.id
GROUP BY p.descripcion
ORDER BY cantidad_vendido_por_producto DESC;


CREATE VIEW clientes_sin_comprar AS
SELECT
COUNT(id_cliente) AS compras_cliente,
C.razon_social
FROM 
cliente AS C
LEFT JOIN pedido AS p ON c.id = P.id_cliente
GROUP BY C.razon_social
HAVING compras_cliente = 0;



CREATE VIEW producto_mas_caro AS
SELECT descripcion, precio
FROM producto WHERE precio = (
SELECT precio FROM producto
ORDER BY precio DESC
LIMIT  1
);


CREATE VIEW productos_sin_vender AS
SELECT 
p.id,
p.descripcion,
COUNT(cantidad) AS productos_vendidos
FROM 
producto AS P
LEFT JOIN pedido_producto as PP ON P.id = pp.id_producto
GROUP BY p.descripcion
HAVING productos_vendidos = 0;

-- SCRIPT CON FUNCIONES.

-- Una sera una funcion que devuelva el importe de un producto para la tabla pedido_producto

-- La segunda tendra el objetivo de devolver el total de un pedido para la tabla-pedido.
use bbdd_haver;
DELIMITER $$
CREATE FUNCTION importe_producto (id_producto INT) RETURNS INT
DETERMINISTIC 
BEGIN
	DECLARE importe INT;
    SELECT 
    precio INTO importe
    FROM producto WHERE id = id_producto;
    RETURN importe;
END
$$;

DELIMITER $$
CREATE FUNCTION importe_total (id_pedido_param INT) RETURNS INT
DETERMINISTIC 
BEGIN
	DECLARE importe_total INT;
	SELECT 
		SUM(precio_producto * cantidad) as Total INTO importe_total
	FROM pedido_producto AS pp
	WHERE id_pedido = id_pedido_param;
    RETURN importe_total;
	END
$$;

-- SCRIPT SP
-- Uno permitira eliminar datos de la tabla "Pedido-producto" en el caso de que un pedido tenga un 
-- oroducto erroneo o cambiar la cantidad.

-- El otro SP permitira mostrar la tabla de "Producto" a traves del precio
-- de manera descendente o asendente.
use bbdd_haver;

DELIMITER $$
CREATE procedure eliminarProductoDeUnPedido (IN pedido INT, IN producto INT)
BEGIN
	DELETE FROM pedido_producto WHERE id_pedido = pedido AND id_producto = producto;
END
$$;


DELIMITER $$
CREATE procedure ordernarTablaProductos (IN numero INT)
BEGIN
	IF numero = 1 THEN
		SELECT * FROM producto ORDER BY precio ASC;
	ELSE
		SELECT * FROM producto ORDER BY precio DESC;
	END IF;
END
$$;



-- SCRIPT TRIGGERS.

-- Triggers en tabla PRODUCTO.
-- Crearemos un trigger de tipo UPDATE-AFTER
-- Para registrar los tipos de cambio en el precio
use bbdd_haver;
CREATE table modificaciones_producto(
	id_modificacion INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    descripcion VARCHAR(100),
    precio_viejo INT,
    precio_nuevo INT,
    fecha_modificacion TIMESTAMP
);

DELIMITER $$
CREATE TRIGGER tr_update_producto_after
AFTER UPDATE ON producto
FOR EACH ROW
BEGIN
	
	INSERT INTO modificaciones_producto(id_producto,descripcion,precio_viejo,precio_nuevo,fecha_modificacion)
    VALUES(
		NEW.id, NEW.descripcion , OLD.precio, new.precio, current_timestamp()
    );

    

END
$$;


-- Segundo trigger 
-- Se creara una tabla de registro por cada inserccion de algun producto.
use bbdd_haver;
CREATE TABLE insert_producto(
	id_eliminacion INT AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    descripcion VARCHAR(100),
    tiempoEliminacion TIMESTAMP,
    usuario_eliminacion VARCHAR(40)
    
);

DELIMITER $$
CREATE TRIGGER tr_insert_producto_before
BEFORE INSERT ON producto
FOR EACH ROW
BEGIN
	INSERT INTO insert_producto(id_producto, descripcion, tiempoEliminacion, usuario_eliminacion)
    VALUES(
		new.id,
        NEW.descripcion,
        current_timestamp(),
        USER()
        );
END
$$;

-- TABLA PEDIDO-PRODUCTO 
-- TRIGGER 
-- Este trigger actualizara el importe final de la tabla pedido de un pedido especifico
-- cuando se agregue una tupla de un producto en la tabla pedido_producto

DELIMITER $$
CREATE TRIGGER actualizar_total_tabla_pedidos_after
AFTER INSERT on pedido_producto
FOR EACH ROW
BEGIN
	UPDATE pedido
		SET importe = (
			SELECT
				SUM(precio_producto * cantidad) AS total
			FROM pedido_producto
            WHERE id_pedido = new.id_pedido
        )
        WHERE idpedido = new.id_pedido;
END
$$;

