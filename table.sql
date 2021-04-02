create table if not exists users
(
    id        serial primary key,
    name      varchar(255)        not null default '',
    last_name varchar(255)        not null default '',
    email     varchar(255) UNIQUE not null default '',
    Age       INTEGER DEFAULT 19,
    work_id   int,
    Price     NUMERIC,
    
    UNIQUE (Email)

);

create table if not exists works
(
    id         serial primary key,
    works_name varchar(255) not null default '',
    status     bool
);

create table if not exists timing
(
    id      serial primary key,
    code    varchar(255) not null default '',
    track   uuid,
    work_id int
);

insert into users (name, last_name, email, price)
VALUES 	('vlad', 'kirsanov', 'wladnext98@mail.ru', '85000'),
		('migin', 'dmitry', 'igor.migin@mail.ru', '70000'),
       	('mixail', 'ryabov', 'mihail.ryabov.2002@mail.ru', '65000'),
       	('anton', 'ershov', 'ahtoika12@gmail.com', '60000'),
       	('danila', 'petrukhin', 'danilapetrukhin@mail.ru', '55000'),
       	('daniil', 'kirsanov', 'hvck1337@yandex.ru', '50000'),
       	('jaroslav', 'mihailov', 'tosha.zakharov.0201@mail.ru', '45000');

select id, name, last_name,email,Price
from users;