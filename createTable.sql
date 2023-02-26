
-- CREANDO DATABASE
CREATE SCHEMA `bbdd_haver` ;

USE bbdd_haver;
-- ---CREANDO TABLAS
CREATE TABLE `bbdd_haver`.`tipo_de_cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`));
-- - --------

  CREATE TABLE `bbdd_haver`.`cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_tipo_de_cliente` INT NOT NULL,
  `razon_social` VARCHAR(45) NOT NULL,
  `dni-cuit` INT NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
-- ------------

CREATE TABLE `bbdd_haver`.`tipo_de_producto` (
  `idtipo_de_producto` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo_de_producto`));

-- -----------------------------
CREATE TABLE `bbdd_haver`.`producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_tipo_de_producto` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `precio` VARCHAR(45) NOT NULL,
  `id_proveedor` INT NOT NULL,
  PRIMARY KEY (`id`));
  -- ---------------------

  CREATE TABLE `bbdd_haver`.`tipo_de_proveedor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  -- ---------------------

  CREATE TABLE `bbdd_haver`.`proveedor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_tipo_de_proveedor` INT NOT NULL,
  `razon_social` VARCHAR(45) NOT NULL,
  `CUIT` INT NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

-- ---------------------------------

CREATE TABLE `bbdd_haver`.`pedido` (
  `idpedido` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `importe` INT NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`idpedido`));

-- ------------------

CREATE TABLE `bbdd_haver`.`pedido_producto` (
  `id_pedido` INT NOT NULL,
  `id_producto` INT NOT NULL,
  `cantidad` INT NULL,
  PRIMARY KEY (`id_pedido`, `id_producto`));

-- -------------------.
-- CLAVES FOREIGN KEY

ALTER TABLE `bbdd_haver`.`cliente` 
ADD INDEX `id_tipo_cliente_idx` (`id_tipo_de_cliente` ASC) VISIBLE;
;
ALTER TABLE `bbdd_haver`.`cliente` 
ADD CONSTRAINT `id_tipo_cliente`
  FOREIGN KEY (`id_tipo_de_cliente`)
  REFERENCES `bbdd_haver`.`tipo_de_cliente` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- ------------------

ALTER TABLE `bbdd_haver`.`producto` 
ADD INDEX `id_tipo_producto_idx` (`id_tipo_de_producto` ASC) VISIBLE,
ADD INDEX `id_proveedor_idx` (`id_proveedor` ASC) VISIBLE;
;
ALTER TABLE `bbdd_haver`.`producto` 
ADD CONSTRAINT `id_tipo_producto`
  FOREIGN KEY (`id_tipo_de_producto`)
  REFERENCES `bbdd_haver`.`tipo_de_producto` (`idtipo_de_producto`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `id_proveedor`
  FOREIGN KEY (`id_proveedor`)
  REFERENCES `bbdd_haver`.`proveedor` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

  -- ---------------------------------
ALTER TABLE `bbdd_haver`.`proveedor` 
ADD INDEX `id_tipo_proveedor_idx` (`id_tipo_de_proveedor` ASC) VISIBLE;
;
ALTER TABLE `bbdd_haver`.`proveedor` 
ADD CONSTRAINT `id_tipo_proveedor`
  FOREIGN KEY (`id_tipo_de_proveedor`)
  REFERENCES `bbdd_haver`.`tipo_de_proveedor` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- ----------------------------

ALTER TABLE `bbdd_haver`.`pedido` 
ADD INDEX `id_cliente_idx` (`id_cliente` ASC) VISIBLE;
;
ALTER TABLE `bbdd_haver`.`pedido` 
ADD CONSTRAINT `id_cliente`
  FOREIGN KEY (`id_cliente`)
  REFERENCES `bbdd_haver`.`cliente` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- ------------------------
ALTER TABLE `bbdd_haver`.`pedido_producto` 
ADD INDEX `id_producto_idx` (`id_producto` ASC) VISIBLE;
;
ALTER TABLE `bbdd_haver`.`pedido_producto` 
ADD CONSTRAINT `id_pedido`
  FOREIGN KEY (`id_pedido`)
  REFERENCES `bbdd_haver`.`pedido` (`idpedido`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `id_producto`
  FOREIGN KEY (`id_producto`)
  REFERENCES `bbdd_haver`.`producto` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
