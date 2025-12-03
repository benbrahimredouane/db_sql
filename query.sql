--1@block insert a customer

INSERT into customers(full_name, email, phone)
VALUES ("hakim soussi", "hakim@gmail.com", "0602150702");

--2@block modify  number of a customer
UPDATE customers SET phone = "0604620790"
WHERE phone = "0612345678";

SELECT * FROM customers;

--3@block show all the customers
select * from customers;

--4@block show f name and emails of the customers

SELECT full_name,email FROM customers;

--5@block show all accounts
SELECT * from accounts;

--6@block show accounts numbers

SELECT account_number from accounts;

--7@block show all transactios
SELECT * from transactions;

--8@block show all accounts with balance >10000
SELECT * from accounts WHERE balance>10000;

--9@block show accounts < = 0 
SELECT * FROM accounts WHERE balance <= 0;

--10@block show all transactions with type debit
select * from transactions WHERE transaction_type = "debit";

--11@block show all transactions with type credit
select * from transactions WHERE transaction_type = "credit";

--12@block show transactions where account_id = 1
SELECT * from transactions WHERE transaction_id = 1;

--13/ Display customers whose account is managed by advisor_id = 2
SELECT customers.*, accounts.advisors_id FROM CUSTOMERS JOIN accounts ON customers.customer_id = accounts.customers_id WHERE advisors_id = 2;
