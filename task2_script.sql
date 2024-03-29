USE [task2]
GO
/****** Object:  Table [dbo].[restaurant]    Script Date: 7/17/2022 7:09:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[restaurant](
	[id] [int] NOT NULL,
	[res_name] [varchar](50) NULL,
	[city] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 7/17/2022 7:09:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cat_id] [int] NOT NULL,
	[res_id] [int] NULL,
	[cat_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 7/17/2022 7:09:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[item_id] [int] NOT NULL,
	[item_name] [varchar](40) NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_item]    Script Date: 7/17/2022 7:09:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_item](
	[catId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[catId] ASC,
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Restaurant Items]    Script Date: 7/17/2022 7:09:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Restaurant Items] 
as 
select res_name as Restaurant, item_name as Item
from restaurant
inner join category on restaurant.id = category.res_id
inner join category_item on category.cat_id = category_item.catId
inner join item on category_item.itemId = item.item_id;
GO
/****** Object:  View [dbo].[id_price]    Script Date: 7/17/2022 7:09:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[id_price] as 
select id as [Restaurant Id], price
from restaurant
inner join category on restaurant.id = category.res_id
inner join category_item on category.cat_id = category_item.catId
inner join item on category_item.itemId = item.item_id;
GO
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (1, 1, N'Entrees')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (2, 1, N'Pizza')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (3, 1, N'Drinks')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (4, 2, N'Soup')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (5, 2, N'Main Course')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (6, 2, N'Drinks')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (7, 3, N'Fast Food Meals')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (8, 3, N'Drinks')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (9, 4, N'Pizza')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (10, 4, N'Drinks')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (11, 5, N'Pizza')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (12, 5, N'Drinks')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (13, 6, N'Veg Starter')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (14, 6, N'Sides')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (15, 6, N'Pizza')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (16, 6, N'Breads and Rice')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (17, 6, N'Drinks')
INSERT [dbo].[category] ([cat_id], [res_id], [cat_name]) VALUES (18, 6, N'Desserts')
GO
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (1, 21)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (1, 22)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (1, 23)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (1, 24)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (1, 26)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (1, 32)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (1, 33)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (1, 34)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (2, 13)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (2, 14)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (2, 15)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (2, 16)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (3, 1)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (3, 2)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (3, 3)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (3, 4)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (3, 5)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (3, 6)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (3, 7)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (3, 8)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (3, 9)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (4, 17)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (4, 18)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (4, 19)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (4, 20)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (5, 31)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (6, 1)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (6, 2)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (6, 4)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (6, 5)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (7, 32)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (7, 33)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (8, 7)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (8, 8)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (9, 15)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (9, 16)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (10, 2)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (10, 3)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (11, 13)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (11, 14)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (12, 1)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (12, 2)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (12, 5)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (12, 6)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (13, 25)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (13, 34)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (14, 21)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (14, 22)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (14, 23)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (14, 24)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (14, 25)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (14, 33)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (15, 13)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (15, 14)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (15, 15)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (15, 16)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (16, 31)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (17, 2)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (17, 3)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (18, 10)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (18, 11)
INSERT [dbo].[category_item] ([catId], [itemId]) VALUES (18, 12)
GO
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (1, N'Espresso', 4)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (2, N'Mocha', 4)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (3, N'Latte', 3)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (4, N'Cappuccino', 3)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (5, N'Hot Cocoa', 4)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (6, N'Black Tea', 2)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (7, N'Green Tea', 2)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (8, N'Flower Tea', 3)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (9, N'China Tea', 3)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (10, N'Cheesecake', 6)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (11, N'Cookies', 5)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (12, N'Cake', 4)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (13, N'Meat pizza', 12)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (14, N'Margherita', 11)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (15, N'Sea Food Pizza', 14)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (16, N'Vegetarian Pizza', 10)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (17, N'Bean Soup', 5)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (18, N'Tomato Soup', 5)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (19, N'Broccoli Soup', 6)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (20, N'Creamy Pumpkin Soup', 5)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (21, N'Tuna Salad', 5)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (22, N'Chicken Salad', 7)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (23, N'Dressings Salad', 7)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (24, N'Sausage Salad', 6)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (25, N'Green Salad', 5)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (26, N'Spring Roll', 9)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (27, N'Wonton', 10)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (28, N'Chinese Noodles', 6)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (29, N'Dumpling', 8)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (30, N'Mantou', 8)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (31, N'Rice', 6)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (32, N'French Fries', 4)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (33, N'Chilly Potato', 4)
INSERT [dbo].[item] ([item_id], [item_name], [price]) VALUES (34, N'Cheese Ball', 5)
GO
INSERT [dbo].[restaurant] ([id], [res_name], [city]) VALUES (1, N'NYC Pizza', N'Ramallah')
INSERT [dbo].[restaurant] ([id], [res_name], [city]) VALUES (2, N'Chinese Food Corner', N'Ramallah')
INSERT [dbo].[restaurant] ([id], [res_name], [city]) VALUES (3, N'90s Burger', N'Nablus')
INSERT [dbo].[restaurant] ([id], [res_name], [city]) VALUES (4, N'Atout Pizza', N'Nablus')
INSERT [dbo].[restaurant] ([id], [res_name], [city]) VALUES (5, N'Pizza Hot', N'Jenin')
INSERT [dbo].[restaurant] ([id], [res_name], [city]) VALUES (6, N'Huny Huny', N'Jenin')
GO
ALTER TABLE [dbo].[category]  WITH CHECK ADD FOREIGN KEY([res_id])
REFERENCES [dbo].[restaurant] ([id])
GO
ALTER TABLE [dbo].[category_item]  WITH CHECK ADD FOREIGN KEY([catId])
REFERENCES [dbo].[category] ([cat_id])
GO
ALTER TABLE [dbo].[category_item]  WITH CHECK ADD FOREIGN KEY([itemId])
REFERENCES [dbo].[item] ([item_id])
GO

-- view -> restuarant.name, item.name
create view [Restaurant Items] 
as 
select res_name as Restaurant, item_name as Item
from restaurant
inner join category on restaurant.id = category.res_id
inner join category_item on category.cat_id = category_item.catId
inner join item on category_item.itemId = item.item_id;

select * 
from [Restaurant Items];


-- Number of items per restaurant
select res_name as Restaurant, count(category_item.itemId) as [Number Of Items]
from restaurant 
inner join category on restaurant.id = category.res_id
inner join category_item on category.cat_id = category_item.catId
group by restaurant.id, restaurant.res_name;


-- Average number of items per category
select avg(countOfItems) as [Average number of items per category] from
(
select count(category_item.itemId) as countOfItems
from category_item
group by category_item.catId
) 
as Average;

-- index on price
create index price_index
on item(price);

-- High and Low average price of items per restarant
select max([Average Price]) as [Max Average], min([Average Price]) as [Min Average] from
(
select res_name, avg(item.price) as [Average Price]
from restaurant
inner join category on restaurant.id = category.res_id
inner join category_item on category.cat_id = category_item.catId
inner join item on category_item.itemId = item.item_id
group by restaurant.id, restaurant.res_name
)
as [Max & Min Average];

-- 3rd higest item price per restaurant
-- first, a viwe is created
create view id_price as 
select id as [Restaurant Id], price
from restaurant
inner join category on restaurant.id = category.res_id
inner join category_item on category.cat_id = category_item.catId
inner join item on category_item.itemId = item.item_id;

select [Restaurant Id], price
from id_price
where price =
(
  select min(price)
	from 
    (select top 3 price 
    from id_price as f where f.[Restaurant Id]=Id_Price.[Restaurant Id]
    order by price desc) as higest_three
)
group by [Restaurant Id], price;

-- Restaurants having more than five categories
select res_name as [Restaurant Name]
from restaurant
inner join category on restaurant.id = category.res_id
group by restaurant.id, restaurant.res_name
having count(category.cat_id) > 5;