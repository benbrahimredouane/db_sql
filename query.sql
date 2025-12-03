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
SELECT customers.*, accounts.advisors_id 
FROM CUSTOMERS 
JOIN accounts ON customers.customer_id = accounts.customers_id 
WHERE advisors_id = 2;

--14/ Display accounts with account_type = "Savings"
SELECT FROM accounts WHERE account_type = "Savings";

--15/ Display transactions with an amount ≥ 500
SELECT * FROM transactions WHERE ammount >= 500;

--16/ Display transactions with an amount between 100 and 1000
SELECT * FROM transactions WHERE ammount BETWEEN 100 AND 1000;

--17/ Display accounts with customer_id = 1
SELECT * FROM accounts WHERE customers_id = 1;

--18/ Display accounts sorted by balance (ascending order)
SELECT * FROM accounts ORDER BY balance ASC;

--19/ Display transactions sorted by amount (descending order)
SELECT * FROM transactions ORDER BY ammount DESC;

--20/ Display the 5 largest transactions
SELECT * FROM transactions ORDER BY ammount DESC LIMIT 5;

--21/ Display all transactions sorted by transaction date (descending)
SELECT * FROM transactions ORDER BY transaction_date DESC;

--22/ Display the last 3 transactions
SELECT * FROM transactions ORDER BY transaction_date DESC LIMIT 3;

--23/ Display each account with the customer name and the advisor name (JOIN)
SELECT accounts.account_id, accounts.account_number, accounts.balance, accounts.account_type, customers.full_name, advisors.full_name 
FROM accounts 
JOIN customers
 ON accounts.customers_id = customers.customer_id 
 JOIN advisors 
 ON  accounts.advisors_id = advisors.advisors_id;
