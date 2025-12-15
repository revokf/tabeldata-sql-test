CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    price NUMERIC(10,2)
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT REFERENCES customer(id),
    order_date TIMESTAMP
);

CREATE TABLE order_items (
    id INT PRIMARY KEY,
    orders_id INT REFERENCES orders(id),
    product_id INT REFERENCES product(id),
    quantity INT,
    price NUMERIC(10,2)
);