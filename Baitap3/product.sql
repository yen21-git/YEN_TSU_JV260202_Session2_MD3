CREATE DATABASE product_db;

USE product_db;

CREATE TABLE `orders` (
    order_id VARCHAR(10) PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_name VARCHAR(100) NOT NULL
);

CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE order_items (
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT NOT NULL,

    PRIMARY KEY (order_id, product_id),

    CONSTRAINT fk_order
        FOREIGN KEY (order_id)
        REFERENCES `orders`(order_id),

    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

INSERT INTO `orders`
VALUES ('O001', '2026-05-14', 'Nguyen Van A');

SELECT * FROM `orders`;