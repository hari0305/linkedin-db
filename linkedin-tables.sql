CREATE TABLE login
(
    id int NOT NULL PRIMARY KEY,
    email varchar(20),
    password varchar(20)
);

CREATE TABLE user(
    id int NOT NULL PRIMARY KEY,
    description varchar(20),
    first_name varchar(20),
    last_name varchar(20),
    phone varchar(20),
    email varchar(20),
    login_id int,
    city varchar(20),
    state varchar(20),
    country varchar(20),
    FOREIGN KEY (login_id) REFERENCES login(id)
);

CREATE TABLE education(
    id int NOT NULL PRIMARY KEY,
    name varchar(20),
    description varchar(40),
    start_date date,
    end_date date,
    degree varchar(20),
    branch varchar(20),
    user_id int,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE experience(
    id int NOT NULL PRIMARY KEY ,
    name varchar(20),
    description varchar(20),
    start_date date,
    end_date date,
    user_id int,
    title varchar(20),
    FOREIGN KEY (user_id) REFERENCES  user(id)
);

CREATE TABLE skill_type(
    id int NOT NULL PRIMARY KEY ,
    skill_name varchar(10)
);

CREATE TABLE skill(
    id int NOT NULL PRIMARY KEY ,
    skill_type_id int,
    user_id int,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (skill_type_id) REFERENCES skill_type(id)
);