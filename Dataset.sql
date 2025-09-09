-- import external dataset in mysql then perform some operations on it  
use cars;
show tables;

select * from car_price_dataset;

select avg(mileage) from car_price_dataset where Brand = "BMW";

select count(*) from car_price_dataset;

select max(price) from  car_price_dataset where Brand = "Toyota";

select sum(Price) from car_price_dataset where Brand like "%o%";

# used to find the uniqe values
select count(distinct Brand) from car_price_dataset;

select count(distinct Model) from car_price_dataset;
select count(distinct Model) from car_price_dataset where Brand = "Toyota";

select count(*) from car_price_dataset where Brand = 'Audi'  and Fuel_Type = 'Electric';


