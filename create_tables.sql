-- create customer table
create TABLE customer(
	customer_id serial primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number integer,
	is_senior boolean
);

-- create concessions table
create TABLE concessions(
	concession_id serial primary key,
	concession_name VARCHAR(50),
	concession_price numeric (8,2)
);

-- create movies table 
create TABLE movies(
	movie_id serial primary key,
	movie_name VARCHAR(50),
	screen integer,
	price numeric(8,2),
	show_time integer
);

-- create tickets table 
create TABLE tickets(
	ticket_id serial primary key,
	movie_id integer,
	foreign key (movie_id) references movies(movie_id)
);

-- create receipts table
create TABLE receipts(
	receipt_id serial primary key,
	total_price numeric(8,2),
	ticket_id integer,
	concession_id integer,
	customer_id integer not null,
	foreign key (ticket_id) references tickets(ticket_id),
	foreign key (concession_id) references concessions(concession_id),
	foreign key (customer_id) references customer(customer_id)
);

--
SELECT * from movies;