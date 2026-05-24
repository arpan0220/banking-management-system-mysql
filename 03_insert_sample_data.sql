INSERT INTO Branch(branch_name, city, IFSC_Code)
VALUES
('SBI Varanasi', 'Varanasi', 'SBI000123'),
('HDFC Delhi', 'Delhi', 'HDFC000456');

insert into Customer(first_name, last_name, date_of_birth, gender, phone, email, address) values 
('Arpan', 'Gupta','2003-05-10','Male','9876543219','arpan@gmail.com','Varanasi'),
('Rahul','Sharma','2001-02-15','Male','9123456789','rahul@gmail.com','Delhi');

INSERT INTO Account(customer_id, branch_id, account_type, balance, open_date)
VALUES
(1, 1, 'Savings', 50000, '2025-01-10'),
(2, 2, 'Current', 75000, '2025-02-15');

INSERT INTO Transactions(account_id, transaction_type, amount)
VALUES
(1, 'Deposit', 10000),
(1, 'Withdrawal', 2000),
(2, 'Deposit', 15000);

INSERT INTO Loan(customer_id, loan_type, loan_amount, interest_rate, loan_status)
VALUES
(1, 'Home Loan', 500000, 8.5, 'Approved'),
(2, 'Car Loan', 300000, 9.2, 'Pending');

INSERT INTO Customer(
    first_name,
    last_name,
    date_of_birth,
    gender,
    phone,
    email,
    address
)
VALUES(
    'Rohit',
    'Singh',
    '2002-03-12',
    'Male',
    '9876541111',
    'rohit@gmail.com',
    'Kanpur'
);

INSERT INTO Account(
    customer_id,
    branch_id,
    account_type,
    balance,
    open_date
)
VALUES(
    3,
    1,
    'Savings',
    10000,
    CURDATE()
);