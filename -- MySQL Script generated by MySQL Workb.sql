-- MySQL Script generated by MySQL Workbench
-- mié 24 nov 2021 16:32:23
-- Model: New Model Version: 1.0
-- MySQL Workbench Forward Engineering
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0; SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0; SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION'; -- Schema pruebaDB
-- ----------------------------------------------------- CREATE SCHEMA IF NOT EXISTS `pruebaDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ; USE `pruebaDB` ; -- -----------------------------------------------------
-- Table `categoria`
-- ----------------------------------------------------- CREATE TABLE IF NOT EXISTS `categoria` ( `idcategoria` INT NOT NULL AUTO_INCREMENT, `nombre` VARCHAR(25) NOT NULL, PRIMARY KEY (`idcategoria`)) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_spanish_ci; -- -----------------------------------------------------
-- Table `producto`
-- ----------------------------------------------------- CREATE TABLE IF NOT EXISTS `producto` ( `idproductos` INT NOT NULL AUTO_INCREMENT, `nombre` VARCHAR(45) NOT NULL, `descripcion` VARCHAR(45) NULL, `precio` INT NOT NULL, `categoria_idcategoria` INT NOT NULL, PRIMARY KEY (`idproductos`), UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC) VISIBLE,
INDEX `fk_producto_categoria_idx` (`categoria_idcategoria` ASC) VISIBLE, CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_idcategoria`)

REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_spanish_ci; SET SQL_MODE=@OLD_SQL_MODE; SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS; SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS; -- -----------------------------------------------------
-- Data for table `categoria`
-- ----------------------------------------------------- START TRANSACTION; USE `pruebaDB`;
INSERT INTO `categoria` (`idcategoria`, `nombre`) VALUES (1, 'Libros');
INSERT INTO `categoria` (`idcategoria`, `nombre`) VALUES (2, 'Revistas');
INSERT INTO `categoria` (`idcategoria`, `nombre`) VALUES (3, 'Cartillas'); COMMIT; -- -----------------------------------------------------
-- Data for table `producto`
-- ----------------------------------------------------- START TRANSACTION; USE `pruebaDB`;
INSERT INTO `producto` (`idproductos`, `nombre`, `descripcion`, `precio`, `categoria_idcategoria`) VALUES (1, 'El viejo y el mar', 'Novela fantástica drama', 20000, 1);
INSERT INTO `producto` (`idproductos`, `nombre`, `descripcion`, `precio`, `categoria_idcategoria`) VALUES (2, 'El principito', 'Fantasía infantil', 25600, 1);