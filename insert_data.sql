-- adding customer names
insert into customer(
	first_name,
	last_name,
	phone_number,
	is_senior 
)
values
(
	'Gramps',
	'The Champs',
	'12378945',
	true
);


-- add to concessions
insert into concessions(
	concession_name,
	concession_price 
)
VALUES(
	'Large Popcorn',
	14.99
),
(
	'Madium Popcorn',
	12.99
),
(
	'Small Popcorn',
	11.99
),
(
	'Milk Duds',
	7.99
);

-- add some movies 
insert into movies(
	movie_name,
	screen,
	price,
	show_time 
)
VALUES(
	'The Princess Bride',
	1,
	12.99,
	1100
),
(
	'The Sandlot',
	2,
	13.99,
	1300
),
(
	'Ferris Buellers Day Off',
	3,
	14.99,
	1500
),
(
	'Back to the Future',
	4,
	12.49,
	1700
),
(
	'Indiana Jones: The Last Crusade',
	5,
	15.99,
	1900
); 

-- make up some tickets
insert into tickets(movie_id)
VALUES(5)

-- makes some receipts 
insert into receipts(customer_id, ticket_id, concession_id, total_price)
VALUES(1,1,4,20.98),(1,2,4,20.98),(1,3,4,20.98),(1,4,4,20.98); 

-- someone only bought popcorn because who doesn't love that buttery goodness
insert into receipts(customer_id, concession_id, total_price)
VALUES(3,1,14.99)

--
select * from receipts;