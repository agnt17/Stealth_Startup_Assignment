CREATE TABLE Trades (
    trade_id INT PRIMARY KEY AUTO_INCREMENT,
    buyer_id INT NOT NULL,
    seller_id INT NOT NULL,
    trade_date DATE NOT NULL,
    trade_status ENUM('pending', 'completed', 'cancelled') DEFAULT 'pending',
    FOREIGN KEY (buyer_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (seller_id) REFERENCES Users(user_id) ON DELETE CASCADE
);
