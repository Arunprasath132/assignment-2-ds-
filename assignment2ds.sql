create table e_items(slno int,Product varchar(20),rate int);
insert into e_items(slno,Product,rate)values(1,'fan',2000);
insert into e_items(slno,Product,rate)values(2,'TV',40000);
insert into e_items(slno,Product,rate)values(3,'Mobile phones',12000);
insert into e_items(slno,Product,rate)values(4,'washing machine',25000);
insert into e_items(slno,Product,rate)values(5,'AC',50000);
insert into e_items(slno,Product,rate)values(6,'Computer',60000);
insert into e_items(slno,Product,rate)values(7,'laptops',80000);
insert into e_items(slno,Product,rate)values(8,'speaker',4000);
insert into e_items(slno,Product,rate)values(9,'printer',24000);
insert into e_items(slno,Product,rate)values(10,'air purifier',44000);

select *from e_items

#min and max

select max(product)
from e_items
where rate<=4000;

select min(product)
from e_items
where rate<=4000


#avg

select avg(rate)from e_items;


#count

select count (rate)from e_items;

#sum

select sum(rate)from e_items;

#and operation

select *from e_items where product='laptops'and rate=800000;

#or operation

select *from e_items where product='AC'OR RATE=50000;

#ADDING COLUMN

ALTER TABLE e_items add rating float;

#drop column

alter table e_items drop column rating;



#create another table

create table e_items1(slno int,Product varchar(20),rate int);
insert into e_items1(slno,Product,rate)values(1,'microwave',20000);
insert into e_items1(slno,Product,rate)values(2,'tablet',40000);
insert into e_items1(slno,Product,rate)values(3,'water heater',10000);
insert into e_items1(slno,Product,rate)values(4,'mixer',5000);
insert into e_items1(slno,Product,rate)values(5,'AC',50000);
insert into e_items1(slno,Product,rate)values(6,'Computer',60000);
insert into e_items1(slno,Product,rate)values(7,'jucier',8000);
insert into e_items1(slno,Product,rate)values(8,'speaker',4000);
insert into e_items1(slno,Product,rate)values(9,'monitor',20000);
insert into e_items1(slno,Product,rate)values(10,'dvd player',10000);

select *from e_items1

#inner join

select e_items.product, e_items.rate,e_items1.product,e_items1.rate
from e_items
inner join e_items1 
on e_items.rate = e_items1.rate;


#full join

select e_items.product, e_items.rate,e_items1.product,e_items1.rate
from e_items
full join e_items1
on e_items.rate = e_items1.rate;

#left join

select e_items.product, e_items.rate,e_items1.product,e_items1.rate
from e_items
left join e_items1 
on e_items.rate = e_items1.rate;

#right join

select e_items.product, e_items.rate,e_items1.product,e_items1.rate
from e_items
right join e_items1
on e_items.rate = e_items1.rate;

#left outer join

select e_items.product, e_items.rate,e_items1.product,e_items1.rate
from e_items
left outer join e_items1 
on e_items.rate = e_items1.rate;

#right outer join

select e_items.product, e_items.rate,e_items1.product,e_items1.rate
from e_items
right outer join e_items1
on e_items.rate = e_items1.rate;

#full outer join

select e_items.product, e_items.rate,e_items1.product,e_items1.rate
from e_items
full outer join e_items1
on e_items.rate = e_items1.rate;

#desc

select *from e_items order by rate desc;

#asc

select *from e_items order by rate asc;


