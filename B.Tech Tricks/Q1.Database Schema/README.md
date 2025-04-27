# Database for Bistro 92
This the database that stores the users,orders,menu items,payments and tables

# Required tables for the database

### 1.Customers table
This table stores the information of the Customers

``` SQL code
CREATE TABLE Customers(
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  table_number INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### 2.Menu table
All the food items and their prices are available here

``` SQL code
CREATE TABLE MenuItems (
  item_id INT AUTO_INCREMENT PRIMARY KEY,
  item_name VARCGAR(200) NOT NULL,
  description TEXT,
  is_available BOOLEAN DEFAULT TRUE
);
```

### 3.Orders Table 
This table stores orders with table info and order status

``` SQL code
CREATE TABLE Orders (
   order_id INT AUTO_INCREMENT PRIMARY KEY,
   customer_id INT,
   table_number INT NOT NULL,
   order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   status ENUM('pending','preparing','served','cancelled,) DEFAULT 'pending',
   FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
);
```

### 4.OrderItems Table
This table joints multiple menu items to a single order and also shows quantity details

``` SQL code
CREATE TABLE OrderItems(
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT DEFAULT 1,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (item_id) REFERENCES Orders (item_id),
);
```
### Payment table
Shows payments for orders and includes payment method and status

``` SQL code
CREATE TABLE Payments(
    payment_id INT AUTO_INCREMENT PEIMARY KEY,
    order_id INT,
    payment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL (10,2) NOT NULL,
    payment_method ENUM('cash','card','mobile_payment'),
    status ENUM('pending','paid','failed') DEFAULT 'pending',
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
