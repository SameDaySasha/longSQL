DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS coffee_orders;




CREATE TABLE customers(

    customer_id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name VARCHAR(40), 
    phone NUMERIC(10, 0),
    email VARCHAR(255),
    points INTEGER NOT NULL DEFAULT 5,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);


CREATE TABLE coffee_orders(
    purchase_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER REFERENCES customers(customer_id),
    is_redeemed BOOLEAN DEFAULT 0,
    ordered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
