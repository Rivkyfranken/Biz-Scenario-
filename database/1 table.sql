use WigDB
go

drop table if exists Wig
go

create table dbo.Wig(
	WigId int not null identity primary key,
	WigCompany varchar(50) not null constraint ck_Wig_company_cannot_be_blank check(WigCompany > ''), 
	WigColor varchar(20) not null constraint ck_Wig_color_cannot_be_blank check(WigColor > ''), 
	Wiglength int not null constraint ck_Wig_length_must_be_greater_than_0 check(WigLength > 0), 
	WigSize varchar(2) not null constraint ck_Wig_size_must_be_in_S_M_L_and_XL check(WigSize in('S','M','L','XL')), 
	WigStyle varchar(20) not null constraint ck_Wig_style_cannot_be_blank check(WigStyle > ''), 
	PriceBought decimal(8,2) not null constraint ck_Wig_price_bought_must_be_between_800_and_6500 check(PriceBought between 800 and 6500), 
	PriceSold decimal(9,2), -- I'm making this 9,2 because you say that the max "purchased" is 6500 so I do allow selling 10 * purchase price.
	DateBought date not null constraint ck_Wig_date_bought_must_be_between_jan_2020_and_today check(DateBought between '20200101' and getdate()), 
	DateSold date, 
	CustomerName varchar(50) constraint ck_Wig_customer_name_cannot_be_blank check(CustomerName > ''), 
	CustomerPhone char(12) constraint ck_Wig_customer_phone_must_be_in_000_dash_000_dash_0000_format check(CustomerPhone like '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'),
	constraint ck_PriceSold_must_be_at_least_PriceBought check(PriceSold >= PriceBought),
	constraint ck_DateSold_must_be_between_DateBought_and_today check(DateSold between DateBought and getdate()),
	constraint ck_DateSold_PriceSold_CustomerName_and_CustomerPhone_must_all_be_null_or_all_not check(
		(PriceSold is not null and DateSold is not null and CustomerName is not null and CustomerPhone is not null)
		or (PriceSold is null and DateSold is null and CustomerName is null and CustomerPhone is null)),
	constraint u_we_only_have_one_of_each_wig_in_stock_at_any_time unique(WigCompany,WigColor,Wiglength,WigSize,WigStyle,DateSold) -- I'm adding DateSold as this will make sure not to allow multiple at the same time. This won't allow DateSold to be null either but it will allow multiple in history.
)