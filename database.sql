-- Create the database
CREATE DATABASE Assignment_6;

-- Use the database
USE Assignment_6;

-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    location VARCHAR(255)
);

INSERT INTO Customers (customer_id, name, email, location)
VALUES
    (1, 'John Doe', 'john.doe@email.com', 'New York'),
    (2, 'Jane Smith', 'jane.smith@email.com', 'Los Angeles'),
    (3, 'Bob Johnson', 'bob.johnson@email.com', 'Chicago');

-- Create the Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES
    (101, 1, '2023-01-15', 100.00),
    (102, 2, '2023-01-16', 75.50),
    (103, 3, '2023-01-17', 200.25);

-- Create the Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    price DECIMAL(10, 2)
);

INSERT INTO Products (product_id, name, description, price)
VALUES
    (1001, 'Product A', 'Description of Product A', 20.00),
    (1002, 'Product B', 'Description of Product B', 15.50),
    (1003, 'Product C', 'Description of Product C', 30.75);


-- Create the Categories table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO Categories (category_id, name)
VALUES
    (2001, 'Category X'),
    (2002, 'Category Y'),
    (2003, 'Category Z');

-- Create the Order_Items table
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, unit_price)
VALUES
    (10001, 101, 1001, 2, 20.00),
    (10002, 101, 1002, 3, 15.50),
    (10003, 102, 1003, 1, 30.75),
    (10004, 103, 1002, 4, 15.50);

