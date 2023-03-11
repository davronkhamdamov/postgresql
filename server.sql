CREATE TABLE users(
    user_id VARCHAR (50) UNIQUE NOT NULL,
    user_name VARCHAR (50) NOT NULL,
    user_surname VARCHAR (50) NOT NULL,
    user_age INTEGER NOT NULL,
    user_email VARCHAR(50) UNIQUE NOT NULL,
    user_role VARCHAR(20) NOT NULL,
    user_password VARCHAR(50) NOT NULL
);

-- 

CREATE TABLE cars(
    car_id VARCHAR (50) UNIQUE NOT NULL,
    car_title VARCHAR (50) NOT NULL,
    car_price VARCHAR (50) NOT NULL,
    cars_brand VARCHAR(50) NOT NULL,
    car_color VARCHAR(50) NOT NULL,
    created_by_user_id VARCHAR(50) NOT NULL
);

-- 

CREATE TABLE users(
    id VARCHAR(30) NOT NULL
    name VARCHAR (20) NOT NULL,
    age INTEGER NOT NULL,
    country VARCHAR (10) NOT NULL
);
-- 
INSERT INTO users(car_id, car_title, car_price, cars_brand, car_color,created_by_user_id)
      VALUES('1','BMW','30000','BMW','white','1');

INSERT INTO users(user_id,
user_name,
user_surname,
user_age,
user_email,
user_role,
user_password)
      VALUES('1','John','Doe',12,'john@gmail.com','admin','123456');


--

CREATE TABLE animals(
    animal_id VARCHAR (50) UNIQUE NOT NULL,
    animal_title  VARCHAR (50) not NULL,
    animal_type VARCHAR (50) not NULL,
    animal_color VARCHAR (50) not NULL,
    created_by_user_id VARCHAR (50) not NULL
);
-- 

INSERT INTO animals(animal_id,
animal_title,
animal_type,
animal_color,
created_by_user_id)
      VALUES('1','cat','cat','white','1');

-- 

CREATE TABLE COURSE_DB(
    course_id VARCHAR (50) UNIQUE NOT NULL,
    course_title  VARCHAR (50) NOT NULL,
    course_price VARCHAR (50) NOT NULL,
    course_teacher VARCHAR (50) NOT NULL,
    course_description VARCHAR (50) NOT NULL,
    created_by_user_id VARCHAR (50) NOT NULL
);