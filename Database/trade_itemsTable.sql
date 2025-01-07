CREATE TABLE Trade_Items (
    trade_item_id INT PRIMARY KEY AUTO_INCREMENT,
    trade_id INT NOT NULL,
    item_id INT NOT NULL,
    FOREIGN KEY (trade_id) REFERENCES Trades(trade_id) ON DELETE CASCADE,
    FOREIGN KEY (item_id) REFERENCES Items(item_id) ON DELETE CASCADE
);
