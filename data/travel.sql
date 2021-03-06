USE [TravelNow]
GO
/****** Object:  Table [dbo].[account]    Script Date: 11/10/2021 3:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_name] [nvarchar](100) NULL,
	[pass] [nvarchar](100) NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/10/2021 3:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customer_id] [nvarchar](50) NOT NULL,
	[customer_name] [nvarchar](50) NULL,
	[address] [nvarchar](200) NULL,
	[phone] [int] NOT NULL,
 CONSTRAINT [PK_Customer_1] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel_available]    Script Date: 11/10/2021 3:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel_available](
	[place_id] [nvarchar](50) NOT NULL,
	[hotel_id] [nvarchar](50) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_hotel_available] PRIMARY KEY CLUSTERED 
(
	[place_id] ASC,
	[hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 11/10/2021 3:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[hotel_id] [nvarchar](50) NOT NULL,
	[hotel_name] [nvarchar](50) NOT NULL,
	[img] [nvarchar](1000) NULL,
	[status] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 11/10/2021 3:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[place_id] [nvarchar](50) NOT NULL,
	[vehical_id] [nvarchar](50) NOT NULL,
	[brand_id] [nvarchar](50) NOT NULL,
	[ticket_quantity] [int] NOT NULL,
	[hotel_id] [nvarchar](50) NOT NULL,
	[room_quantity] [int] NOT NULL,
	[customer_id] [nvarchar](50) NULL,
	[order_date] [date] NULL,
	[start_date] [date] NULL,
	[order_id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tours]    Script Date: 11/10/2021 3:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tours](
	[place_id] [nvarchar](50) NOT NULL,
	[place_name] [nvarchar](50) NOT NULL,
	[status] [nvarchar](1000) NULL,
	[tour_price] [int] NULL,
	[images] [nvarchar](1000) NULL,
	[hot] [bit] NULL,
 CONSTRAINT [PK_Tours] PRIMARY KEY CLUSTERED 
(
	[place_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehical]    Script Date: 11/10/2021 3:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehical](
	[vehicle_id] [nvarchar](50) NOT NULL,
	[vehical_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_vehical] PRIMARY KEY CLUSTERED 
(
	[vehicle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehical_available]    Script Date: 11/10/2021 3:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehical_available](
	[place_id] [nvarchar](50) NOT NULL,
	[vehical_id] [nvarchar](50) NOT NULL,
	[brand_id] [nvarchar](50) NOT NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[img] [nvarchar](1000) NULL,
	[status] [nvarchar](1000) NULL,
 CONSTRAINT [PK_vehical_available] PRIMARY KEY CLUSTERED 
(
	[place_id] ASC,
	[brand_id] ASC,
	[vehical_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehical_brand]    Script Date: 11/10/2021 3:12:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehical_brand](
	[brand_id] [nvarchar](50) NOT NULL,
	[brand_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_vehical_brand] PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([account_id], [account_name], [pass]) VALUES (1, N'admin', N'123456')
INSERT [dbo].[account] ([account_id], [account_name], [pass]) VALUES (2, N'admin2', N'123456789')
SET IDENTITY_INSERT [dbo].[account] OFF
GO
INSERT [dbo].[Customer] ([customer_id], [customer_name], [address], [phone]) VALUES (N'1', N'thais', N'29', 987328864)
INSERT [dbo].[Customer] ([customer_id], [customer_name], [address], [phone]) VALUES (N'100870', N'thai hoan 2', N'khoi 6 thu thuy', 987328864)
INSERT [dbo].[Customer] ([customer_id], [customer_name], [address], [phone]) VALUES (N'100870542', N'asdfasdf', N'khoi 6 thu thuy', 842241)
INSERT [dbo].[Customer] ([customer_id], [customer_name], [address], [phone]) VALUES (N'100872', N'thai hay nhat', N'khoi 6 thu thuy', 398655613)
INSERT [dbo].[Customer] ([customer_id], [customer_name], [address], [phone]) VALUES (N'153793', N'thai hay nhat', N'khoi 6 thu thuy', 398655613)
INSERT [dbo].[Customer] ([customer_id], [customer_name], [address], [phone]) VALUES (N'2', N'Thai Hoan', N'Thu THuy', 39876551)
INSERT [dbo].[Customer] ([customer_id], [customer_name], [address], [phone]) VALUES (N'3', N'thai', N'ngo 2 ngach 5 thu thuy', 100987655)
INSERT [dbo].[Customer] ([customer_id], [customer_name], [address], [phone]) VALUES (N'4', N'THai hoan1', N'cua lo', 98766543)
INSERT [dbo].[Customer] ([customer_id], [customer_name], [address], [phone]) VALUES (N'5', N'THai hoan1', N'cua lo', 98766543)
GO
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'1', N'1', 7, 250000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'1', N'2', 10, 120000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'1', N'3', 20, 134000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'1', N'4', 20, 150000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'1', N'5', 23, 2000000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'1', N'6', 0, 2500000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'2', N'1', 4, 129000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'2', N'2', 23, 130000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'2', N'3', 12, 300000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'2', N'7', 12, 123456)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'3', N'3', 12, 400000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'4', N'4', 17, 400000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'5', N'5', 12, 500000)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'6', N'6', 12, 123456)
INSERT [dbo].[hotel_available] ([place_id], [hotel_id], [quantity], [price]) VALUES (N'7', N'7', 4, 1234567)
GO
INSERT [dbo].[Hotels] ([hotel_id], [hotel_name], [img], [status]) VALUES (N'1', N'nhà Nghỉ Thái Hoàn', N'https://www.travelplusstyle.com/wp-content/gallery/cache/34993__940x_4122_soneva-jani-3-bedroom-water-reserve-with-slide.jpg', N'The first property on our list comes from Soneva, one of our favorite hotel brands. Jani outclasses most other resorts in the Maldives with its sophisticated and exclusive luxury.

“Soneva’s brand of rustic chic luxury takes inspiration from wild nature and adds layers of discreet luxury.” —From our review of Soneva Kiri

In keeping with the brand’s inventive ideas and exclusive organic style, the resort offers original villas built to the highest levels of quality, as well as world-class facilities. Constructed both over-water and on land, the Soneva Jani is located on Medhufaru Island in Noonu atoll, 35 minutes by seaplane from Male Airport—or an hour’s speedboat trip from its sister resort, Soneva Fushi.')
INSERT [dbo].[Hotels] ([hotel_id], [hotel_name], [img], [status]) VALUES (N'2', N'Mường thanh', N'https://www.travelplusstyle.com/wp-content/gallery/cache/35126__940x_rs2883_amanemu-suite-interior.jpg', N'Also from the pool of our favorite hotel brands comes Amanemu, the Aman Resorts’ second property in Japan (after the Aman Tokyo opened in late 2014). Amanemu is the chain’s first hot spring resort, and its twenty-four suites and four villas are designed in an elegant style influenced by ryokans, Japan’s traditional bathing retreats. Amanemu is located on the shores of Ago Bay in the Ise Shima National Park, with a high-speed rail link providing easy access from Tokyo.')
INSERT [dbo].[Hotels] ([hotel_id], [hotel_name], [img], [status]) VALUES (N'3', N'Hòa lạc', N'https://www.travelplusstyle.com/wp-content/gallery/cache/34823__940x_two_bedroom_pool_villa_6671-original.jpg', N'The Six Senses chain is entering new territories, and we are very excited by their first property in Seychelles. Set on the northernmost side of the private island of Félicité, Zil Pasyon can be reached by a helicopter flight from Mahe island or a short boat journey from La Digue or Praslin. The resort features 28 one- or two-bedroom villas and 17 residences, all with private infinity pools — and surrounded by the classic Seychellois landscape of huge granite boulders, tall palms, and white sandy beaches.')
INSERT [dbo].[Hotels] ([hotel_id], [hotel_name], [img], [status]) VALUES (N'4', N'Đã NẴng 5Star', N'https://www.travelplusstyle.com/wp-content/gallery/cache/34964__940x_str4315gr-195103-overwater-villa-with-pool-deck-high.jpg', N'The Maldives as a destination continues to attract the top hotel chains, and St. Regis also got on the action. Vommuli Resort opened on the private island in the Dhaalu Atoll, a 40-minute seaplane ride southwest from Malé, and offers all the latest in contemporary design and luxury. This included a spa, infinity pool, state-of-the-art fitness club, and diving center, as well as three specialty restaurants.')
INSERT [dbo].[Hotels] ([hotel_id], [hotel_name], [img], [status]) VALUES (N'5', N'Num1', N'https://www.travelplusstyle.com/wp-content/gallery/cache/35109__940x_ritzparis-2016-lw0608_75329918_suite_coco_chanel_1.jpg', N'Ritz is a Parisian landmark like no other. Established in 1898, Ritz Paris soon became a world-famous luxury hotel, its importance cemented by visiting celebrities, of the Proust and Hemingway stature. After a significant restoration work under the direction of designer Thierry W. Despont, The Ritz relaunched with 71 rooms and 72 suites (including 15 “prestige suites” that bear names of their most esteemed guests).')
INSERT [dbo].[Hotels] ([hotel_id], [hotel_name], [img], [status]) VALUES (N'6', N'Player', N'https://www.travelplusstyle.com/wp-content/gallery/cache/35122__940x_erosantorini_img_2663-3000.jpg', N'Located a few minutes from the capital of Santorini, Erosantorini is one of the top caldera-edge hotels, and it uses its prime location to maximum advantage. Secluded on a two-acre private plot, the hotel has enough space for a three-tiered infinity pool and adjacent terrace, dotted with beanbags and daybeds. The extra-special facilities and attractions at Erosantorini include al fresco “movie nights,” an underground cigar parlor, and a wine cellar.')
INSERT [dbo].[Hotels] ([hotel_id], [hotel_name], [img], [status]) VALUES (N'7', N'No.1', N'https://www.travelplusstyle.com/wp-content/gallery/cache/35117__940x_w-goa-villa-bedroom.jpg', N'The distinctive brand of hotels hidden behind the enigmatic name “W” is a perfect fit for the hedonistic Goa. With over 100 guest rooms accompanied by numerous facilities and facing the beautiful Vagator Beach, W Goa promises a luxury experience and youthful atmosphere. The resort offers a range of rooms designed in the attractive palettes of fuchsia, purple, and lemon. The top choice here is the massive Wow Villas, “limited in number, exclusive in style.”')
GO
SET IDENTITY_INSERT [dbo].[order_details] ON 

INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'1', 1, N'1', 1, N'1', CAST(N'2021-12-25' AS Date), CAST(N'2021-12-25' AS Date), 1)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'1', 1, N'1', 1, N'1', CAST(N'2021-12-25' AS Date), CAST(N'2021-12-25' AS Date), 3)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'1', 1, N'1', 1, N'2', CAST(N'2021-12-12' AS Date), CAST(N'2021-12-12' AS Date), 4)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'1', 1, N'1', 1, N'4', CAST(N'2021-12-24' AS Date), CAST(N'2021-12-24' AS Date), 5)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'1', 2, N'1', 1, N'3', CAST(N'2021-12-24' AS Date), CAST(N'2021-12-24' AS Date), 6)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'1', 1, N'1', 1, N'1', CAST(N'2021-12-24' AS Date), CAST(N'2021-12-24' AS Date), 7)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'1', 1, N'1', 1, N'1', CAST(N'2021-12-24' AS Date), CAST(N'2021-12-24' AS Date), 8)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'1', 1, N'1', 1, N'100872', CAST(N'2021-10-27' AS Date), CAST(N'2021-10-27' AS Date), 9)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'1', 1, N'1', 1, N'100872', CAST(N'2021-10-27' AS Date), CAST(N'2021-10-27' AS Date), 10)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'1', 1, N'1', 1, N'100872', CAST(N'2021-10-27' AS Date), CAST(N'2021-10-29' AS Date), 11)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'1', N'1', N'3', 1, N'1', 1, N'100872', CAST(N'2021-10-27' AS Date), CAST(N'2021-10-27' AS Date), 12)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'4', N'2', N'1', 2, N'4', 6, N'100870', CAST(N'2021-10-28' AS Date), CAST(N'2021-10-31' AS Date), 13)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'2', N'1', N'1', 1, N'1', 1, N'100870', CAST(N'2021-10-29' AS Date), CAST(N'2021-10-30' AS Date), 14)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'2', N'1', N'1', 3, N'1', 2, N'153793', CAST(N'2021-10-29' AS Date), CAST(N'2021-10-30' AS Date), 15)
INSERT [dbo].[order_details] ([place_id], [vehical_id], [brand_id], [ticket_quantity], [hotel_id], [room_quantity], [customer_id], [order_date], [start_date], [order_id]) VALUES (N'2', N'1', N'3', 2, N'1', 5, N'153793', CAST(N'2021-10-29' AS Date), CAST(N'2021-10-30' AS Date), 16)
SET IDENTITY_INSERT [dbo].[order_details] OFF
GO
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'1', N'CUA HOI', N'GAN NHA ADMIN ', 500000, N'GAN NHA ADMIN', 0)
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'2', N'Phố Cổ Hội An HI', N'Đi du lịch Hội An hay bất cứ một địa điểm nào thì chợ chính là nơi tốt nhất để bạn tìm hiểu về văn hóa, lối sống và nền ẩm thực của người dân địa phương. Ngoài những sạp rau củ quả, quầy hàng lưu niệm hay khu hải sản thì bạn nhất định phải ghé qua khu ẩm thực lề đường của chợ nhé. Mùi hương, màu sắc và âm thanh mời gọi “rặt tiếng Quảng” của người dân nơi đây chắc chắn sẽ không làm bạn thất vọng.
                                        
                                        
                                        ', 500000, N'https://image.thanhnien.vn/1024/uploaded/cuongnv/2020_09_22/img_4223_wvgq.jpg', 1)
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'3', N'Cửa Đại', N'Bãi biển Cửa Đại là một trong những bãi biển đẹp nhất Việt Nam, sánh ngang với bãi biển Mỹ Khê - Đà Nẵng hay bãi Sao - Phú Quốc. Cho đến thời điểm hiện tại, dù các khu nghỉ dưỡng ở Hội An liên tục xuất hiện nhưng bãi biển Cửa Đại vẫn giữ được không gian tĩnh lặng, yên bình và trong lành vốn có.', 250000, N'https://owa.bestprice.vn/images/destinations/uploads/bai-bien-cua-dai-5f979c2faa24f.jpg', 1)
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'4', N'Cửa Lò', N'Quê của admin', 250000, N'https://img.bcdcnt.net/files/e0/ed/1d/e0ed1d0ee997e01fb2e8a185cc85dd05.jpg', 1)
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'5', N'Vịnh Hạ Long', N'Vịnh Hạ Long là địa điểm có thể nói là nổi tiếng nhất Việt Nam, bởi nó được công nhận là di sản văn hóa thế giới, bỏi nó  là tác phẩm nghệ thuật tạo hình kỳ lạ của tạo hóa, không khỏi khiến du khách thích thú nhưng cũng đầy bối rối. Đến với Hạ Long giúp bạn sẽ cảm nhận được những tác phẩm tạo hình tuyệt mỹ, tài hoa của tạo hoá, của thiên nhiên biến hàng ngàn đảo đá vô tri tĩnh lặng kia trở nên những tác phẩm điêu khắc.', 500000, N'https://www.tugo.com.vn/wp-content/uploads/5b-815x459.jpg', 1)
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'6', N'Đảo Phú Quốc', N'Với vị trí nằm gần cuối cực nam của đất nước, Phú Quốc vẫn còn mang trong mình vẻ đẹp hoang sơ với bãi biển xanh ngắt, bờ cát trắng phau cùng những rặng phi lao rì rào trong gió. Là một địa điểm nghỉ dưỡng lý tưởng bởi “hơi thở”, “sự sống tinh khiết” của chính thiên nhiên sẽ giúp bạn chữa lành những sự mệt mỏi trong cuộc sống. Ở đây bạn sẽ thuê những căn hộ, trải nghiệm thú vị, tiện nghi như nhà của mình vậy.', 280000, N'https://www.tugo.com.vn/wp-content/uploads/5l.jpg', 1)
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'7', N'Sapa', N'Sa Pa là thành phố nhỏ thuộc huyện Sapa, tỉnh Lào Cai, Việt Nam. Nhờ tận dụng lợi thế về phong cảnh thiên nhiên, văn hóa cũng như các công trình kiến trúc,…đã giúp Sapa trở thành địa điểm du lịch Việt Nam nổi tiếng trong cả nước lẫn quốc tế.', 500000, N'https://dacotours.com/wp-content/uploads/2019/10/thanh-pho-sapa.jpg', 1)
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'HA NOI', N'HA NOI', N'asfddddddddddddddddddddddddddddasdfsadfasdfsadfasdfasdf                                        ', 4000000, N'https://th.bing.com/th/id/OIP.m94WGQGcUBt81SP157qugAHaDF?w=350&h=146&c=7&r=0&o=5&pid=1.7', 1)
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'HA NOI 2', N'HA 1122', N'asdasdasdasd                 fffffffffffffffffffffff                       
                                        
                                        
                                        ', 500000, N'https://th.bing.com/th/id/OIP.m94WGQGcUBt81SP157qugAHaDF?w=350&h=146&c=7&r=0&o=5&pid=1.7', 0)
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'HA NOI 23', N'Phá» Cá» Há»i An HI', N' boolean hot;
        if(request.getParameter("hot") == null){
            hot = false;
        }else{
            hot = request.getParameter("hot").equals("hot");
        }                                        ', 50000000, N'https://th.bing.com/th/id/OIP.m94WGQGcUBt81SP157qugAHaDF?w=350&h=146&c=7&r=0&o=5&pid=1.7', 0)
INSERT [dbo].[Tours] ([place_id], [place_name], [status], [tour_price], [images], [hot]) VALUES (N'HA NOI 2333', N'Phá» Cá» Há»i An HI', N' Ã¡dfasdfasdf                                       ', 100000, N'https://th.bing.com/th/id/OIP.m94WGQGcUBt81SP157qugAHaDF?w=350&h=146&c=7&r=0&o=5&pid=1.7', 1)
GO
INSERT [dbo].[vehical] ([vehicle_id], [vehical_name]) VALUES (N'1', N'Xe khách')
INSERT [dbo].[vehical] ([vehicle_id], [vehical_name]) VALUES (N'2', N'Thuyền')
INSERT [dbo].[vehical] ([vehicle_id], [vehical_name]) VALUES (N'3', N'Xe lửa')
INSERT [dbo].[vehical] ([vehicle_id], [vehical_name]) VALUES (N'4', N'Máy bay')
GO
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'2', N'1', N'1', 42, 255998, N'https://i1-vnexpress.vnecdn.net/2021/04/08/Xe-Bus-Dien-VinFast-VnExpress-12-1617869550.jpg?w=1200&h=0&q=100&dpr=2&fit=crop&s=q8oZH3s8UEL7woyBOSCSKA', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin. He is one of the richest people in the world.
                                        
                                        
                                        
                                        
                                        ')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'2', N'1', N'2', 49, 500000, N'https://i1-vnexpress.vnecdn.net/2021/04/08/Xe-Bus-Dien-VinFast-VnExpress-12-1617869550.jpg?w=1200&h=0&q=100&dpr=2&fit=crop&s=q8oZH3s8UEL7woyBOSCSKA', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin
                                        ')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'2', N'1', N'3', 38, 350000, N'https://i1-vnexpress.vnecdn.net/2021/04/08/Xe-Bus-Dien-VinFast-VnExpress-12-1617869550.jpg?w=1200&h=0&q=100&dpr=2&fit=crop&s=q8oZH3s8UEL7woyBOSCSKA', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin. He is one of the richest people in the world.')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'3', N'1', N'3', 11, 300000, N'https://i1-vnexpress.vnecdn.net/2021/04/08/Xe-Bus-Dien-VinFast-VnExpress-12-1617869550.jpg?w=1200&h=0&q=100&dpr=2&fit=crop&s=q8oZH3s8UEL7woyBOSCSKA', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin. He is one of the richest people in the world.
                                        ')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'4', N'2', N'1', 8, 250000, N'https://owa.bestprice.vn/images/cruises/uploads/du-thuyen-scarlet-pearl-5f642bbec49c4.jpg', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin. He is one of the richest people in the world.')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'4', N'1', N'2', 49, 500000, N'https://i1-vnexpress.vnecdn.net/2021/04/08/Xe-Bus-Dien-VinFast-VnExpress-12-1617869550.jpg?w=1200&h=0&q=100&dpr=2&fit=crop&s=q8oZH3s8UEL7woyBOSCSKA', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin
                                        ')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'4', N'4', N'2', 30, 500000, N'https://vcdn-dulich.vnecdn.net/2020/08/15/son-may-bay-Disney-Pixar-5452-1597484346.png', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin. He is one of the richest people in the world.')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'4', N'1', N'3', 49, 500000, N'https://th.bing.com/th/id/OIP.xmsPBWetOG08-3sLwGrnMAHaE8?pid=ImgDet&rs=1', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'4', N'1', N'4', 49, 500000, N'https://th.bing.com/th/id/OIP.xmsPBWetOG08-3sLwGrnMAHaE8?pid=ImgDet&rs=1', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'4', N'1', N'5', 10, 650000, N'https://i1-vnexpress.vnecdn.net/2021/04/08/Xe-Bus-Dien-VinFast-VnExpress-12-1617869550.jpg?w=1200&h=0&q=100&dpr=2&fit=crop&s=q8oZH3s8UEL7woyBOSCSKA', N'      asdasdasdasdasd                                  ')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'5', N'2', N'2', 10, 100000, N'https://owa.bestprice.vn/images/cruises/uploads/du-thuyen-scarlet-pearl-5f642bbec49c4.jpg', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin. He is one of the richest people in the world.')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'6', N'2', N'1', 10, 250000, N'https://owa.bestprice.vn/images/cruises/uploads/du-thuyen-scarlet-pearl-5f642bbec49c4.jpg', N'Entrepreneur and investor Jeff Bezos is the founder and CEO of Amazon, owner of The Washington Post and founder of space venture Blue Origin. He is one of the richest people in the world.')
INSERT [dbo].[vehical_available] ([place_id], [vehical_id], [brand_id], [quantity], [price], [img], [status]) VALUES (N'HA NOI', N'1', N'5', 10, 500000, N'https://i1-vnexpress.vnecdn.net/2021/04/08/Xe-Bus-Dien-VinFast-VnExpress-12-1617869550.jpg?w=1200&h=0&q=100&dpr=2&fit=crop&s=q8oZH3s8UEL7woyBOSCSKA', N' sÃ dasdfasdf                                       ')
GO
INSERT [dbo].[vehical_brand] ([brand_id], [brand_name]) VALUES (N'1', N'Công ty du lịch')
INSERT [dbo].[vehical_brand] ([brand_id], [brand_name]) VALUES (N'2', N'VN air line')
INSERT [dbo].[vehical_brand] ([brand_id], [brand_name]) VALUES (N'3', N'JM')
INSERT [dbo].[vehical_brand] ([brand_id], [brand_name]) VALUES (N'4', N'Nhà xe Văn MInh')
INSERT [dbo].[vehical_brand] ([brand_id], [brand_name]) VALUES (N'5', N'Tứ Hoàng')
GO
ALTER TABLE [dbo].[hotel_available]  WITH CHECK ADD  CONSTRAINT [FK_hotel_available_Hotels] FOREIGN KEY([hotel_id])
REFERENCES [dbo].[Hotels] ([hotel_id])
GO
ALTER TABLE [dbo].[hotel_available] CHECK CONSTRAINT [FK_hotel_available_Hotels]
GO
ALTER TABLE [dbo].[hotel_available]  WITH CHECK ADD  CONSTRAINT [FK_hotel_available_Tours] FOREIGN KEY([place_id])
REFERENCES [dbo].[Tours] ([place_id])
GO
ALTER TABLE [dbo].[hotel_available] CHECK CONSTRAINT [FK_hotel_available_Tours]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([customer_id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_Customer]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_Tours] FOREIGN KEY([place_id])
REFERENCES [dbo].[Tours] ([place_id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_Tours]
GO
ALTER TABLE [dbo].[vehical_available]  WITH CHECK ADD  CONSTRAINT [FK_vehical_available_Tours] FOREIGN KEY([place_id])
REFERENCES [dbo].[Tours] ([place_id])
GO
ALTER TABLE [dbo].[vehical_available] CHECK CONSTRAINT [FK_vehical_available_Tours]
GO
ALTER TABLE [dbo].[vehical_available]  WITH CHECK ADD  CONSTRAINT [FK_vehical_available_vehical] FOREIGN KEY([vehical_id])
REFERENCES [dbo].[vehical] ([vehicle_id])
GO
ALTER TABLE [dbo].[vehical_available] CHECK CONSTRAINT [FK_vehical_available_vehical]
GO
ALTER TABLE [dbo].[vehical_available]  WITH CHECK ADD  CONSTRAINT [FK_vehical_available_vehical_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[vehical_brand] ([brand_id])
GO
ALTER TABLE [dbo].[vehical_available] CHECK CONSTRAINT [FK_vehical_available_vehical_brand]
GO
