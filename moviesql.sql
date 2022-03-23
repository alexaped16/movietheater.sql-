--create customer table 
create table customer(
customer_id SERIAL primary key, 
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50),
member_ BOOLEAN, 
);

--create ticket table 
create table ticket(
ticket_id int not null, 
price numeric(4,2),
foreign key customer_id references customer_id, 
foreign key movie_id references movie_id, 
primary key(ticket_id)
);

--create movie table 
create table movie(
movie_id SERIAL primary key, 
movie_title VARCHAR(50), 
rating VARCHAR(5), 
release_date Date, 
);

--create concession table 
create table concession(
order_id SERIAL primary key 
order_date Date 
total numeric(6,2)
foreign key customer_id references customer_id
);


-- data for customer table 
select *
from customer

insert into customer(
customer_id, 
first_name,
last_name, 
email,
member_, 
)values(
1,
'Maggie', 
'Caldwell',
'magcald@gmail.com',
TRUE
);


--data for ticket table 
select * 
from ticket

insert into ticket(
ticket_id, 
price, 
customer_id, 
movie_id, 
)values(
555, 
12.99, 
0098, 
0045);

--creating data for movie table 
select * 
from movie

insert into movie(
movie_id, 
movie_title,
rating, 
release_date,
)values(
2283,
'Lolita', 
5.0
1960);

----creating data for concession table 
select * 
from concession 

insert into concession(
order_id, 
order_date, 
total, 
customer_id
)values(
9334, 
10/34/23, 
20.34, 
1
)





