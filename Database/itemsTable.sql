CREATE TABLE Items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    item_name VARCHAR(100) NOT NULL,
    item_description TEXT,
    item_category VARCHAR(50),
    item_condition VARCHAR(50),
    date_added DATE NOT NULL,
    status ENUM('available', 'pending', 'traded') DEFAULT 'available',
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);
