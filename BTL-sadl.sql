-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `mydb` ;
-- -----------------------------------------------------
-- Table `mydb`.`user_profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_profile` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `fullname` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `password` VARCHAR(300) NULL,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`message`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`message` (
  `message_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NULL,
  `receiver` VARCHAR(45) NULL,
  `content` TEXT NULL,
  PRIMARY KEY (`message_id`),
  INDEX `fk_message_user_profile1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_message_user_profile1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user_profile` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`category` (
  `category_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`product` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `category_id` INT NULL,
  `description` TEXT NULL,
  `gender` VARCHAR(45) NULL,
  `brand` VARCHAR(45) NULL,
  `origin_price` FLOAT NULL,
  `sale` FLOAT NULL,
  PRIMARY KEY (`product_id`),
  INDEX `fk_product_category1_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `mydb`.`category` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`warehouse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`warehouse` (
  `warehouse_id` INT NOT NULL AUTO_INCREMENT,
  `product_id` INT NULL,
  `size` VARCHAR(45) NULL,
  `quantity` INT NULL,
  `price` FLOAT NULL,
  INDEX `fk_warehouse_product1_idx` (`product_id` ASC) VISIBLE,
  PRIMARY KEY (`warehouse_id`),
  CONSTRAINT `fk_warehouse_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `mydb`.`product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`order` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NULL,
  `quantity` INT NULL,
  `phone` VARCHAR(45) NULL,
  `address` VARCHAR(200) NULL,
  `delivery_status` VARCHAR(50) NULL,
  `payment_method` VARCHAR(45) NULL,
  `total_amount` FLOAT NULL,
  `warehouse_id` INT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_order_user_profile1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_order_warehouse1_idx` (`warehouse_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_user_profile1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user_profile` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_warehouse1`
    FOREIGN KEY (`warehouse_id`)
    REFERENCES `mydb`.`warehouse` (`warehouse_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customer_response`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer_response` (
  `order_id` INT NOT NULL,
  `comment` TEXT NULL,
  `rating` INT NULL,
  INDEX `fk_customer_response_order1_idx` (`order_id` ASC) VISIBLE,
  CONSTRAINT `fk_customer_response_order1`
    FOREIGN KEY (`order_id`)
    REFERENCES `mydb`.`order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`vote`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`vote` (
  `user_id` INT NOT NULL,
  `idol` VARCHAR(45) NULL,
  INDEX `fk_order_user_profile2_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_user_profile2`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user_profile` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`product_image`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`product_image` (
  `image_id` INT NOT NULL AUTO_INCREMENT,
  `product_id` INT NULL,
  `link_img` TEXT NULL,
  PRIMARY KEY (`image_id`),
  INDEX `fk_product_image_product1_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_image_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `mydb`.`product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`user_idol` (
  `user_name`  VARCHAR(50) NOT NULL AUTO_INCREMENT,
  `idol` TEXT NULL,
  PRIMARY KEY (`user_name`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`user_order` (
  `email`  VARCHAR(50) NULL,
  `shirt_type` VARCHAR(50) NULL,
  `season`  VARCHAR(50) NULL,
  `order_time` DATETIME NULL,
  `phone`  VARCHAR(20) NULL,
  `address`  VARCHAR(100) NULL,
  `size`  VARCHAR(10) NULL,
  `quantity` INT NULL,
  `payment_method`  VARCHAR(50) NULL,
  `club_or_nation`  VARCHAR(50) NULL,
  `player`  VARCHAR(50) NULL,
  `delivery_status`  VARCHAR(50) NULL)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`product_image` (
  `image_id`  INT NOT NULL AUTO_INCREMENT,
  `product_id` INT NULL,
  `image_link` VARCHAR(255) NULL,
  PRIMARY KEY (`image_id`))
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;