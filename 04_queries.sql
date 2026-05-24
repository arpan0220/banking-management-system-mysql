USE banking_management_system;

-- ====================================
-- View Employee Details
-- ====================================

SELECT
    e.employee_id,
    e.employee_name,
    e.position,
    e.salary,
    b.branch_name
FROM Employee e
JOIN Branch b
    ON e.branch_id = b.branch_id;

-- ====================================
-- View All Customers
-- ====================================

SELECT *
FROM Customer;

-- ====================================
-- Customer Account Details
-- ====================================

SELECT
    c.first_name,
    c.last_name,
    a.account_type,
    a.balance
FROM Customer c
JOIN Account a
    ON c.customer_id = a.customer_id;

-- ====================================
-- Total Bank Balance
-- ====================================

SELECT
    SUM(balance) AS total_bank_balance
FROM Account;

-- ====================================
-- Transaction History
-- ====================================

SELECT
    a.account_id,
    t.transaction_type,
    t.amount,
    t.transaction_date
FROM Account a
JOIN Transactions t
    ON a.account_id = t.account_id;

-- ====================================
-- Customers with Loans
-- ====================================

SELECT
    c.first_name,
    c.last_name,
    l.loan_type,
    l.loan_amount
FROM Customer c
JOIN Loan l
    ON c.customer_id = l.customer_id;

-- ====================================
-- Create View for Customer Accounts
-- ====================================

CREATE VIEW customer_account_details AS
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.account_id,
    a.account_type,
    a.balance
FROM Customer c
JOIN Account a
    ON c.customer_id = a.customer_id;

-- ====================================
-- View Customer Account Details
-- ====================================

SELECT *
FROM customer_account_details;

-- ====================================
-- Top Customers by Balance
-- ====================================

SELECT
    c.first_name,
    c.last_name,
    a.balance
FROM Customer c
JOIN Account a
    ON c.customer_id = a.customer_id
ORDER BY a.balance DESC;

-- ====================================
-- Average Account Balance
-- ====================================

SELECT
    AVG(balance) AS average_balance
FROM Account;

-- ====================================
-- Check Account Balance
-- ====================================

SELECT
    account_id,
    balance
FROM Account
WHERE account_id = 1;

-- ====================================
-- Deposit Money Procedure Test
-- ====================================

CALL DepositMoney(1, 5000);

-- ====================================
-- Withdraw Money Procedure Test
-- ====================================

CALL WithdrawMoney(1, 2000);

-- ====================================
-- Verify Updated Balance
-- ====================================

SELECT
    account_id,
    balance
FROM Account
WHERE account_id = 1;

-- ====================================
-- View All Accounts
-- ====================================

SELECT *
FROM Account;