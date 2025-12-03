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

--fill table customers
INSERT into `customers`
VALUES
(1,'ayman julal','aymane@example.com','0612345678','2025-01-01'),
(2,'Jane Smith','jane@example.com','0698765432','2025-02-15'),
(3,'Alice Brown','alice@example.com','0654321987','2025-03-10'),
(4,'Bob Johnson','bob@example.com','0623456789','2025-04-05'),
(5,'Redouane Benbrahim','benbrahimredouane664@gmail.com','0604620790','2025-04-05');


--@create table transactions

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `amount` int DEFAULT NULL,
  `transaction_type` enum('debit','credit') DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `account_id` (`account_id`),
  FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`)
);

