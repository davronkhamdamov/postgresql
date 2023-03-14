CREATE TABLE users(
    user_id VARCHAR (50) UNIQUE NOT NULL DEFAULT gen_random_uuid(),
    user_name VARCHAR (50) NOT NULL,
    user_surname VARCHAR (50) NOT NULL,
    user_age INTEGER NOT NULL,
    user_email VARCHAR(50) UNIQUE NOT NULL,
    user_role VARCHAR(20) NOT NULL,
    user_password VARCHAR(50) NOT NULL
);

-- 

INSERT INTO users(user_name, user_surname, user_age, user_email, user_role,user_password)
      VALUES('Leanne ,'Graham',32,'Shanna@melissa.tv','admin','12345rq');

INSERT INTO users(user_name, user_surname, user_age, user_email, user_role,user_password)
      VALUES('Ervin','Howell',23,'Sincere@april.biz','admin','12345w6');

INSERT INTO users(user_name, user_surname, user_age, user_email, user_role,user_password)
      VALUES('John','Doe',21,'Nathan@yesenia.net','admin','12345wd6');

INSERT INTO users(user_name, user_surname, user_age, user_email, user_role,user_password)
      VALUES('John','Doe',22,'Karley_Dach@jasper.info','admin','qwertyui');

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
INSERT INTO cars(car_id, car_title, car_price, cars_brand, car_color, created_by_user_id)
      VALUES('1','BMW','30000','BMW','white','1');

--

CREATE TABLE animals(
    animal_id CHAR (40) UNIQUE NOT NULL DEFAULT gen_random_uuid(),
    animal_title  VARCHAR (50) not NULL,
    animal_type VARCHAR (50) not NULL,
    animal_color VARCHAR (50) not NULL,
    created_by_user_id VARCHAR (50) not NULL,
    CONSTRAINT animals_create_id
      FOREIGN KEY(created_by_user_id)
      REFERENCES users(user_id),
);

-- 

INSERT INTO animals(
      animal_title,
      animal_type,
      animal_color,
      created_by_user_id
      )
      VALUES('cat','cat','white','7c2d1ed1-2e18-4409-b9e8-12fef98f9a5c');

-- 

CREATE TABLE COURSE_DB(
    course_id VARCHAR (50) UNIQUE NOT NULL,
    course_title  VARCHAR (50) NOT NULL,
    course_price VARCHAR (50) NOT NULL,
    course_teacher VARCHAR (50) NOT NULL,
    course_description VARCHAR (50) NOT NULL,
    created_by_user_id VARCHAR (50) NOT NULL
);

INSERT INTO COURSE_DB(
    course_id,
    course_title,
    course_price,
    course_teacher,
    course_description,
    created_by_user_id
)
      VALUES('1','react','1000','Ervin','Mern','1');

-- 

CREATE TABLE TEACHERS(
    teacher_id VARCHAR (50) UNIQUE NOT NULL,
    teacher_name  VARCHAR (50) NOT NULL,
    teacher_surname VARCHAR (50) NOT NULL,
    teacher_age INTEGER NOT NULL,
    teacher_course_title VARCHAR (50) NOT NULL,
    created_by_user_id VARCHAR (50) NOT NULL
);

-- 

INSERT INTO TEACHERS(
teacher_id,
teacher_name,
teacher_surname,
teacher_age,
teacher_course_title,
created_by_user_id
)
      VALUES('1','Bret','Leanne ,12,'Data structure','1');

-- 

CREATE TABLE FRUITS(
    fruit_id VARCHAR (50) UNIQUE NOT NULL,
    fruit_title VARCHAR (50) NOT NULL,
    fruit_type VARCHAR (50) NOT NULL,
    fruit_price INTEGER NOT NULL,
    created_by_user_id VARCHAR (50) NOT NULL,
);

-- 

INSERT INTO FRUITS(
    fruit_id,
    fruit_title,
    fruit_type,
    fruit_price,
    created_by_user_id)
      VALUES('1','apple','fruit','1000','1');

-- 

CREATE TABLE users(
    id VARCHAR (50) UNIQUE NOT NULL,
    name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    age INTEGER NOT NULL,
);

-- 

INSERT INTO users(id, name, last_name, age)
      VALUES('5547b4bd-bc9c-4932-9bbc-128769425fa9','Davron','Xamdamov',19);

INSERT INTO users(id, name, last_name, age)
      VALUES('89c161e3-dc2c-486a-91da-d8416a46f1ac','shoxruz','ismoilov',19);

INSERT INTO users(id, name, last_name, age)
      VALUES('019c389c-fb9f-4d5c-a1c9-cb2f20f4322a','abbos','husanov',22);

-- 

CREATE TABLE comment(
    id VARCHAR (50) UNIQUE NOT NULL,
    from_user_id VARCHAR (50) NOT NULL,
    to_user_id VARCHAR (50) NOT NULL,
    text VARCHAR NOT NULL,
    time TIME DEFAULT CURRENT_TIME,
    CONSTRAINT from_user_id
       FOREIGN KEY(from_user_id) 
	  REFERENCES users(id),

     CONSTRAINT to_user_id
       FOREIGN KEY(to_user_id) 
	  REFERENCES users(id)
);

INSERT INTO comment(id, from_user_id, to_user_id,text ,time)
      VALUES('e83cef61-64b2-491d-af5c-293d9c0436eb','5547b4bd-bc9c-4932-9bbc-128769425fa9',
      '89c161e3-dc2c-486a-91da-d8416a46f1ac','hello',CURRENT_TIME);

INSERT INTO comment(id, from_user_id, to_user_id,text ,time)
      VALUES('ac9818be-2b11-40f2-a0f6-963325a2295c','89c161e3-dc2c-486a-91da-d8416a46f1ac','5547b4bd-bc9c-4932-9bbc-128769425fa9','hello davron',CURRENT_TIME);


-- 

INSERT INTO comment(id, from_user_id, to_user_id,text ,time)
      VALUES('fe35ffa9-14b9-465b-bcc6-57ff12a64420','89c161e3-dc2c-486a-91da-d8416a46f1ac','019c389c-fb9f-4d5c-a1c9-cb2f20f4322a','shoxruzdan abbosga', CURRENT_TIME);



INSERT INTO comment(id, from_user_id, to_user_id,text ,time)
      VALUES('f9b09a54-b232-4032-b7c7-fe9c0ecd3aef','4e5e4578-d627-45b2-9061-b09a215a3239','89c161e3-dc2c-486a-91da-d8416a46f1ac','begzoddan shoxruzga', CURRENT_TIME);


select u.name, c.text from users u 
    join comment c on u.id = c.from_user_id OR u.id = c.to_user_id
    where u.id = '5547b4bd-bc9c-4932-9bbc-128769425fa9';


select u.user_name, a.animal_title from users u 
    join animals a on u.user_id = a.created_by_user_id 
    where u.user_id = '12dc7d69-c50f-47bf-9f31-88a2207a38c3';



-- 
users id 


 7c2d1ed1-2e18-4409-b9e8-12fef98f9a5c
--  
 12dc7d69-c50f-47bf-9f31-88a2207a38c3
 016dd1d8-cd9b-478e-b40e-faeb2aae8438
 2b6f02fb-2fca-461e-a7eb-1eb5a196b947
 8c57ffd4-5d67-4ce5-b225-cd0eb5c50904


INSERT INTO animals(
     animal_title,
     animal_type,
     animal_color,
     created_by_user_id
     )
     VALUES('Leanne s mouse','unknown','grey','12dc7d69-c50f-47bf-9f31-88a2207a38c3');

INSERT INTO animals(
     animal_title,
     animal_type,
     animal_color,
     created_by_user_id
     )
     VALUES('Leanne s caw','unknown','white','12dc7d69-c50f-47bf-9f31-88a2207a38c3');

INSERT INTO animals(
     animal_title,
     animal_type,
     animal_color,
     created_by_user_id
     )
     VALUES('Leanne s fish','fish','yellow','12dc7d69-c50f-47bf-9f31-88a2207a38c3');

INSERT INTO animals(
     animal_title,
     animal_type,
     animal_color,
     created_by_user_id
     )
     VALUES('Leanne s Ant','Ants','yellow','12dc7d69-c50f-47bf-9f31-88a2207a38c3');

INSERT INTO animals(
     animal_title,
     animal_type,
     animal_color,
     created_by_user_id
     )
     VALUES('Leanne s cat','cat','yellow','12dc7d69-c50f-47bf-9f31-88a2207a38c3');
