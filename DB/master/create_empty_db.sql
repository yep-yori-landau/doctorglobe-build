SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `DOCTOR_GLOBE` ;
CREATE SCHEMA IF NOT EXISTS `DOCTOR_GLOBE` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci ;
USE `DOCTOR_GLOBE` ;

-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`accreditation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`accreditation` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`accreditation` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of accreditations';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`acl_resources`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`acl_resources` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`acl_resources` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `resource` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_resource` (`resource` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of resources';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`acl_roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`acl_roles` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`acl_roles` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_role` (`role` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of roles';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`acl_permissions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`acl_permissions` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`acl_permissions` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` BIGINT UNSIGNED NOT NULL,
  `resource` BIGINT UNSIGNED NOT NULL,
  `permission` ENUM('allow','deny') NOT NULL DEFAULT 'deny',
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `ap_resources_idx` (`resource` ASC),
  INDEX `ap_roles_idx` (`role` ASC),
  CONSTRAINT `ap_resources`
    FOREIGN KEY (`resource`)
    REFERENCES `DOCTOR_GLOBE`.`acl_resources` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `ap_roles`
    FOREIGN KEY (`role`)
    REFERENCES `DOCTOR_GLOBE`.`acl_roles` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of permissions';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`amenity`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`amenity` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`amenity` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `is_display` TINYINT(1) NOT NULL DEFAULT '0',
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of amenities';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`attestations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`attestations` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`attestations` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` MEDIUMTEXT NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of attestations';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`practitionertype`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`practitionertype` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`practitionertype` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of practitioner types';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`practitioner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`practitioner` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`practitioner` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` CHAR(32) NOT NULL,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `dob` DATE NULL DEFAULT NULL,
  `gender` ENUM('M','F','U') NOT NULL,
  `mobile` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(255) NULL DEFAULT NULL,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  `photo` VARCHAR(255) NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `password` VARCHAR(32) NOT NULL,
  `usa_certification` ENUM('None','Inforce','Expired') NOT NULL,
  `usa_training` TINYINT NOT NULL,
  `graduation_dt` DATE NULL DEFAULT NULL,
  `graduation_institution` VARCHAR(255) NULL DEFAULT NULL,
  `specialty_dt` DATE NULL DEFAULT NULL,
  `specialty_institution` VARCHAR(255) NULL DEFAULT NULL,
  `type` BIGINT UNSIGNED NOT NULL,
  `role` BIGINT UNSIGNED NOT NULL,
  `degree` VARCHAR(255) NULL DEFAULT NULL,
  `medical_license` VARCHAR(255) NULL DEFAULT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_email` (`email` ASC),
  INDEX `fk_practitioner_role_idx` (`role` ASC),
  INDEX `fk_practitioner_pt_idx` (`type` ASC),
  CONSTRAINT `fk_practitioner_pt`
    FOREIGN KEY (`type`)
    REFERENCES `DOCTOR_GLOBE`.`practitionertype` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_practitioner_role`
    FOREIGN KEY (`role`)
    REFERENCES `DOCTOR_GLOBE`.`acl_roles` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of practitioners';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`attestations_practitioner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`attestations_practitioner` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`attestations_practitioner` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` TINYINT NOT NULL,
  `attestation` BIGINT UNSIGNED NOT NULL,
  `practitioner` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_attestations_practitioner_a_idx` (`attestation` ASC),
  INDEX `fk_attestations_practitioner_p_idx` (`practitioner` ASC),
  CONSTRAINT `fk_attestations_practitioner_a`
    FOREIGN KEY (`attestation`)
    REFERENCES `DOCTOR_GLOBE`.`attestations` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_attestations_practitioner_p`
    FOREIGN KEY (`practitioner`)
    REFERENCES `DOCTOR_GLOBE`.`practitioner` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Mapping of attestations and practitioner';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`user` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`user` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `mobile` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  `active` TINYINT(1) NOT NULL,
  `role` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_email` (`email` ASC),
  INDEX `fk_user_role_idx` (`role` ASC),
  CONSTRAINT `fk_user_role`
    FOREIGN KEY (`role`)
    REFERENCES `DOCTOR_GLOBE`.`acl_roles` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of users for administration console';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`audit`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`audit` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`audit` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` VARCHAR(40) NOT NULL,
  `change_table` VARCHAR(255) NOT NULL,
  `change_id` INT UNSIGNED NOT NULL,
  `change_field` VARCHAR(255) NOT NULL,
  `change_from` VARCHAR(255) NOT NULL,
  `change_to` VARCHAR(255) NOT NULL,
  `change_dt` DATETIME NOT NULL,
  `user` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_history_user_idx` (`user` ASC),
  CONSTRAINT `fk_history_user`
    FOREIGN KEY (`user`)
    REFERENCES `DOCTOR_GLOBE`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Audit of all activities performed';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`chain`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`chain` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`chain` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of healthcareprovider chains';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`region`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`region` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`region` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of regions';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`country`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`country` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`country` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` CHAR(2) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `region` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_code` (`code` ASC),
  UNIQUE INDEX `uk_name` (`name` ASC),
  INDEX `fk_country_region_idx` (`region` ASC),
  CONSTRAINT `fk_country_region`
    FOREIGN KEY (`region`)
    REFERENCES `DOCTOR_GLOBE`.`region` (`id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of countries';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`state`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`state` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`state` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` CHAR(3) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `country` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_code` (`code` ASC),
  INDEX `fk_state_country_idx` (`country` ASC),
  CONSTRAINT `fk_state_country`
    FOREIGN KEY (`country`)
    REFERENCES `DOCTOR_GLOBE`.`country` (`id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of states';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`city`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`city` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`city` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `state` BIGINT UNSIGNED NULL DEFAULT NULL,
  `country` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_city_country_idx` (`country` ASC),
  INDEX `fk_city_state_idx` (`state` ASC),
  INDEX `k_name` (`name` ASC),
  CONSTRAINT `fk_city_country`
    FOREIGN KEY (`country`)
    REFERENCES `DOCTOR_GLOBE`.`country` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_city_state`
    FOREIGN KEY (`state`)
    REFERENCES `DOCTOR_GLOBE`.`state` (`id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of cities';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`corporatecompany`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`corporatecompany` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`corporatecompany` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone_1` varchar(255) NOT NULL,
  `phone_2` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `description` text,
  `whitelabel` tinyint(1) NOT NULL DEFAULT '0',
  `whitelabel_url` varchar(255) DEFAULT NULL,
  `minimum_amount_spread` double unsigned DEFAULT '0',
  `minimum_percentage_spread` double unsigned DEFAULT '0',
  `currency` char(3) NOT NULL,
  `dg_commission` tinyint(3) unsigned DEFAULT '0',
  `worker_incentive` tinyint(3) unsigned DEFAULT '0',
  `city` bigint(20) unsigned NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_email` (`email`),
  KEY `fk_cc_city_idx` (`city`),
  KEY `jk_name_add` (`name`,`address_1`) USING BTREE,
  CONSTRAINT `fk_cc_city` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of corporate companies';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`cuisine`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`cuisine` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`cuisine` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_translation_title` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of cuisines served';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`equipment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`equipment` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`equipment` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `rating` TINYINT NOT NULL DEFAULT '1',
  `is_display` TINYINT NULL DEFAULT '0',
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of equipments';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`exchange_rate`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`exchange_rate` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`exchange_rate` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `from` CHAR(3) NOT NULL,
  `to` CHAR(3) NOT NULL,
  `rate` DOUBLE UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `k_from_to` (`from` ASC, `to` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of exchange rates';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`feature`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`feature` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`feature` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of features';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `address_1` VARCHAR(255) NOT NULL,
  `address_2` VARCHAR(255) NULL DEFAULT NULL,
  `zip_code` VARCHAR(255) NOT NULL,
  `website` VARCHAR(255) NULL DEFAULT NULL,
  `contact_name` VARCHAR(255) NULL DEFAULT NULL,
  `phone_1` VARCHAR(255) NULL DEFAULT NULL,
  `phone_2` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL,
  `fax` VARCHAR(255) NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `established` DATE NULL DEFAULT NULL,
  `building_commissioned` DATE NULL DEFAULT NULL,
  `renovated` DATE NULL DEFAULT NULL,
  `affiliation` VARCHAR(255) NULL DEFAULT NULL,
  `cms_certificate` VARCHAR(255) NULL DEFAULT NULL,
  `npi` VARCHAR(255) NULL DEFAULT NULL,
  `teaching_hospital` TINYINT NULL DEFAULT '0',
  `readmission_rate` TINYINT UNSIGNED NULL DEFAULT NULL,
  `mortality_rate` TINYINT UNSIGNED NULL DEFAULT NULL,
  `infection_rate` TINYINT UNSIGNED NULL DEFAULT NULL,
  `medical_lawsuit` TINYINT NULL DEFAULT '0',
  `lat` FLOAT(10,6) NULL DEFAULT NULL,
  `lon` FLOAT(10,6) NULL DEFAULT NULL,
  `us_certified` DATE NULL DEFAULT NULL,
  `type` VARCHAR(255) NULL DEFAULT NULL,
  `currency` CHAR(3) NULL DEFAULT NULL,
  `branch` BIGINT UNSIGNED NULL DEFAULT NULL,
  `chain` BIGINT UNSIGNED NULL DEFAULT NULL,
  `city` BIGINT(20) UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_healthcareprovider_city_idx` (`city` ASC),
  INDEX `fk_healthcareprovider_chain_idx` (`chain` ASC),
  INDEX `fk_branch_healthcareprovider_idx` (`branch` ASC),
  INDEX `uk_healthcareprovider` (`name` ASC, `address_1` ASC, `address_2` ASC, `zip_code` ASC),
  CONSTRAINT `fk_branch_healthcareprovider`
    FOREIGN KEY (`branch`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_healthcareprovider_chain`
    FOREIGN KEY (`chain`)
    REFERENCES `DOCTOR_GLOBE`.`chain` (`id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_healthcareprovider_city`
    FOREIGN KEY (`city`)
    REFERENCES `DOCTOR_GLOBE`.`city` (`id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of healthcareproviders';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_accreditation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_accreditation` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_accreditation` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `accreditation_dt` DATE NOT NULL,
  `accreditation` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcpa_accreditation_idx` (`accreditation` ASC),
  INDEX `fk_hcpa_healtcareprovider_idx` (`healthcareprovider` ASC),
  CONSTRAINT `fk_healthcareprovider_accr`
    FOREIGN KEY (`accreditation`)
    REFERENCES `DOCTOR_GLOBE`.`accreditation` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_healthcareprovider_healthcareprovider`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Accreditation granted to healthcareproviders';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_amenity`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_amenity` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_amenity` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `currency` CHAR(3) NULL DEFAULT NULL,
  `price` DOUBLE NULL DEFAULT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `amenity` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcp_amenity_hcp_idx` (`healthcareprovider` ASC),
  INDEX `fk_hcp_amenity_amenity_idx` (`amenity` ASC),
  CONSTRAINT `fk_fa_healthcareprovider`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_fa_amenity`
    FOREIGN KEY (`amenity`)
    REFERENCES `DOCTOR_GLOBE`.`amenity` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Amenities offered at healthcareproviders';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_cuisine`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_cuisine` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_cuisine` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cuisine` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcp_cuisine_cuisine_idx` (`cuisine` ASC),
  INDEX `fk_hcp_cuisine_hcp_idx` (`healthcareprovider` ASC),
  CONSTRAINT `fk_hcp_cuisine_cuisine`
    FOREIGN KEY (`cuisine`)
    REFERENCES `DOCTOR_GLOBE`.`cuisine` (`id`),
  CONSTRAINT `fk_hcp_cuisine_hcp`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Mapping of healthcareprovider and cuisines';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_equipment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_equipment` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_equipment` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `purchase_dt` DATE NULL DEFAULT NULL,
  `hours_used` SMALLINT NULL DEFAULT NULL,
  `brand` VARCHAR(255) NULL DEFAULT NULL,
  `version` VARCHAR(255) NULL DEFAULT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `equipment` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_fe_healthcareprovider_idx` (`healthcareprovider` ASC),
  INDEX `fk_fe_equipment_idx` (`equipment` ASC),
  CONSTRAINT `fk_fe_equipment`
    FOREIGN KEY (`equipment`)
    REFERENCES `DOCTOR_GLOBE`.`equipment` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_fe_healthcareprovider`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Equipments offered by healthcareproviders';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovidertype`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovidertype` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovidertype` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of healthcareprovider types';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_healthcareprovidertype`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_healthcareprovidertype` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_healthcareprovidertype` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `healthcareprovidertype` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcp_hcptype_type_idx` (`healthcareprovidertype` ASC),
  INDEX `fk_hcp_hcptype_healthcareprovider_idx` (`healthcareprovider` ASC),
  CONSTRAINT `fk_hcp_hcptype_type`
    FOREIGN KEY (`healthcareprovidertype`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovidertype` (`id`),
  CONSTRAINT `fk_hcp_hcptype_healthcareprovider`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Mapping: healthcareprovider and healthcareprovidertype';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`insurance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`insurance` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`insurance` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of insurances';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_insurance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_insurance` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_insurance` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `insurance` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcp_insurance_insurance_idx` (`insurance` ASC),
  INDEX `fk_hcp_insurance_hcp_idx` (`healthcareprovider` ASC),
  CONSTRAINT `fk_hcp_insurance_insurance`
    FOREIGN KEY (`insurance`)
    REFERENCES `DOCTOR_GLOBE`.`insurance` (`id`),
  CONSTRAINT `fk_hcp_insurance_hcp`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of insurances accepted by healthcareprovider';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_language`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_language` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_language` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `language` CHAR(2) NOT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_healthcareprovider_language_healthcareprovider_idx` (`healthcareprovider` ASC),
  INDEX `jk_fl` (`language` ASC, `healthcareprovider` ASC),
  CONSTRAINT `fk_healthcareprovider_language_healthcareprovider`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of languages supported by healthcareproviders';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`ratingcompanies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`ratingcompanies` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`ratingcompanies` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `max_score` TINYINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of companies rating a healthcareprovider';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_ratings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_ratings` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_ratings` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `score` TINYINT NOT NULL,
  `ratingcompany` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcp_rating_hcp_idx` (`healthcareprovider` ASC),
  INDEX `fk_hcp_ratings_rc_idx` (`ratingcompany` ASC),
  CONSTRAINT `fk_hcp_rating_hcp`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_hcp_ratings_rc`
    FOREIGN KEY (`ratingcompany`)
    REFERENCES `DOCTOR_GLOBE`.`ratingcompanies` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of ratings and their scores for a healthcareprovider';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`specialty`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`specialty` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`specialty` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of specialities';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_specialty`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_specialty` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_specialty` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `built` DATE NULL DEFAULT NULL,
  `renovated` DATE NULL DEFAULT NULL,
  `specialty` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcps_hcp_idx` (`healthcareprovider` ASC),
  INDEX `fk_hcps_specialty_idx` (`specialty` ASC),
  CONSTRAINT `fk_hcps_hcp`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_hcps_specialty`
    FOREIGN KEY (`specialty`)
    REFERENCES `DOCTOR_GLOBE`.`specialty` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Specialities at healthcareprovider';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_specialty_practitioner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_specialty_practitioner` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_specialty_practitioner` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `practitioner_email` VARCHAR(255) NOT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT '0',
  `healthcareprovider_specialty` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_pe` (`practitioner_email` ASC),
  INDEX `fk_hcp_specialty_practitioner_hcps_idx` (`healthcareprovider_specialty` ASC),
  CONSTRAINT `fk_hcp_specialty_practitioner_hcps`
    FOREIGN KEY (`healthcareprovider_specialty`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider_specialty` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Mapping:between healthcareprovider, specialty, practitioner';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`treatment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`treatment` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`treatment` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of treatments';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`method`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`method` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`method` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of methods of performing a treatment';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `active` TINYINT(1) NOT NULL DEFAULT '1',
  `treatment` BIGINT UNSIGNED NOT NULL,
  `method` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider_specialty` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcp_specialty_treatment_method_hcps_idx` (`healthcareprovider_specialty` ASC),
  INDEX `fk_hcp_specialty_treatment_method_t_idx` (`treatment` ASC),
  INDEX `fk_hcp_specialty_treatment_method_m_idx` (`method` ASC),
  CONSTRAINT `fk_hcp_specialty_treatment_method_hcps`
    FOREIGN KEY (`healthcareprovider_specialty`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider_specialty` (`id`),
  CONSTRAINT `fk_hcp_specialty_treatment_method_t`
    FOREIGN KEY (`treatment`)
    REFERENCES `DOCTOR_GLOBE`.`treatment` (`id`),
  CONSTRAINT `fk_hcp_specialty_treatment_method_m`
    FOREIGN KEY (`method`)
    REFERENCES `DOCTOR_GLOBE`.`method` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Mapping: healthcareprovider, specialty, treatment, method';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method_practitioner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method_practitioner` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method_practitioner` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `years_practiced` TINYINT UNSIGNED NULL DEFAULT NULL,
  `number_performed_overall` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `number_performed_last_year` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `corrections_last_year` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `availability_days` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `currency` CHAR(3) NOT NULL,
  `healthcareprovider_price` DOUBLE NOT NULL DEFAULT '0',
  `practitioner_price` DOUBLE NOT NULL DEFAULT '0',
  `method_price` DOUBLE NOT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT '1',
  `practitioner` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider_specialty_treatment_method` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcpstmp_p_idx` (`practitioner` ASC),
  INDEX `fk_hcpstmp_hcpstm_idx` (`healthcareprovider_specialty_treatment_method` ASC),
  CONSTRAINT `fk_hcp_specialty_treatment_method_practitioner_p`
    FOREIGN KEY (`practitioner`)
    REFERENCES `DOCTOR_GLOBE`.`practitioner` (`id`),
  CONSTRAINT `fk_hcp_specialty_treatment_method_practitioner_hcpstm`
    FOREIGN KEY (`healthcareprovider_specialty_treatment_method`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'treatment+method by practitioner done within a specialty*/';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`stats`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`stats` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`stats` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` TINYTEXT NULL DEFAULT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of stats';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method_practitioner_stat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method_practitioner_stat` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method_practitioner_stat` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NOT NULL,
  `stat` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider_specialty_treatment_method_practitioner` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcpstmps_idx` (`stat` ASC),
  INDEX `fk_hcpstmps_hcpstmp_idx` (`healthcareprovider_specialty_treatment_method_practitioner` ASC),
  CONSTRAINT `fk_hcpstmps_stat`
    FOREIGN KEY (`stat`)
    REFERENCES `DOCTOR_GLOBE`.`stats` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_hcpstmps_fstmp`
    FOREIGN KEY (`healthcareprovider_specialty_treatment_method_practitioner`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method_practitioner` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Stats of a practitioner';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareproviderunit`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareproviderunit` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareproviderunit` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_name` (`name` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Units in a healthcareprovider';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_unit_feature`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_unit_feature` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_unit_feature` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NOT NULL,
  `feature` BIGINT UNSIGNED NOT NULL,
  `healthcareproviderunit` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcp_unit_feature_hcp_idx` (`healthcareprovider` ASC),
  INDEX `fk_hcp_unit_feature_f_idx` (`feature` ASC),
  INDEX `fk_hcp_unit_feature_hcpu_idx` (`healthcareproviderunit` ASC),
  CONSTRAINT `fk_healthcareprovider_unit_feature_f`
    FOREIGN KEY (`feature`)
    REFERENCES `DOCTOR_GLOBE`.`feature` (`id`),
  CONSTRAINT `fk_healthcareprovider_unit_feature_healthcareprovider`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`),
  CONSTRAINT `fk_healthcareprovider_unit_feature_hcpu`
    FOREIGN KEY (`healthcareproviderunit`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareproviderunit` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Mapping of healthcareprovider with units and features';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareprovider_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareprovider_user` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareprovider_user` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_hcpu_user_idx` (`user` ASC),
  INDEX `fk_hcpu_healthcareprovider_idx` (`healthcareprovider` ASC),
  CONSTRAINT `fk_hcpu_user`
    FOREIGN KEY (`user`)
    REFERENCES `DOCTOR_GLOBE`.`user` (`id`),
  CONSTRAINT `fk_hcpu_hcp`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of users for healthcareproviders';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`healthcareproviderphoto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`healthcareproviderphoto` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`healthcareproviderphoto` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `path` VARCHAR(255) NOT NULL,
  `type` ENUM('photo','video') NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `healthcareprovider` BIGINT UNSIGNED NOT NULL,
  `is_primary` TINYINT(1) NULL DEFAULT '0',
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_healthcareprovider_photo_healthcareprovider_idx` (`healthcareprovider` ASC),
  CONSTRAINT `fk_healthcareprovider_photo_healthcareprovider`
    FOREIGN KEY (`healthcareprovider`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of healthcareprovider photos';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`patient`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`patient` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`patient` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` CHAR(32) NULL DEFAULT NULL,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `dob` DATE NULL DEFAULT NULL,
  `gender` ENUM('M','F','U') NOT NULL DEFAULT 'U',
  `mobile` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(32) NOT NULL,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  `photo` VARCHAR(255) NULL DEFAULT NULL,
  `zip_code` VARCHAR(255) NULL DEFAULT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT '0',
--  `company` BIGINT UNSIGNED NULL DEFAULT NULL,
  `city` BIGINT UNSIGNED NULL DEFAULT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_email` (`email` ASC),
--  INDEX `fk_patient_company_idx` (`company` ASC),
  INDEX `city` (`city` ASC),
--  CONSTRAINT `fk_patient_company`
--    FOREIGN KEY (`company`)
--    REFERENCES `DOCTOR_GLOBE`.`corporate_company` (`id`)
--    ON DELETE CASCADE
--    ON UPDATE CASCADE,
  CONSTRAINT `patient_ibfk_1`
    FOREIGN KEY (`city`)
    REFERENCES `DOCTOR_GLOBE`.`city` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of patients';

-- alter table patient drop FOREIGN KEY fk_patient_company;
-- alter table patient drop column company;


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`patientcase`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`patientcase` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`patientcase` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` LONGTEXT NULL DEFAULT NULL,
  `status` ENUM('Open','In Progress','Approved') NOT NULL,
  `treatment` BIGINT UNSIGNED NOT NULL,
  `patient` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_pc_patient_idx` (`patient` ASC),
  INDEX `fk_pc_treatment_idx` (`treatment` ASC),
  CONSTRAINT `fk_pc_patient`
    FOREIGN KEY (`patient`)
    REFERENCES `DOCTOR_GLOBE`.`patient` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pc_treatment`
    FOREIGN KEY (`treatment`)
    REFERENCES `DOCTOR_GLOBE`.`treatment` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of patient cases';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`patientcaseaudit`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`patientcaseaudit` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`patientcaseaudit` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `change_type` ENUM('Adding Doctor','Messaging Doctor','Uploading Files','Others') NOT NULL DEFAULT 'Others',
  `change_dt` DATETIME NOT NULL,
  `status_from` VARCHAR(255) NOT NULL,
  `status_to` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `patient_case` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `k_pch_pc_idx` (`patient_case` ASC),
  CONSTRAINT `k_pch_pc`
    FOREIGN KEY (`patient_case`)
    REFERENCES `DOCTOR_GLOBE`.`patientcase` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Audit for patient cases';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`patientcasebooking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`patientcasebooking` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`patientcasebooking` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference` VARCHAR(255) NOT NULL,
  `booking_dt` DATETIME NOT NULL,
  `status` ENUM('Open','Cancel','Closed') NOT NULL,
  `patient_case` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider_specialty_treatment_method_practitioner` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_reference` (`reference` ASC),
  INDEX `fk_pcs_pc_idx` (`patient_case` ASC),
  INDEX `fk_pcs_hcpstmp_idx` (`healthcareprovider_specialty_treatment_method_practitioner` ASC),
  CONSTRAINT `fk_pcs_pc`
    FOREIGN KEY (`patient_case`)
    REFERENCES `DOCTOR_GLOBE`.`patientcase` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pcs_hcpstmp`
    FOREIGN KEY (`healthcareprovider_specialty_treatment_method_practitioner`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method_practitioner` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of bookings for patient cases';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`patientcasefile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`patientcasefile` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`patientcasefile` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` TINYTEXT NULL DEFAULT NULL,
  `file_type` VARCHAR(255) NOT NULL,
  `file_name` VARCHAR(255) NOT NULL,
  `file_dt` DATE NULL DEFAULT NULL,
  `patient_case` BIGINT UNSIGNED NULL DEFAULT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_pcf_pc_idx` (`patient_case` ASC),
  CONSTRAINT `fk_pcf_pc`
    FOREIGN KEY (`patient_case`)
    REFERENCES `DOCTOR_GLOBE`.`patientcase` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of files for patient case';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`patientcasemessages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`patientcasemessages` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`patientcasemessages` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference` VARCHAR(255) NOT NULL,
  `sender_type` ENUM('Patient','Practitioner','System') NOT NULL DEFAULT 'Patient',
  `sender` INT UNSIGNED NOT NULL,
  `receiver_type` ENUM('Patient','Practitioner','System') NOT NULL DEFAULT 'Practitioner',
  `receiver` INT NOT NULL,
  `subject` VARCHAR(255) NOT NULL,
  `body` LONGTEXT NOT NULL,
  `sent_dt` DATETIME NOT NULL,
  `status` ENUM('Open','Read') NOT NULL DEFAULT 'Open',
  `patient_case` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_pce_pc_idx` (`patient_case` ASC),
  INDEX `k_sender_type` (`sender_type` ASC),
  INDEX `k_sender` (`sender` ASC),
  CONSTRAINT `fk_pce_pc`
    FOREIGN KEY (`patient_case`)
    REFERENCES `DOCTOR_GLOBE`.`patientcase` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of messages for a patient case';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`patientconference`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`patientconference` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`patientconference` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `conference_dt` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00',
  `status` ENUM('Created','Proposed','Rejected','Accepted','Confirmed') NOT NULL DEFAULT 'Accepted',
  `healthcareprovider_specialty_treatment_method_practitioner` BIGINT UNSIGNED NOT NULL,
  `patient_case` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_pc_pc_idx` (`patient_case` ASC),
  INDEX `fk_pc_hcpstmp_idx` (`healthcareprovider_specialty_treatment_method_practitioner` ASC),
  CONSTRAINT `fk_pc_pc`
    FOREIGN KEY (`patient_case`)
    REFERENCES `DOCTOR_GLOBE`.`patientcase` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pc_hcpstmp`
    FOREIGN KEY (`healthcareprovider_specialty_treatment_method_practitioner`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method_practitioner` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of conference dates for patient shortlist';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`patientreview`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`patientreview` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`patientreview` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` LONGTEXT NULL DEFAULT NULL,
  `patient` BIGINT UNSIGNED NOT NULL,
  `healthcareprovider_specialty_treatment_method_practitioner` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_pr_patient_idx` (`patient` ASC),
  INDEX `fk_pr_hcpstmp_idx` (`healthcareprovider_specialty_treatment_method_practitioner` ASC),
  CONSTRAINT `fk_pr_patient`
    FOREIGN KEY (`patient`)
    REFERENCES `DOCTOR_GLOBE`.`patient` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pr_hcpstmp`
    FOREIGN KEY (`healthcareprovider_specialty_treatment_method_practitioner`)
    REFERENCES `DOCTOR_GLOBE`.`healthcareprovider_specialty_treatment_method_practitioner` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of reviews for a practitioner in a healthcareprovider';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`patientreviewratings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`patientreviewratings` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`patientreviewratings` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating_type` ENUM('Communication','Patience') NOT NULL,
  `rating` TINYINT NOT NULL DEFAULT '1',
  `patient_review` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_patientreviewrating_pr_idx` (`patient_review` ASC),
  CONSTRAINT `fk_patientreviewrating_pr`
    FOREIGN KEY (`patient_review`)
    REFERENCES `DOCTOR_GLOBE`.`patientreview` (`patient`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Ratings per area';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`practitioner_language`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`practitioner_language` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`practitioner_language` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `language` CHAR(2) NOT NULL,
  `practitioner` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_practitioner_language_p_idx` (`practitioner` ASC),
  CONSTRAINT `fk_practitioner_language_p`
    FOREIGN KEY (`practitioner`)
    REFERENCES `DOCTOR_GLOBE`.`practitioner` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Mapping of practitioners and languages';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`specialty_treatment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`specialty_treatment` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`specialty_treatment` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `treatment` BIGINT UNSIGNED NOT NULL,
  `specialty` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `fk_specialty_treatment_treatment_idx` (`treatment` ASC),
  INDEX `fk_specialty_treatment_specialty_idx` (`specialty` ASC),
  CONSTRAINT `fk_specialty_treatment_treatment`
    FOREIGN KEY (`treatment`)
    REFERENCES `DOCTOR_GLOBE`.`treatment` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_specialty_treatment_specialty`
    FOREIGN KEY (`specialty`)
    REFERENCES `DOCTOR_GLOBE`.`specialty` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Mapping between specialities and treatments';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`translations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`translations` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`translations` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang` CHAR(2) NOT NULL,
  `label` VARCHAR(255) NOT NULL,
  `text` LONGTEXT NULL DEFAULT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_lang_label` (`lang` ASC, `label` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'List of translations';


-- -----------------------------------------------------
-- Table `DOCTOR_GLOBE`.`treatment_alias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DOCTOR_GLOBE`.`treatment_alias` ;

CREATE TABLE IF NOT EXISTS `DOCTOR_GLOBE`.`treatment_alias` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `treatment` BIGINT UNSIGNED NOT NULL,
  `last_dt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_translation_title` (`name` ASC),
  INDEX `fk_ta_treatment_idx` (`treatment` ASC),
  CONSTRAINT `fk_ta_treatment0`
    FOREIGN KEY (`treatment`)
    REFERENCES `DOCTOR_GLOBE`.`treatment` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Alias for treatments';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

CREATE TABLE `document` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='List of documents';

CREATE TABLE `treatment_document` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `treatment` bigint(20) unsigned NOT NULL,
  `document` bigint(20) unsigned NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_treatment_document_treatment_idx` (`treatment`),
  KEY `fk_treatment_document_document_idx` (`document`),
  CONSTRAINT `fk_treatment_document_treatment` FOREIGN KEY (`treatment`) REFERENCES `treatment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_treatment_document_document` FOREIGN KEY (`document`) REFERENCES `document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mapping between treatments and documents';


-- Start modification here

alter table patientconference add column timezone varchar(255) null after patient_case;
alter table patientcasebooking add column timezone varchar(255) null after healthcareprovider_specialty_treatment_method_practitioner;
alter table patient add column url varchar(255) null after active;

alter table healthcareprovider modify address_1 varchar(255) null;
alter table healthcareprovider modify zip_code varchar(255) null;
alter table healthcareprovider modify currency varchar(3) not null DEFAULT 'USD';


alter table healthcareprovider_specialty add column active tinyint(1) NOT NULL DEFAULT 1 after healthcareprovider;
alter table healthcareprovider add column cc_email tinyint(1) NOT NULL DEFAULT 0 after currency;

-- 7/30/2015 changes:
alter table healthcareprovider add column insurance_cap double null after cc_email;
alter table healthcareprovider add column policy_file varchar(255) null after insurance_cap;
alter table healthcareprovider add column is_policy_covered_practitioners tinyint(1) not null DEFAULT 0 after policy_file;

CREATE TABLE `healthcareprovider_practitioner` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mobile` varchar(255) NULL,
  `email` varchar(255) NOT NULL,
  `description` text NULL,
  `insurance_cap` double NULL,
  `currency` char(3) NOT NULL DEFAULT 'USD',
  `policy_file` varchar(255) NULL,
  `healthcareprovider` bigint(20) unsigned NOT NULL,
  `practitioner` bigint(20) unsigned NOT NULL,
  `type` bigint(20) unsigned NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),  
  KEY `fk_healthcareprovider_practitioner_healthcareprovider_idx` (`healthcareprovider`),
  KEY `fk_healthcareprovider_practitioner_practitioner_idx` (`practitioner`),
  KEY `fk_healthcareprovider_practitioner_type_idx` (`type`),
  CONSTRAINT `fk_healthcareprovider_practitioner_healthcareprovider` FOREIGN KEY (`healthcareprovider`) REFERENCES `healthcareprovider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_healthcareprovider_practitioner_practitioner` FOREIGN KEY (`practitioner`) REFERENCES `practitioner` (`id`),
  CONSTRAINT `fk_healthcareprovider_practitioner_type` FOREIGN KEY (`type`) REFERENCES `practitionertype` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mapping between healthcareprovider and practitioner';


-- 8/11 changes:
alter table healthcareprovider modify insurance_cap decimal(32,2) null;
alter table healthcareprovider_practitioner modify insurance_cap decimal(32,2) null;

alter table patientconference modify column status enum('Created','Proposed','Rejected','Accepted','Confirmed','Delete') not null DEFAULT 'Accepted';
alter table patientcasebooking modify column status enum('Open','Cancel','Closed','Delete') not null;

alter table healthcareprovider modify column is_policy_covered_practitioners tinyint(1) null default 0;

alter table patientcasefile add column name varchar(255) null after patient_case;

-- 9/19 changes
alter table healthcareprovider add column insurance_carrier varchar(255) null after is_policy_covered_practitioners;
alter table healthcareprovider add column policy_number varchar(255) null after insurance_carrier;
alter table healthcareprovider add column per_case_insurance_cap decimal(32,2) null after policy_number;

-- 10/10 and 10/16 changes (employer health insurance support)
CREATE TABLE `treatment_price` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  
  `price` double unsigned NOT NULL,  
  `city` bigint(20) unsigned NOT NULL,
  `currency` char(3) NOT NULL,
  `treatment` bigint(20) unsigned NOT NULL,
  `last_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `treatment_price_city` (`city`),  
  CONSTRAINT `treatment_price_city` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  KEY `treatment_price_treatment` (`treatment`),  
  CONSTRAINT `treatment_price_treatment` FOREIGN KEY (`treatment`) REFERENCES `treatment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- alter table treatment_price add column currency char(3) not null after price;

CREATE TABLE `corporatecompany_insurance` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `program_name` varchar(255) NOT NULL,
  `annual_oop` double unsigned DEFAULT '0',
  `deductible` double unsigned DEFAULT '0',
  `co_insurance` tinyint(3) unsigned DEFAULT '0',
  `corporate_company` bigint(20) unsigned NOT NULL,
  `last_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `corporatecompany_insurance_company` (`corporate_company`),
  CONSTRAINT `corporatecompany_insurance_company` FOREIGN KEY (`corporate_company`) REFERENCES `corporatecompany` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `employee_corporatecompany` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ytd_oop` double unsigned DEFAULT '0',
  `corporatecompany_insurance` bigint(20) unsigned NOT NULL,
  `patient` bigint(20) unsigned NOT NULL,
  `last_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `employee_corporatecompany_insurance` (`corporatecompany_insurance`),
  KEY `employee_corporatecompany_patient` (`patient`),
  CONSTRAINT `employee_corporatecompany_insurance` FOREIGN KEY (`corporatecompany_insurance`) REFERENCES `corporatecompany_insurance` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `employee_corporatecompany_patient` FOREIGN KEY (`patient`) REFERENCES `patient` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 10/20/2015
alter table city add column lat float(10,6) null after country;
alter table city add column lon float(10,6) null after lat;

-- 10/27/2015
alter table healthcareprovider_specialty_treatment_method_practitioner change column method_price anesthesia_price double not null default 0;

-- 11/25/2015
alter table healthcareprovider_specialty_treatment_method add column healthcareprovider_price double not null default 0 after healthcareprovider_specialty;

ALTER TABLE `patientcasefile` 
ADD COLUMN `treatment_document` BIGINT(20) unsigned NOT NULL AFTER `name`, 
ADD CONSTRAINT `fk_treatment_document_id` FOREIGN KEY (`id`) 
REFERENCES `treatment_document`(`id`); 

CREATE TABLE `treatment_numberofhotelnights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `treatment` bigint(20) unsigned NOT NULL,
  `city` bigint(20) unsigned NOT NULL,
  `before_days` int unsigned NOT NULL,
  `after_days` int unsigned NULL,
  `amount` double DEFAULT 0,
  `currency` char(3) NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_treatment_numberofholtelnights_treatment_idx` (`treatment`),
  KEY `fk_treatment_numberofholtelnights_city_idx` (`city`),  
  CONSTRAINT `fk_treatment_numberofholtelnights_treatment` FOREIGN KEY (`treatment`) REFERENCES `treatment` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_treatment_numberofholtelnights_city` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='List of treatment city hotels number of nights';

CREATE TABLE `city_dailyexpense` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  
  `city` bigint(20) unsigned NOT NULL,  
  `amount` double DEFAULT 0,
  `currency` char(3) NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),  
  KEY `fk_city_dailyexpense_city_idx` (`city`),   
  CONSTRAINT `fk_city_daily_city` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='List of city daily expense';

CREATE TABLE `fromtoflightcost` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  
  `from_city` bigint(20) unsigned NOT NULL,
  `to_city` bigint(20) unsigned NOT NULL,    
  `amount` double DEFAULT 0,
  `currency` char(3) NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),  
  KEY `fk_fromtoflightcost_city_idx` (`from_city`),   
  KEY `fk_fromtoflightcost_city_idxx` (`to_city`),   
  CONSTRAINT `fk_fromtoflightcost_city` FOREIGN KEY (`from_city`) REFERENCES `city` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_fromtoflightcost_cities` FOREIGN KEY (`to_city`) REFERENCES `city` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='List of flight cost';

-- 11/27/2015
alter table patientcasefile drop column treatment_document;
alter table patientcasefile drop Foreign key fk_treatment_document_id;

ALTER TABLE `patientcasefile` ADD COLUMN `treatment_document` BIGINT(20) unsigned NOT NULL AFTER `name`; 

-- 12/01/2015
-- drop table patientcase_treatment_questioneer;
-- drop table treatment_questioneer;
-- drop table questioneer;
CREATE TABLE `questionnaire` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,  
  `name` varchar(255) NOT NULL,
  `type` ENUM('Select','Radiobutton','Checkbox','Textbox','Textarea') NOT NULL,
  `value` varchar(255) NULL,  
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='List of questionnaire';

CREATE TABLE `treatment_questionnaire` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `treatment` bigint(20) unsigned NOT NULL,
  `questionnaire` bigint(20) unsigned NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_treatment_questionnaire_treatment_idx` (`treatment`),
  KEY `fk_treatment_questionnaire_questionnaire_idx` (`questionnaire`),
  CONSTRAINT `fk_treatment_questionnaire_treatment` FOREIGN KEY (`treatment`) REFERENCES `treatment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_treatment_questionnaire_questionnaire` FOREIGN KEY (`questionnaire`) REFERENCES `questionnaire` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mapping between treatments and questionnaire';

CREATE TABLE `patientcase_treatment_questionnaire` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `treatment_questionnaire` bigint(20) unsigned NOT NULL,
  `patientcase` bigint(20) unsigned NOT NULL,
  `value` varchar(255) NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_patientcase_treatment_questionnaire_treatmentquestionnaire_id` (`treatment_questionnaire`),
  KEY `fk_patientcase_treatment_questionnaire_patientcase_id` (`patientcase`),
  CONSTRAINT `fk_patientcase_treatment_questionnaire_treatmentquestionnaire` FOREIGN KEY (`treatment_questionnaire`) REFERENCES `treatment_questionnaire` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_patientcase_treatment_questionnaire_patientcase` FOREIGN KEY (`patientcase`) REFERENCES `patientcase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mapping between treatments questionnaire and patientcase';

-- 12/03/2015
drop table exchange_rate;

CREATE TABLE `exchange_rate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_cur` char(3) NOT NULL,
  `to_cur` char(3) NOT NULL,
  `rate` double unsigned NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `k_from_to` (`from_cur`,`to_cur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of exchange rates';


-- 12/05/2015
alter table document add unique(name);

alter table patientcase add column list_price double not null default 0 after patient;
alter table patientcase add column youget_list_price double not null default 0 after list_price;
alter table patientcase add column bonus_list_price double not null default 0 after youget_list_price;
alter table patientcase add column quote_price double null default 0 after bonus_list_price;
alter table patientcase add column youget_quote_price double null default 0 after quote_price;
alter table patientcase add column bonus_quote_price double null default 0 after youget_quote_price;
alter table patientcase add column billed_price double null default 0 after bonus_quote_price;
alter table patientcase add column youget_billed_price double null default 0 after billed_price;
alter table patientcase add column bonus_billed_price double null default 0 after youget_billed_price;

-- 12/07/2015
alter table patient modify password varchar(40) not null;
alter table practitioner modify password varchar(40) not null;
alter table user modify password varchar(40) not null;

-- 12/18/2015
CREATE TABLE `history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `original_data` varchar(255) NULL,
  `modify_data` varchar(255) NOT NULL,
  `modify_date` datetime NOT NULL,  
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of history';

alter table patientcasefile change treatment_document document bigint(20) unsigned not null;


-- 12/19/2015
drop table history;
CREATE TABLE `history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `original_data` text NULL,
  `modify_data` text NULL,
  `modify_date` datetime NOT NULL,  
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of history';


-- 1/5/2016
alter table treatment_numberofhotelnights add column treatment_days int(10) unsigned null after currency;

-- 1/6/2016
alter table healthcareprovider drop column us_certified;
alter table practitioner change address address_1 varchar(255) null;
alter table practitioner add address_2 varchar(255) null after address_1;
alter table practitioner add zip_code varchar(255) null after address_2;
alter table practitioner add column `city` BIGINT(20) unsigned NULL AFTER `medical_license`, ADD CONSTRAINT `fk_practitioner_city` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON UPDATE CASCADE;
alter table healthcareprovider_specialty_treatment_method_practitioner change years_practiced years_practiced smallint(5) unsigned null;

-- 1/12/2016
rename table treatment_numberofhotelnights to treatmentdays;
alter table treatmentdays drop FOREIGN KEY fk_treatment_numberofholtelnights_city;
alter table treatmentdays drop column city;
alter table treatmentdays drop column amount;
alter table treatmentdays drop column currency;

alter table patientcase drop column list_price;
alter table patientcase drop column youget_list_price;
alter table patientcase drop column bonus_list_price;
alter table patientcase drop column quote_price;
alter table patientcase drop column youget_quote_price;
alter table patientcase drop column bonus_quote_price;
alter table patientcase drop column billed_price;
alter table patientcase drop column youget_billed_price;
alter table patientcase drop column bonus_billed_price;

CREATE TABLE `patientcase_price` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `list_price` double NOT NULL DEFAULT 0,
  `youget_list_price` double NOT NULL DEFAULT 0,
  `bonus_list_price` double NOT NULL DEFAULT 0,
  `quote_price` double NULL DEFAULT 0,
  `youget_quote_price` double NULL DEFAULT 0,
  `bonus_quote_price` double NULL DEFAULT 0,
  `billed_price` double NULL DEFAULT 0,
  `youget_billed_price` double NULL DEFAULT 0,
  `bonus_billed_price` double NULL DEFAULT 0,
  `healthcareprovider_specialty_treatment_method_practitioner` bigint(20) unsigned NOT NULL,
  `patient_case` bigint(20) unsigned NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_patientcase_price_pc_idx` (`patient_case`),
  KEY `fk_patientcase_price_hcpstmp_idx` (`healthcareprovider_specialty_treatment_method_practitioner`),
  CONSTRAINT `fk_patientcase_price_hcpstmp` FOREIGN KEY (`healthcareprovider_specialty_treatment_method_practitioner`) REFERENCES `healthcareprovider_specialty_treatment_method_practitioner` (`id`),
  CONSTRAINT `fk_patientcase_price_pc` FOREIGN KEY (`patient_case`) REFERENCES `patientcase` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='List of price for patientcase practitioner list';

-- 1/27/2016  -- History table updates (adding user to history table)
alter table history add column user_type varchar(255) null after modify_date;
alter table history add column user bigint(20) null after user_type;

-- 2/21/2016  -- Add support to DRG and insurance plans
alter table treatment add column drg_definition varchar(255) null after name;
alter table treatment add column drg_code varchar(5) null after drg_definition;

alter table healthcareprovider add column drg_id char(10) null after city;
alter table healthcareprovider add column hrr_description varchar(255) null after drg_id;

ALTER TABLE `healthcareprovider_specialty_treatment_method_practitioner` 
ADD COLUMN `corporatecompany_insurance` BIGINT(20) unsigned NULL AFTER `healthcareprovider_specialty_treatment_method`, 
ADD CONSTRAINT `fk_hstmp_corporatecompany_insurance` FOREIGN KEY (`corporatecompany_insurance`) REFERENCES `corporatecompany_insurance` (`id`);

-- 3/11/2016  -- Add support to DRG and insurance plans
alter table healthcareprovider add column aha_id char(10) null after hrr_description;
alter table healthcareprovider add column aha_name varchar(255) null after aha_id;
alter table healthcareprovider add column admin_title varchar(255) null after aha_name;

-- 4/17/2016  -- Add support to DRG and insurance plans
alter table patient add column lat float(10,6) null after city;
alter table patient add column lon float(10,6) null after lat;
alter table treatment add column usnews_name varchar(255) null after drg_code;

-- 4/28/2016  -- 
alter table patientcase_price change youget_list_price youpay_list_price double null default 0;
alter table patientcase_price change youget_quote_price youpay_quote_price double null default 0;
alter table patientcase_price change youget_billed_price youpay_billed_price double null default 0;

-- 4/28/2016  -- Added by mistake. Should be removed:
alter table treatment_price add column flight_price double unsigned not null default 0 after treatment;

-- 5/7/2016  -- Destination cost logic + UI bug fixes
alter table treatment_price drop column flight_price;
drop table fromtoflightcost;
drop table treatment_price;
drop table city_dailyexpense;
CREATE TABLE `treatment_price` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `price` double unsigned NOT NULL DEFAULT 0,
  `country` bigint(20) unsigned NOT NULL,
  `currency` char(3) NOT NULL,
  `treatment` bigint(20) unsigned NOT NULL,
  `last_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `treatment_price_country` (`country`),
  KEY `treatment_price_treatment` (`treatment`),
  CONSTRAINT `treatment_price_country` FOREIGN KEY (`country`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `treatment_price_treatment` FOREIGN KEY (`treatment`) REFERENCES `treatment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

ALTER TABLE `treatment_price`  drop COLUMN `country` ,drop FOREIGN KEY `treatment_price_country` ;
ALTER TABLE `treatment_price` 
ADD COLUMN `city` BIGINT(20) unsigned NULL AFTER `price`, 
ADD CONSTRAINT `fk_treatment_price_city` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `daily_expense` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double unsigned NOT NULL DEFAULT 0,
  `country` bigint(20) unsigned NOT NULL,
  `currency` char(3) NOT NULL,  
  `last_dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `daily_expense_country` (`country`),  
  CONSTRAINT `daily_expense_country` FOREIGN KEY (`country`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

ALTER TABLE `treatmentdays` 
ADD COLUMN `country` BIGINT(20) unsigned NULL AFTER `treatment_days`, 
ADD CONSTRAINT `fk_treatmentdays_country` FOREIGN KEY (`country`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Support Terms and Conditions 5/17/2016
alter table patient add column tc_checked tinyint(1) not null DEFAULT 0 after lon;
alter table patient change tc_checked user_agreement tinyint(1) NOT NULL DEFAULT 0;

-- Support White Label 6/27/2016
CREATE TABLE `association` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='List of associations';

CREATE TABLE `associate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(32) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `association` bigint(20) unsigned DEFAULT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_email` (`email`),
  KEY `association` (`association`),
  CONSTRAINT `associate_ibfk_1` FOREIGN KEY (`association`) REFERENCES `association` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='List of associates';

alter table corporatecompany drop column whitelabel;

ALTER TABLE `corporatecompany` 
ADD COLUMN `association` BIGINT(20) unsigned NULL AFTER `city`, 
ADD CONSTRAINT `fk_corporatecompany_association` FOREIGN KEY (`association`) REFERENCES `association` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table corporatecompany add column theme varchar(255) null after association;

-- 6/29/2016  -- White label support for association
alter table associate add column whitelabel_url varchar(255) null after association;
alter table associate add column theme varchar(255) null after whitelabel_url;

-- 7/01/2016  -- white label move from associate to association + White lable and theme improvements
alter table associate drop column whitelabel_url;
alter table associate drop column theme;


alter table association add column whitelabel_url varchar(255) not null after name;
alter table association add column theme varchar(255) not null after whitelabel_url;

alter table corporatecompany modify column whitelabel_url varchar(255) not null;
alter table corporatecompany modify column theme varchar(255) not null;

-- 7/16/2016  -- Support additional fields for Claim-doc setup
alter table patient drop column url;

alter table employee_corporatecompany add column employee_id varchar(255) null after patient;
alter table employee_corporatecompany add column policy_id varchar(255) null after employee_id;
alter table employee_corporatecompany add column email varchar(255) null after policy_id;

alter table associate add column phone_1 varchar(255) null after association;
alter table associate add column mobilephone_1 varchar(255) null after phone_1;

alter table corporatecompany_insurance add column type varchar(255) null after corporate_company;
alter table corporatecompany_insurance add column hsa_compatible tinyint(1) DEFAULT 0 after type;

alter table corporatecompany add column ein varchar(255) null after theme;
alter table corporatecompany add column first_name varchar(255) null after ein;
alter table corporatecompany add column last_name varchar(255) null after first_name;

-- 7/18/2016  -- Add some restrcitions to prevent duplicate names
alter table corporatecompany ADD CONSTRAINT uk_ein UNIQUE (ein);
alter table corporatecompany ADD CONSTRAINT uk_name UNIQUE (name);
alter table corporatecompany_insurance ADD CONSTRAINT uk_programname_corporatecompany UNIQUE (program_name, corporate_company);

-- 8/2/2016  -- Support dependent
ALTER TABLE `patient` 
      ADD COLUMN `dependent` BIGINT(20) unsigned NULL AFTER `user_agreement`, 
      ADD CONSTRAINT `fk_corporatecompany_dependent` FOREIGN KEY (`dependent`) REFERENCES `patient` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `patient` ADD COLUMN `ytd_oop` double unsigned NULL DEFAULT 0 AFTER `dependent`; 

ALTER TABLE employee_corporatecompany DROP COLUMN ytd_oop;

-- 9/15/2016  -- Support a verfied field to make sure doctors entered by users are verified
alter table healthcareprovider_specialty_treatment_method_practitioner add column verified tinyint(1) not null Default 0 after corporatecompany_insurance;

-- 9/25/2016  --change for unique practitioner inside healthcareprovider_specialty_treatment_method_practitioner.
alter table healthcareprovider_specialty_treatment_method_practitioner add unique uq_hstmp_hstm_p (healthcareprovider_specialty_treatment_method,practitioner);

-- 12/29/2016  -- API
CREATE TABLE `api_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,  
  `email` varchar(255) NULL,
  `user_name` varchar(255) NULL,
  `password` varchar(40) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `last_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='List of users for api console';

-- 07/15/2017  -- Adding USNews doctor link
alter table specialty add column usnews_doctor_link varchar(255) null after name;
