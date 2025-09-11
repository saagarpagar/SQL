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


use cars;
 select * from car_price_dataset;
 -- in car_price_dataset it finds the average price by specfic fuel type--
 select Fuel_Type,count(Fuel_Type) as count, avg(Price)
 from car_price_dataset
 group by Fuel_Type;

-- used to find the engine size by its specific model
select Model,count(Engine_Size)
from car_price_dataset
group by Model
having count(Engine_Size)> 315
order by count(Engine_Size);

--it counts the how many model make by compay in a specific year
select Year,count(distinct Model)
from car_price_dataset 
group by Year;

--it finds which brands model has minimun price
select Brand, Model, min(Price)
from car_price_dataset
group by Brand,Model;


