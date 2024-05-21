CREATE DATABASE restaurant;
USE restaurant;
CREATE TABLE customer(
customerID INT PRIMARY KEY AUTO_INCREMENT,
cuctomername VARCHAR(20),
customeremail VARCHAR(20),
customerphoneNo INT(10),
customeraddress VARCHAR(15)

);
-- create dishes table
create TABLE dishes(
dishiID INT PRIMARY KEY AUTO_INCREMENT,
dishname VARCHAR(20),
dishdescription text,
dishprice DECIMAL(10.2),
customerID INT,
FOREIGN KEY (customerID) REFERENCES customer(customerID)
); 

CREATE TABLE customerorders(
customer_OrderID INT PRIMARY KEY AUTO_INCREMENT,
customer_Order_Time datetime,
totalamount DECIMAL(10.2),
customerID INT,
FOREIGN KEY (customerID) REFERENCES customer(customerID)
);

CREATE TABLE disheorderdetails(
detailsID INT PRIMARY KEY AUTO_INCREMENT,
dishiID INT,
FOREIGN KEY (dishiID) REFERENCES dishes(dishiID),
customer_OrderID INT,
FOREIGN KEY (customer_OrderID ) REFERENCES customerorders(customer_OrderID)
);