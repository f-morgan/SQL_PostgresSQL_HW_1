CREATE TABLE PERSONS
(
    id SERIAL,
    name varchar(255) NOT NULL,
    surname varchar(255) NOT NULL,
    age int NOT NULL check (age > -1),
    phone_number varchar(12),
    city_of_living varchar(255) NOT NULL,
    PRIMARY KEY(name, surname, age)
);

SELECT name, surname
FROM PERSONS
WHERE city_of_living = 'MOSCOW';

SELECT *
FROM PERSONS
WHERE age > 27
ORDER BY age DESC;

INSERT INTO persons (name, surname, age, phone_number, city_of_living)
VALUES ('Ivan', 'Ivanov', 24, '+79265550011', 'MOSCOW');
INSERT INTO persons (name, surname, age, phone_number, city_of_living)
VALUES ('Petr', 'Petrov', 25, '+79265550022', 'SOCHI');
INSERT INTO persons (name, surname, age, phone_number, city_of_living)
VALUES ('Semen', 'Semenov', 28, '+79265550033', 'MOSCOW');
INSERT INTO persons (name, surname, age, phone_number, city_of_living)
VALUES ('Alex', 'Alexeev', 30, '+79265550044', 'SARATOV');
