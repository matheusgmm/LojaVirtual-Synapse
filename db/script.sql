USE lojavirtual;

CREATE TABLE IF NOT EXISTS products (
    id BIGINT(11) AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY id
);

SELECT * FROM products;


INSERT INTO products VALUE (1, 'Balenciaga', 12000);
INSERT INTO products (name, price) VALUE ('Nike', 400);
INSERT INTO products (name, price) VALUE ('Adidas', 600);

ALTER TABLE `lojavirtual`.`products`
ADD COLUMN `category` VARCHAR(45) NULL AFTER `price`;