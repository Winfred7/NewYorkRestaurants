select * from nomnom;

--distinct
select distinct neighborhood
from nomnom;

select distinct cuisine 
from nomnom;

--chinese options
select * from nomnom
where cuisine='Chinese';

--review 4 and more
select * from nomnom
where review >=4;

--do italian date
select * from nomnom
where cuisine='Italian' and price='$$$';

--meatball restaurant
select * from nomnom
where name like '%meatball';

--spots

select * from nomnom
where neighborhood in('Midtown','Downtown','Chinatown');

--pending health grades

select * from nomnom
where health is null;

--Top 10 Restaurants Ranked
select * from nomnom
order by review desc
limit 10;


--Using case
select name,
       case
        when review >4.5 then 'Extraordinary'
         when review >4 then 'Excellent'
         when review >3 then 'Good'
         when review >2 then 'Fair'
         else 'Poor'
       end as 'New review'
       from nomnom;
