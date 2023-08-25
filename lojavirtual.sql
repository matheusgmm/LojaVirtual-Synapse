USE lojavirtual;

CREATE TABLE IF NOT EXISTS products (
    id BIGINT(11) AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id)
);

SELECT * FROM products;

INSERT INTO products VALUE (1, 'Balenciaga', 12000);
INSERT INTO products (name, price) VALUE ('Nike', 400);
INSERT INTO products (name, price) VALUE ('Adidas', 600);
INSERT INTO products (name, price) VALUE ('Compas', 120000);
INSERT INTO products (name, price) VALUE ('Corsa', 6000);



ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';

FLUSH PRIVILEGES;

ALTER TABLE `products`
ADD COLUMN `category` VARCHAR(45) NULL AFTER `price`;