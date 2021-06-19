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

