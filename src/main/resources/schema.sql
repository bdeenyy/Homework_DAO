CREATE TABLE if not exists CUSTOMERS (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(50) NOT NULL,
                           surname VARCHAR(50) NOT NULL,
                           age INTEGER NOT NULL,
                           phone_number VARCHAR(20) NOT NULL
);

INSERT INTO CUSTOMERS (name, surname, age, phone_number)
VALUES ('Ivan', 'Kopilov', 35, '+79782234567'),
       ('Vladimir', 'Bykov', 78, '+79767234567'),
       ('ALEXEY', 'Surdin', 25, '+7978154467'),
       ('Alexey', 'Smirnov', 19, '+79721534567'),
       ('Denis', 'Vasilev', 39, '+79781334577'),
       ('Svetlana', 'Drobish', 21, '+797812384567'),
       ('Nikolay', 'Bondarenko', 29, '+79781434507');


CREATE TABLE if not exists ORDERS (
                        id SERIAL PRIMARY KEY,
                        date DATE NOT NULL,
                        customer_id INTEGER NOT NULL REFERENCES CUSTOMERS(id),
                        product_name VARCHAR(50) NOT NULL,
                        amount NUMERIC(10, 2) NOT NULL
);

INSERT INTO ORDERS (date, customer_id, product_name, amount)
VALUES ('2023-04-20', 1, 'Product B', 99.99),
       ('2023-04-21', 5, 'Product C', 105.00),
       ('2023-04-22', 2, 'Product B', 77.50),
       ('2023-04-23', 3, 'Product A', 50.50),
       ('2023-04-24', 1, 'Product A', 10.50),
       ('2023-04-25', 6, 'Product B', 111.11),
       ('2023-04-26', 7, 'Product A', 0.90);