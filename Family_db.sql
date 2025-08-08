DROP SCHEMA IF EXISTS family_db;
CREATE SCHEMA family_db;
USE family_db;

CREATE TABLE grand__father (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_day DATE,
    email VARCHAR(100),
    alive BOOLEAN,
    numbers_of_brothers INT,
    wealth DECIMAL(12,2),
    death_date DATE
);

INSERT INTO grand__father VALUES (
    1,
    'Rahoman Ali',
    '1930-02-04',
    'rifatyou2686@gmail.com',
    FALSE,
    7,
    2083.75,
    '1996-06-03'
);

CREATE TABLE grand_father_siblings (
    id INT PRIMARY KEY,
    grand_parents_id INT,
    name VARCHAR(100),
    gender ENUM('Male','Female'),
    spouse_name VARCHAR(100),
    number_of_children INT,
    wealth DECIMAL(12,2),
    birth_date DATE,
    age INT,
    email VARCHAR(100),
    alive BOOLEAN,
    death_date DATE,
    FOREIGN KEY (grand_parents_id) REFERENCES grand__father(id)
);

CREATE TABLE father (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_day DATE,
    age INT,
    number_of_brothers INT,
    number_of_sister INT,
    wealth DECIMAL(15,2),
    email VARCHAR(100),
    alive BOOLEAN
);

INSERT INTO father VALUES (
    5255242463,
    'MD SOHRAB ALI',
    '1961-01-01',
    70,
    4,
    4,
    2000.00,
    'rifatsharda2686@gmail.com',
    TRUE
);

CREATE TABLE father_gifts (
    id INT PRIMARY KEY,
    father_id INT,
    year YEAR,
    gift__descrption VARCHAR(255),
    form_relative_name VARCHAR(100),
    estomated_values DECIMAL(10,2),
    FOREIGN KEY (father_id) REFERENCES father(id)
);

INSERT INTO father_gifts VALUES
(1, 5255242463, 2000, 'Gold Ring', 'Brother Abdul Karim', 15000.00),
(2, 5255242463, 2005, 'Leather Jacket', 'Son Abu Rifat', 5000.00),
(3, 5255242463, 2010, 'Smartphone', 'Nephew Jalal Uddin', 18000.50),
(4, 5255242463, 2015, 'Wrist Watch', 'Daughter Nusrat Jahan', 12000.00),
(5, 5255242463, 2018, 'Travel Bag Set', 'Cousin Habibur Rahman', 6000.00),
(6, 5255242463, 2019, 'Winter Blanket', 'Sister Zohra Begum', 3500.00),
(7, 5255242463, 2020, 'Tablet Device', 'Son-in-law Kamal Hossain', 22000.00),
(8, 5255242463, 2021, 'Shoes & Hat Combo', 'Brother Mizanur Rahman', 4500.00),
(9, 5255242463, 2022, 'Perfume & Tie', 'Grandson Rafiq', 3700.00),
(10, 5255242463, 2023, 'Medical Checkup Package', 'Daughter Shamsunnahar', 11000.00);


