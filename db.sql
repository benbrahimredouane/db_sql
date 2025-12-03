-- create tha database
DROP DATABASE IF EXISTS bankly;
CREATE DATABASE bankly;
USE bankly;


--create tables---------------------------------
-- delete table if it exists
DROP TABLE IF EXISTS `accounts`;
--create table account
CREATE TABLE `accounts` (
    `account_id` int NOT NULL AUTO_INCREMENT,
    `account_number` varchar(30) NOT NULL,
    `balance` int DEFAULT NULL,
    `account_type` enum('Checking', 'Savings', 'Business') DEFAULT NULL,
    `customer_id` int DEFAULT NULL,
    `advisor_id` int DEFAULT NULL,
    PRIMARY KEY (`account_id`),
    FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
    FOREIGN KEY (`advisor_id`) REFERENCES `advisors` (`advisor_id`)
);

--@block insert data to table accounts
INSERT INTO `accounts` 
VALUES (1001,'ACC-1001',4000,'Checking',1,1),
(1002,'ACC-1002',20000,'Savings',2,2),
(1003,'ACC-1003',7500,'Business',3,3),
(1004,'ACC-1004',7550,'Checking',4,1),
(1005,'ACC-1005',12000,'Savings',5,2);


--@block
--delete table if iy exists
DROP TABLE IF EXISTS `advisors`;

--create table advisors
CREATE TABLE `advisors` (
  `advisor_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`advisor_id`)
);
-- fill data
INSERT INTO `advisors`
VALUES
 (1,'sara el9zdir','sarahel9zdir@gmail.com'),
 (2,'bochra el9rtit','el9rtit@gmail.com'),
 (3,'hakimos benouli','hakimos@gmail.com'),
 (4,'monssef bothndousst','bouthndousst@gmail.com');


--@block create table custoemrs 

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
);
