--
-- Welcome to Task 2 !!
--
-- Advanced RDB and SQL
--
-- Server Functions

USE world_peace;

-- aggregate functions
select count(*) from customer; 

select max(qoh) from merchandise_item;

select min(unit_price)/100 from merchandise_item;

select avg(unit_price)/100
as average_price from
merchandise_item;

-- TODO --

-- Write an SQL statement to:
-- find the sum of the column quantity
-- the function is SUM( )
-- in the table customer_order_line_item

select SUM(quantity) from 
customer_order_line_item;

-- Non-aggregate functions

select format(unit_price/100, 2, "en_ES")
AS unit_price_decimal
from merchandise_item;

SELECT CONCAT(char_length(description), "chars")
from merchandise_item;
-- TODO --

-- Write an SQL statement to:

-- find the average all the unit_price in the table merchandise_item
-- (don't forget to divide it by 100)
-- format it to 2 decimal places and use country code "en_IN" for Indian English
-- add the Rupee symbol ₹ in front of it, copy and paste it if you'd like

select concat("₹",format(avg(unit_price/100), 2, "en_IN"))
from merchandise_item;



