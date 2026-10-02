CREATE TABLE Account (
    Account_ID INT PRIMARY KEY,
    Account_Name VARCHAR(50),
    Account_Type VARCHAR(20),
    Balance INT
);

CREATE TABLE Account_Log (
    Log_ID INT AUTO_INCREMENT PRIMARY KEY,
    Account_ID INT,
    Action_Type VARCHAR(20),
    Action_Time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Account VALUES
(101, 'Diganth', 'Savings', 25000),
(102, 'Krishna', 'Savings', 35000),
(103, 'Sushanth', 'Current', 50000),
(104, 'Deepak', 'Savings', 40000),
(105, 'Chiranth', 'Current', 60000);

DELIMITER //

CREATE TRIGGER Before_Account_Insert
BEFORE INSERT ON Account
FOR EACH ROW
BEGIN
    IF NEW.Balance < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Balance cannot be negative';
    END IF;
END //

CREATE TRIGGER After_Account_Insert
AFTER INSERT ON Account
FOR EACH ROW
BEGIN
    INSERT INTO Account_Log(Account_ID, Action_Type)
    VALUES (NEW.Account_ID, 'INSERT');
END //

CREATE TRIGGER Before_Account_Update
BEFORE UPDATE ON Account
FOR EACH ROW
BEGIN
    IF NEW.Balance < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Updated balance cannot be negative';
    END IF;
END //

CREATE TRIGGER After_Account_Update
AFTER UPDATE ON Account
FOR EACH ROW
BEGIN
    INSERT INTO Account_Log(Account_ID, Action_Type)
    VALUES (NEW.Account_ID, 'UPDATE');
END //

CREATE TRIGGER Before_Account_Delete
BEFORE DELETE ON Account
FOR EACH ROW
BEGIN
    IF OLD.Balance > 50000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Account with balance above 50000 cannot be deleted';
    END IF;
END //

CREATE TRIGGER After_Account_Delete
AFTER DELETE ON Account
FOR EACH ROW
BEGIN
    INSERT INTO Account_Log(Account_ID, Action_Type)
    VALUES (OLD.Account_ID, 'DELETE');
END //

DELIMITER ;

INSERT INTO Account
VALUES (106, 'Rahul', 'Savings', 20000);

UPDATE Account
SET Balance = 25000
WHERE Account_ID = 106;

DELETE FROM Account
WHERE Account_ID = 106;

SELECT * FROM Account;

SELECT * FROM Account_Log;