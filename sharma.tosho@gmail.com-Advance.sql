--SQL Advance Case Study
select * from FACT_TRANSACTIONS
select * from DIM_CUSTOMER
select * from DIM_DATE
SELECT * FROM DIM_LOCATION
SELECT * FROM DIM_MANUFACTURER
SELECT * FROM DIM_MODEL

--Q1--BEGIN 
select idcustomer,
state,
year(date) as yr
from DIM_LOCATION as dl
join FACT_TRANSACTIONS as ft
on dl.IDLocation=ft.IDLocation
--Q1--END

--Q2--BEGIN
select * from


--Q2--END

--Q3--BEGIN     
select t2.IDCustomer,t2.IDModel,t1.ZipCode,t1.State,t2.TotalPrice
from DIM_LOCATION as t1
join FACT_TRANSACTIONS as t2
on t1.IDLocation= t2.IDLocation

--Q3--END

--Q4--BEGIN
select
min(totalprice)
from FACT_TRANSACTIONS

--Q4--END

--Q5--BEGIN
select top 5
Manufacturer_Name,
avg(TotalPrice) avgrt,
sum(Quantity) saleqty
from FACT_TRANSACTIONS b 
left join DIM_MODEL v
on b.IDModel=v.IDModel
inner join DIM_MANUFACTURER h
on v.IDManufacturer=h.IDManufacturer
group by Manufacturer_Name
order by Saleqty desc

--Q5--END

--Q6--BEGIN
select ty.Customer_Name,iu.YEAR,tu.TotalPrice
from DIM_CUSTOMER as ty
join FACT_TRANSACTIONS as tu
on ty.IDCustomer=tu.IDCustomer
join DIM_DATE as iu
on tu.Date=iu.DATE 



--Q6--END
	
--Q7--BEGIN  
select  TOP 5 do.IDModel,do.Quantity,lo.YEAR 
from DIM_DATE as lo
join FACT_TRANSACTIONS as do
on lo.DATE=do.Date
	



--Q7--END

--Q8--BEGIN

select top 2 Manufacturer_Name,Quantity,YEAR
from DIM_MANUFACTURER as m
join DIM_MODEL as o
on m.IDManufacturer=o.IDManufacturer
join FACT_TRANSACTIONS as a
on o.IDModel=a.IDModel
join DIM_DATE as s
on s.DATE=a.Date
order by Manufacturer_Name

--Q8--END

--Q9--BEGIN

select bq.Manufacturer_Name,br.YEAR
from DIM_MANUFACTURER as bq
join DIM_MODEL as bw
on bq.IDManufacturer=bw.IDManufacturer
join FACT_TRANSACTIONS as be
on bw.IDModel=be.IDModel
join DIM_DATE as br
on br.DATE=be.Date
where YEAR=2010
order by Manufacturer_Name
	
--Q9--END

--Q10--BEGIN
 select top 100 Customer_Name as customers,
 AVG(TotalPrice) AVERAGE,
 avg(Quantity) AVGQTY 
 from FACT_TRANSACTIONS as vb
 INNER join DIM_CUSTOMER as vc
 on vb.IDCustomer=vc.IDCustomer
 INNER join DIM_DATE as vx
 on vb.Date=vx.DATE
 group by Customer_Name
 
--Q10--END
	