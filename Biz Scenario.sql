/*
I have a small home business that i started in January of 2020 where i sell wigs. Each wig has a company, color, length, sizes and style. 
I need to keep track of how much i bought each wig for and how much i sold it for. I also want to keep record of the purchase date and the sold date. 
I want to be able to see the profit i made on each item and how long it sat in my inventory for. 
If a wig is sold i want to be able keep track of the customer name and phone number.

Question: Whats the min/max price a wig can be purchased for and do you ever give wigs away for free?
Answer:Min price $800 and max is 6.5k and no wigs are never given away for free however occasionly i have given for cost price to family and friends

Question: is each item you have in stock the only one of that combonation of specifications?
Answer: yes we only have one of each item in stock at a given moment 

Question: Are wigs ever sold in advance before the item is in stock?
Answer: No items are only sold once they are in stock in my store

Question: Are there specific size wigs you carry?
Answer: yes, we only have S,M,L,XL 

Reports:
1) I would like to know for how long each sold wig sat in my inventory for. 
2) I need to know the profit of wigs per each wig company 
3) I would like to know how long my unsold wigs are currently sitting for 
4) i need to know which is wig size sold the most so i can know what size to have the most of

Sample Data
WigCompany, WigColor, Wiglength, WigSize, WigStyle, PriceBought, PriceSold, DateBought, DateSold, CustomerName, CustomerPhone
Irene, Chestnut, 24, M, Blunt, $1000, $2500, 1/1/2022, 2/5/2022, Sara Stern, 858-989-7820
Yafi, Golden Blonde, 32, L, Curly, $3000, not sold, 7/8/2020, NA, NA, NA 
Sary, Brown, 28, XL, Band Fall, $800, $1900, 5/6/2021, 8/1/2021, Chany Perl, 732-885-4566
Michal, Brown, 16, S, Lob, $1200, $3000, 11/3/2022, 3/2/2023, Rochy Schiff, 848-778-4896
Irene, Dark Browne, 20, M, Band Fall, $800, not sold, 12/1/2023, NA, NA, NA  
Irene, Dirty Blonde, 12, L, Bob, $1000, $2300, 8/12/2022, 10/1/2022, Yehudis Green, 732-998-4512
Eva & Chole, Black, 24, S, Straight, $1300, not sold, 3/20/2023, NA, NA, NA  
Yafi, Natrual Blonde, 14, L, Straight, $2700, $5000, 4/17/2021, 4/17/2022, Leah Goldberg, 848-741-9677
Sary, Streaked Brown, 32, M, Wavy, $1600, $2750, 9/16/2022, 2/1/2023, Shaindy Kaplan, 917-743-3334
BK, Blonde, 16, M, Curly, $2900, not sold, 6/5/23, NA, NA, NA  
Dini, Medium Brown, 20, M, Blunt, $3600, $6500, 1/17/2023, 4/7/2023, Devorah Gross, 718-884-2008