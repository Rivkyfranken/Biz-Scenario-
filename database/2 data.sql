use WigDB
go

delete Wig
go

insert Wig(WigCompany, WigColor, Wiglength, WigSize, WigStyle, PriceBought, PriceSold, DateBought, DateSold, CustomerName, CustomerPhone)
select'Irene', 'Chestnut', 24, 'M', 'Blunt', 1000, 2500, '1/1/2022', '2/5/2022', 'Sara Stern', '858-989-7820'
union select'Yafi', 'Golden Blonde', 32, 'L', 'Curly', 3000, null, '7/8/2020', null, null, null
union select'Sary', 'Brown', 28, 'XL', 'Band Fall', 800, 1900, '5/6/2021', '8/1/2021', 'Chany Perl', '732-885-4566'
union select'Michal', 'Brown', 16, 'S', 'Lob', 1200, 3000, '11/3/2022', '3/2/2023', 'Rochy Schiff', '848-778-4896'
union select'Irene', 'Dark Browne', 20, 'M', 'Band Fall', 800, null, '12/1/2023', null, null, null  
union select'Irene', 'Dirty Blonde', 12, 'L', 'Bob', 1000, 2300, '8/12/2022', '10/1/2022', 'Yehudis Green', '732-998-4512'
union select'Eva & Chole', 'Black', 24, 'S', 'Straight', 1300, null, '3/20/2023', null, null, null  
union select'Yafi', 'Natrual Blonde', 14, 'L', 'Straight', 2700, 5000, '4/17/2021', '4/17/2022', 'Leah Goldberg', '848-741-9677'
union select'Sary', 'Streaked Brown', 32, 'M', 'Wavy', 1600, 2750, '9/16/2022', '2/1/2023', 'Shaindy Kaplan', '917-743-3334'
union select'BK', 'Blonde', 16, 'M', 'Curly', 2900, null, '6/5/23', null, null, null  
union select'Dini', 'Medium Brown', 20, 'M', 'Blunt', 3600, 6500, '1/17/2023', '4/7/2023', 'Devorah Gross', '718-884-2008'