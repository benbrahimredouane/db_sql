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