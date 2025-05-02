-- create database products;
-- use products;
-- Step 1: Create the normalized table
-- CREATE TABLE ProductDetail_1NF (
  -- OrderID INT,
  -- CustomerName VARCHAR(100),
  -- Product VARCHAR(50)
-- );

-- Step 2: Insert atomic values (1 product per row)
-- INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES
-- (101, 'John Doe', 'Laptop'),
-- (101, 'John Doe', 'Mouse'),
-- (102, 'Jane Smith', 'Tablet'),
-- (102, 'Jane Smith', 'Keyboard'),
-- (102, 'Jane Smith', 'Mouse'),
-- (103, 'Emily Clark', 'Phone');
-- select* from ProductDetail_1NF
-- Step 1: Create the Orders table (OrderID -> CustomerName)
-- CREATE TABLE Orders (
  -- OrderID INT PRIMARY KEY,
  -- CustomerName VARCHAR(100)
-- );

-- Step 2: Create the OrderItems table (OrderID + Product -> Quantity)
-- CREATE TABLE OrderItems (
  -- OrderID INT,
  -- Product VARCHAR(50),
  -- Quantity INT,
  -- PRIMARY KEY (OrderID, Product),
  -- FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
-- );

-- Step 3: Insert data into Orders table
-- INSERT INTO Orders (OrderID, CustomerName) VALUES
-- (101, 'John Doe'),
-- (102, 'Jane Smith'),
-- (103, 'Emily Clark');

-- Step 4: Insert data into OrderItems table
-- INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES
-- (101, 'Laptop', 2),
-- (101, 'Mouse', 1),
-- (102, 'Tablet', 3),
-- (102, 'Keyboard', 1),
-- (102, 'Mouse', 2),
-- (103, 'Phone', 1);
-- select * from Orders;
select * from OrderItems;
