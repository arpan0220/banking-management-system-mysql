-- ----------------Create Table ---------------
CREATE TABLE Branch (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    IFSC_Code VARCHAR(20)
);
    
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    phone VARCHAR(20),
    email VARCHAR(50) UNIQUE,
    address VARCHAR(225)
);

CREATE TABLE Account (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    branch_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12 , 2 ) DEFAULT 0,
    open_date DATE,
    FOREIGN KEY (customer_id)
        REFERENCES Customer (customer_id),
    FOREIGN KEY (branch_id)
        REFERENCES Branch (branch_id)
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    transaction_type VARCHAR(20),
    amount DECIMAL(12 , 2 ),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id)
        REFERENCES Account (account_id)
);
    
CREATE TABLE Loan (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    loan_type VARCHAR(20),
    loan_amount DECIMAL(12 , 2 ),
    interest_rate DECIMAL(5 , 2 ),
    loan_status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES Customer (customer_id)
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_id INT,
    employee_name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10 , 2 ),
    FOREIGN KEY (branch_id)
        REFERENCES Branch (branch_id)
);


