-- -----------------Depsoit Money ---------------
DELIMITER //

CREATE PROCEDURE DepositMoney(
    IN acc_id INT,
    IN dep_amount DECIMAL(10,2)
)
BEGIN

    UPDATE Account
    SET balance = balance + dep_amount
    WHERE account_id = acc_id;

    INSERT INTO Transactions(account_id, transaction_type, amount)
    VALUES(acc_id, 'Deposit', dep_amount);

END //

DELIMITER ;

-- -----------Prevent Negative Money ----------

DELIMITER //

CREATE TRIGGER prevent_negative_balance
BEFORE UPDATE ON Account
FOR EACH ROW
BEGIN
    IF NEW.balance < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient Balance';
    END IF;
END //

DELIMITER ;

-- ------------Withdraw Money -----------------

DELIMITER //

create procedure WithdrawMoney(
IN acc_id int,
IN withdraw_amount decimal(10,2)
)
BEGIN
	update Account
    SET balance = balance - withdraw_amount 
    where account_id = acc_id;
    
    insert into transactions(account_id, transaction_type, amount)
    values(acc_id, 'withdrawal', withdraw_amount);
    
END //

DELIMITER ;