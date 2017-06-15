/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.18-0ubuntu0.16.04.1 : Database - now
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`now` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `now`;

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `country_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `countries` */

/*Table structure for table `coupons` */

DROP TABLE IF EXISTS `coupons`;

CREATE TABLE `coupons` (
  `coupon_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `discount` decimal(4,2) NOT NULL DEFAULT '0.00',
  `discount_percent` decimal(2,0) NOT NULL DEFAULT '0',
  `quantity` bigint(20) NOT NULL DEFAULT '0',
  `expiry_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `redeemable_role_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '0=all',
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `coupons` */

insert  into `coupons`(`coupon_id`,`code`,`discount`,`discount_percent`,`quantity`,`expiry_date`,`status`,`redeemable_role_id`) values (8,'3de23',23.00,0,0,'2015-05-05 00:00:00',0,0);
insert  into `coupons`(`coupon_id`,`code`,`discount`,`discount_percent`,`quantity`,`expiry_date`,`status`,`redeemable_role_id`) values (10,'83691',23.00,0,0,'2015-05-13 00:00:00',0,0);
insert  into `coupons`(`coupon_id`,`code`,`discount`,`discount_percent`,`quantity`,`expiry_date`,`status`,`redeemable_role_id`) values (11,'6dbd2',10.00,0,0,'2015-05-29 00:00:00',0,0);
insert  into `coupons`(`coupon_id`,`code`,`discount`,`discount_percent`,`quantity`,`expiry_date`,`status`,`redeemable_role_id`) values (12,'147eb',20.00,0,0,'2015-10-08 00:00:00',0,0);
insert  into `coupons`(`coupon_id`,`code`,`discount`,`discount_percent`,`quantity`,`expiry_date`,`status`,`redeemable_role_id`) values (15,'0e4a2',30.00,0,0,'2015-11-13 00:00:00',0,0);

/*Table structure for table `coupons_used` */

DROP TABLE IF EXISTS `coupons_used`;

CREATE TABLE `coupons_used` (
  `coupon_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `offer_id` bigint(20) NOT NULL DEFAULT '0',
  `used_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `coupons_used` */

/*Table structure for table `feedbacks` */

DROP TABLE IF EXISTS `feedbacks`;

CREATE TABLE `feedbacks` (
  `feedback_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `feedback` text,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

/*Data for the table `feedbacks` */

insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (3,77,'');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (4,46,'helllo feedback');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (5,51,'Wry ugh chhhhb sdtygg');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (6,51,'Wry ugh chhhhb sdtygg');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (9,92,'Please comment here');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (10,92,' ');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (11,92,' ');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (12,92,'Please comment here');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (13,180,'testing this feedback');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (14,180,'testing this feedback');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (15,180,'testing this feedback');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (16,180,'tesing');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (17,180,'testing');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (18,180,'testn');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (19,180,'ehnef');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (20,180,'jfjk');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (21,180,'dkfhi');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (22,180,'fk');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (23,180,'fkeopk');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (24,180,' ');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (27,231,'Go for testing');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (29,231,'Chris iOS');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (30,231,'Best');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (39,48,'ewr');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (93,437,'Hi there!');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (96,445,'Andy test');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (98,423,'Hugh');
insert  into `feedbacks`(`feedback_id`,`user_id`,`feedback`) values (99,436,'hhhh');

/*Table structure for table `interests` */

DROP TABLE IF EXISTS `interests`;

CREATE TABLE `interests` (
  `interest_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `interest` varchar(200) CHARACTER SET latin1 NOT NULL,
  `icon` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`interest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `interests` */

insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (1,'Travel','Travel.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (2,'Beauty','Beauty.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (3,'Automobile','Automobile.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (4,'Communication','Communication.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (5,'IT','Information-tech.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (6,'Laptop','Laptop.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (7,'Pets','Pets.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (8,'Science','Science.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (9,'Business','Business.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (10,'Consulting','Consulting.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (11,'Fashion','Fashion.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (12,'Services','Services.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (13,'Eco Friendly','Eco-Friendly.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (14,'Education','Education.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (15,'Economics','Economics.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (16,'Media','Media.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (17,'Reading','Reading.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (18,'Real Estate','Real-estate.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (19,'Luxury','Luxury.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (20,'Jewlery','Jewlery.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (21,'Kids','Kids.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (22,'Sports','Sports.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (23,'Gardening','Gardening.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (24,'Entertainment','Entertainment.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (25,'Health','Health.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (26,'Legal','Legal.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (27,'Furniture','Furniture.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (28,'Household','Household.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (29,'Food & Drinks','Food-&-Drinks.png',NULL);
insert  into `interests`(`interest_id`,`interest`,`icon`,`date_created`) values (30,'Electronics','Electronics.png',NULL);

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `language_id` bigint(20) NOT NULL,
  `language` varchar(200) NOT NULL,
  `alias` varchar(10) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `languages` */

insert  into `languages`(`language_id`,`language`,`alias`,`icon`,`date_created`,`is_default`,`is_active`) values (1,'English',NULL,NULL,'2015-02-12 00:00:00',0,0);
insert  into `languages`(`language_id`,`language`,`alias`,`icon`,`date_created`,`is_default`,`is_active`) values (2,'Arabic',NULL,NULL,'2015-02-12 00:00:00',0,0);
insert  into `languages`(`language_id`,`language`,`alias`,`icon`,`date_created`,`is_default`,`is_active`) values (3,'German',NULL,NULL,'2015-02-12 00:00:00',0,0);

/*Table structure for table `languages_primary_words` */

DROP TABLE IF EXISTS `languages_primary_words`;

CREATE TABLE `languages_primary_words` (
  `word_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `word` text,
  PRIMARY KEY (`word_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `languages_primary_words_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `languages_primary_words` */

/*Table structure for table `languages_words` */

DROP TABLE IF EXISTS `languages_words`;

CREATE TABLE `languages_words` (
  `word_id` bigint(20) NOT NULL,
  `primary_word_id` bigint(20) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `word` text NOT NULL,
  PRIMARY KEY (`word_id`),
  KEY `primary_word_id` (`primary_word_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `languages_words_ibfk_1` FOREIGN KEY (`primary_word_id`) REFERENCES `languages_primary_words` (`word_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `languages_words_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`language_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `languages_words` */

/*Table structure for table `offers` */

DROP TABLE IF EXISTS `offers`;

CREATE TABLE `offers` (
  `offer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `model` varchar(50) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `description` varchar(160) NOT NULL,
  `product_link` varchar(255) NOT NULL,
  `start_date` bigint(20) NOT NULL DEFAULT '0',
  `end_date` bigint(20) NOT NULL DEFAULT '0',
  `gender` varchar(50) NOT NULL,
  `age_group` varchar(7) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `status` bigint(20) DEFAULT '0',
  `tz_offset` varchar(6) DEFAULT NULL,
  `is_approved` tinyint(4) NOT NULL DEFAULT '1',
  `latitude` double DEFAULT NULL,
  `longitude` double NOT NULL,
  `radius` float NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `contact_latitude` double DEFAULT NULL,
  `contact_longitude` double DEFAULT NULL,
  `contact_address` varchar(150) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `viewed` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `offers` */

/*Table structure for table `offers_businesses_locations` */

DROP TABLE IF EXISTS `offers_businesses_locations`;

CREATE TABLE `offers_businesses_locations` (
  `business_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `offer_id` bigint(20) NOT NULL DEFAULT '0',
  `outlet` varchar(200) DEFAULT NULL,
  `latitude` varchar(50) NOT NULL DEFAULT '',
  `longitude` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(150) DEFAULT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `offers_businesses_locations` */

/*Table structure for table `offers_interests` */

DROP TABLE IF EXISTS `offers_interests`;

CREATE TABLE `offers_interests` (
  `offer_id` bigint(20) NOT NULL DEFAULT '0',
  `interest_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `offers_interests` */

/*Table structure for table `offers_media` */

DROP TABLE IF EXISTS `offers_media`;

CREATE TABLE `offers_media` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `offer_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(40) DEFAULT NULL,
  `thumb` varchar(40) DEFAULT NULL,
  `media_type` varchar(50) DEFAULT NULL,
  `external_link` varchar(200) DEFAULT NULL,
  `is_main_image` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `offers_media` */

/*Table structure for table `offers_rates` */

DROP TABLE IF EXISTS `offers_rates`;

CREATE TABLE `offers_rates` (
  `offer_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_id` bigint(20) DEFAULT '0',
  `location_and_interest_rate` decimal(2,2) NOT NULL DEFAULT '0.00',
  `non_interest_rate` decimal(2,2) NOT NULL DEFAULT '0.00',
  `extra_day_rate` decimal(2,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`offer_rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `offers_rates` */

/*Table structure for table `offers_rates_payments` */

DROP TABLE IF EXISTS `offers_rates_payments`;

CREATE TABLE `offers_rates_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `offer_rate_id` bigint(20) NOT NULL DEFAULT '0',
  `offer_id` bigint(20) NOT NULL DEFAULT '0',
  `interest_and_location_users_quantity` bigint(20) NOT NULL DEFAULT '0',
  `location_users_quantity` bigint(20) NOT NULL DEFAULT '0',
  `extra_days_users_quantity` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `offers_rates_payments` */

/*Table structure for table `offers_statuses` */

DROP TABLE IF EXISTS `offers_statuses`;

CREATE TABLE `offers_statuses` (
  `status_id` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `offers_statuses` */

insert  into `offers_statuses`(`status_id`,`status`) values (1,'Draft');
insert  into `offers_statuses`(`status_id`,`status`) values (2,'Scheduled');
insert  into `offers_statuses`(`status_id`,`status`) values (3,'Sent');
insert  into `offers_statuses`(`status_id`,`status`) values (4,'Deleted');

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `payment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `offer_id` bigint(20) NOT NULL DEFAULT '0',
  `coupon_id` bigint(20) NOT NULL DEFAULT '0',
  `amount` decimal(6,2) NOT NULL DEFAULT '0.00',
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payments` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `roles` */

insert  into `roles`(`id`,`role`) values (1,'Super Admin');
insert  into `roles`(`id`,`role`) values (2,'Admin');
insert  into `roles`(`id`,`role`) values (3,'Dummy');
insert  into `roles`(`id`,`role`) values (4,'Consumer');
insert  into `roles`(`id`,`role`) values (5,'Marketeer');
insert  into `roles`(`id`,`role`) values (6,'Business');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  `facebook_id` bigint(20) DEFAULT '0',
  `fullname` varchar(100) NOT NULL,
  `business_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `about` varchar(160) DEFAULT NULL,
  `is_activated` tinyint(4) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `authtoken` varchar(40) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_deactivated` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

/*Table structure for table `users_devices` */

DROP TABLE IF EXISTS `users_devices`;

CREATE TABLE `users_devices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `device_id` varchar(255) NOT NULL,
  `device` varchar(50) DEFAULT NULL,
  `type` enum('IOS','ANDROID','WEB') DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `imei` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `users_devices_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_devices` */

/*Table structure for table `users_documents` */

DROP TABLE IF EXISTS `users_documents`;

CREATE TABLE `users_documents` (
  `document_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `utility_bill` varchar(40) NOT NULL,
  `business_letter` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `user_notified` tinyint(4) NOT NULL DEFAULT '0',
  `qr_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_documents` */

/*Table structure for table `users_interests` */

DROP TABLE IF EXISTS `users_interests`;

CREATE TABLE `users_interests` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `interest_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_interests` */

/*Table structure for table `users_locations` */

DROP TABLE IF EXISTS `users_locations`;

CREATE TABLE `users_locations` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `latitude` varchar(50) NOT NULL DEFAULT '',
  `longitude` varchar(50) NOT NULL DEFAULT '',
  `date_timestamp` bigint(20) NOT NULL DEFAULT '0',
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `time_zone` varchar(50) DEFAULT NULL,
  `tz_offset` varchar(6) DEFAULT NULL,
  `user_device_id` bigint(20) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `user_device_id` (`user_device_id`),
  CONSTRAINT `users_locations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_locations_ibfk_2` FOREIGN KEY (`user_device_id`) REFERENCES `users_devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_locations` */

/*Table structure for table `users_offers_favourites` */

DROP TABLE IF EXISTS `users_offers_favourites`;

CREATE TABLE `users_offers_favourites` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `offer_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_offers_favourites` */

/*Table structure for table `users_offers_spam` */

DROP TABLE IF EXISTS `users_offers_spam`;

CREATE TABLE `users_offers_spam` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `offer_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_offers_spam` */

/*Table structure for table `users_ratings` */

DROP TABLE IF EXISTS `users_ratings`;

CREATE TABLE `users_ratings` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `rater_id` bigint(20) NOT NULL DEFAULT '0',
  `rating` tinyint(4) NOT NULL DEFAULT '0',
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_ratings` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
