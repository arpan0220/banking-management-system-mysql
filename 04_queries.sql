-- select * from customer;

-- ------------ -- View Customer accounts --------

-- select c.first_name, c.last_name, a.account_type, a.balance
-- from customer c
-- JOIN account a
-- ON c.customer_id = a.customer_id;


-- select sum(balance) AS total_bank_balance from account;
use banking_management_system;
select a.account_id, t.transaction_type, t.amount, t.transaction_date
from Account a
JOIN Transactions t
on a.account_id = t.account_id;

select c.first_name, c.last_name, l.loan_type, l.loan_amount
from Customer c
JOIN Loan l
ON c.customer_id = l.customer_id;

-- CREATE VIEW customer_account_details AS
-- SELECT
--     c.customer_id,
--     c.first_name,
--     c.last_name,
--     a.account_id,
--     a.account_type,
--     a.balance
-- FROM Customer c
-- JOIN Account a
-- ON c.customer_id = a.customer_id;

select * from customer_account_details;

SELECT c.first_name, c.last_name, a.balance
FROM Customer c
JOIN Account a
ON c.customer_id = a.customer_id
ORDER BY a.balance DESC;

SELECT AVG(balance) AS average_balance
FROM Account;

SELECT * 
FROM Account
WHERE account_id = 1;

-- CALL DepositMoney(1, 5000);

SELECT * 
FROM Account
WHERE account_id = 1;

SELECT account_id, balance
FROM Account
WHERE account_id = 1;

-- UPDATE Account
-- SET balance = -1000
-- WHERE account_id = 1;

SELECT * 
FROM Account
WHERE account_id = 1;

UPDATE Account
SET balance = 50000
WHERE account_id = 1;

SELECT account_id, balance
FROM Account
WHERE account_id = 1;

-- CALL WithdrawMoney(1, 5000);

-- SELECT account_id, balance
-- FROM Account
-- WHERE account_id = 1;

SELECT * FROM Account;

-- CALL DepositMoney(4, 5000);
-- CALL WithdrawMoney(4, 50000);

-- SELECT account_id, balance
-- FROM Account
-- WHERE account_id = 1;