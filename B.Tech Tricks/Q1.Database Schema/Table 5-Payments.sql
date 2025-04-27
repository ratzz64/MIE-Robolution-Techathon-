CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10,2) NOT NULL,
    payment_method ENUM('cash', 'card', 'mobile_payment'),
    status ENUM('pending', 'paid', 'failed') DEFAULT 'pending',
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);