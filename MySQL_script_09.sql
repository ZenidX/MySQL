CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;
CREATE TABLE IF NOT EXISTS `mydb`.`country` (
  `country_id` INT NOT NULL,
  `ccountry` VARCHAR(50) NULL,
  `last_update` TIMESTAMP NULL,
  PRIMARY KEY (`country_id`))
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`city` (
  `city_id` INT NOT NULL,
  `city` VARCHAR(50) NULL,
  `last_update` TIMESTAMP NULL,
  `country_country_id` INT NOT NULL,
  PRIMARY KEY (`city_id`),
  INDEX `fk_city_country1_idx` (`country_country_id` ASC) VISIBLE,
  CONSTRAINT `fk_city_country1`
    FOREIGN KEY (`country_country_id`)
    REFERENCES `mydb`.`country` (`country_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`address` (
  `address_id` INT NOT NULL,
  `address` VARCHAR(50) NULL,
  `address2` VARCHAR(50) NULL,
  `disctrict` VARCHAR(20) NULL,
  `postal_code` VARCHAR(10) NULL,
  `city_city_id` INT NOT NULL,
  `phone` VARCHAR(20) NULL,
  `location` VARCHAR(20) NULL,
  `last_update` TIMESTAMP NULL,
  PRIMARY KEY (`address_id`),
  INDEX `fk_address_city_idx` (`city_city_id` ASC) VISIBLE,
  CONSTRAINT `fk_address_city`
    FOREIGN KEY (`city_city_id`)
    REFERENCES `mydb`.`city` (`city_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;