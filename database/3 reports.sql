use WigDB
go

--1) I would like to know for how long each sold wig sat in my inventory for. 
select NumOfDaysInInventory = datediff(day, w.DateBought, w.DateSold),*
from Wig w
where w.DateSold is not null
order by NumOfDaysInInventory

--2) I need to know the profit of wigs per each wig company 
select w.WigCompany, Profit = sum(w.PriceSold - w.PriceBought)
from Wig w
where w.DateSold is not null
group by w.WigCompany
order by Profit desc

--3) I would like to know how long my unsold wigs are currently sitting for 
select NumOfDaysInInventory = datediff(day, w.DateBought, getdate()),*
from Wig w
where w.DateSold is null
order by NumOfDaysInInventory

--4) i need to know which is wig size sold the most so i can know what size to have the most of
select w.WigSize, NumOfTimesSold = count(*)
from Wig w
where w.DateSold is not null
group by w.WigSize
order by NumOfTimesSold desc