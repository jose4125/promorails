SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`frase`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`frase` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`frase` (
  `frase_1d` INT NOT NULL ,
  `frase` VARCHAR(255) NULL ,
  `confirm` TINYINT(1) NULL COMMENT '1= true, 0= false' ,
  PRIMARY KEY (`frase_1d`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`usuario` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`usuario` (
  `id_user` INT NOT NULL ,
  `nombre` VARCHAR(255) NULL ,
  `apellido` VARCHAR(255) NULL ,
  `cedula` INT NULL ,
  `ciudad` VARCHAR(255) NULL ,
  `fan` VARCHAR(255) NULL ,
  `frase_frase_1d` INT NOT NULL ,
  `aceptaT` TINYINT(1) NULL COMMENT '1= true, 0= false' ,
  PRIMARY KEY (`id_user`, `frase_frase_1d`) ,
  INDEX `fk_usuario_frase_idx` (`frase_frase_1d` ASC) ,
  CONSTRAINT `fk_usuario_frase`
    FOREIGN KEY (`frase_frase_1d` )
    REFERENCES `mydb`.`frase` (`frase_1d` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
