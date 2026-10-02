CREATE TABLE Product (
    Product_ID INT,
    Product_Name VARCHAR(50),
    Category VARCHAR(30),
    Price INT
);

INSERT INTO Product VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Mouse', 'Electronics', 800),
(103, 'Chair', 'Furniture', 4500),
(104, 'Table', 'Furniture', 7000),
(105, 'Keyboard', 'Electronics', 1500);

DELIMITER //

CREATE PROCEDURE DisplayProducts()
BEGIN
    SELECT * FROM Product;
END //

CREATE PROCEDURE InsertProduct(
    IN ID INT,
    IN PName VARCHAR(50),
    IN PCategory VARCHAR(30),
    IN PPrice INT
)
BEGIN
    INSERT INTO Product
    VALUES (ID, PName, PCategory, PPrice);
END //

CREATE PROCEDURE UpdateProduct(
    IN ID INT,
    IN PPrice INT
)
BEGIN
    UPDATE Product
    SET Price = PPrice
    WHERE Product_ID = ID;
END //

CREATE PROCEDURE DeleteProduct(
    IN ID INT
)
BEGIN
    DELETE FROM Product
    WHERE Product_ID = ID;
END //

DELIMITER ;

CALL DisplayProducts();

CALL InsertProduct(106, 'Monitor', 'Electronics', 12000);

CALL DisplayProducts();

CALL UpdateProduct(106, 15000);

CALL DisplayProducts();

CALL DeleteProduct(106);

CALL DisplayProducts();