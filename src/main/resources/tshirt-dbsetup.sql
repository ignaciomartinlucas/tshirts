--
-- Entity: inventory_item
-- This entity holds the detail of a product item.
--
CREATE TABLE inventory_item
(
	productCode varchar(50) not null primary key,
	size varchar(5) not null check (size in ('XS','S','M','L','XL','XXL','NA')),
	description varchar(500) not null,
	count integer not null
);
--
-- Entity END. inventory_item
--
PRAGMA foreign_keys = ON;

insert into inventory_item (productCode, size, description, count) values ('1', 'XS', 'Mulesoft Tshirt', 1000);
insert into inventory_item (productCode, size, description, count) values ('2', 'XXL', 'Salesforce Tshirt', 5000);

--
-- Entity: tshirt_order
-- This entity holds the orders.
--
CREATE TABLE tshirt_order
(
	orderId varchar(100) not null primary key,
	size varchar(5) not null check (size in ('XS','S','M','L','XL','XXL','NA')),
	email varchar(256) not null,
	name varchar(256) not null,
	address1 varchar(256) not null,
	address2 varchar(256) null,
	stateOrProvince varchar(256) not null,
	postalCode varchar(256) not null,
	country varchar(256) not null,
	status varchar(256) not null check (status in ('INITIAL','PROCESSED','DELIVERED'))
);
--
-- Entity END. tshirt_order
--

insert into tshirt_order (orderId, size, email, name, address1, address2, stateOrProvince, postalCode, country, status) values ('1','XXL', 'hello@world.com','Ignacio', 'Avellaneda 125', null, 'Buenos Aires', '1429','Argentina', 'INITIAL');