USE [master]
GO
/****** Object:  Database [Travel]    Script Date: 2021/4/18 7:56:43 ******/
CREATE DATABASE [Travel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Travel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MYMSSQLSERVER\MSSQL\DATA\Travel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Travel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MYMSSQLSERVER\MSSQL\DATA\Travel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Travel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Travel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Travel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Travel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Travel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Travel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Travel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Travel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Travel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Travel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Travel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Travel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Travel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Travel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Travel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Travel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Travel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Travel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Travel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Travel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Travel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Travel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Travel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Travel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Travel] SET RECOVERY FULL 
GO
ALTER DATABASE [Travel] SET  MULTI_USER 
GO
ALTER DATABASE [Travel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Travel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Travel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Travel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Travel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Travel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Travel', N'ON'
GO
ALTER DATABASE [Travel] SET QUERY_STORE = OFF
GO
USE [Travel]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2021/4/18 7:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](50) NOT NULL,
	[AdminPassword] [nvarchar](50) NOT NULL,
	[AdminIdentity] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[luntan]    Script Date: 2021/4/18 7:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[luntan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[eaintroduce] [nvarchar](max) NOT NULL,
	[introduce] [nvarchar](max) NOT NULL,
	[img] [nvarchar](max) NOT NULL,
	[userID] [int] NOT NULL,
 CONSTRAINT [PK_luntan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 2021/4/18 7:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderUserid] [int] NOT NULL,
	[shopName] [nvarchar](max) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[sum] [int] NOT NULL,
	[price] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Shopping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plun]    Script Date: 2021/4/18 7:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plun](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userplun] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[usertime] [datetime] NULL,
 CONSTRAINT [PK_Plun] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopText]    Script Date: 2021/4/18 7:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopText](
	[shopid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[shopimg] [nvarchar](max) NOT NULL,
	[ShopPrice] [numeric](18, 2) NOT NULL,
	[ShopTitle] [nvarchar](max) NOT NULL,
	[shopBrowse] [int] NOT NULL,
	[Sell] [int] NOT NULL,
	[Shoptype] [nvarchar](max) NULL,
	[ShopDetails] [nvarchar](max) NULL,
	[hotel] [nvarchar](max) NULL,
	[CostDescription] [nvarchar](max) NULL,
	[refund] [nvarchar](max) NULL,
	[Tips] [nvarchar](max) NULL,
 CONSTRAINT [PK_Text] PRIMARY KEY CLUSTERED 
(
	[shopid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiezi]    Script Date: 2021/4/18 7:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiezi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[contentText] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[userimg] [nvarchar](50) NULL,
 CONSTRAINT [PK_tiezi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tongyou]    Script Date: 2021/4/18 7:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tongyou](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[setout] [nvarchar](max) NOT NULL,
	[returns] [nvarchar](max) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[userID] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[userimg] [nvarchar](100) NULL,
 CONSTRAINT [PK_tongyou] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2021/4/18 7:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Userid] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[sex] [nchar](10) NOT NULL,
	[UserAccount] [nvarchar](50) NOT NULL,
	[UserPwd] [nvarchar](50) NOT NULL,
	[QB] [numeric](18, 2) NOT NULL,
	[balance] [numeric](18, 2) NOT NULL,
	[UserIntroduce] [nvarchar](max) NULL,
	[Phone] [nvarchar](18) NOT NULL,
	[birthday] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[onceAddress] [nvarchar](max) NULL,
	[userimg] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([id], [AdminName], [AdminPassword], [AdminIdentity], [Email], [phone]) VALUES (1, N'QYAdmin', N'123', N'超级管理员', N'1160237@qq.com', N'1872267940')
INSERT [dbo].[Admin] ([id], [AdminName], [AdminPassword], [AdminIdentity], [Email], [phone]) VALUES (3, N'guanliyuan', N'123', N'超级管理员', N'1160237554@qq.com', N'18677153429')
INSERT [dbo].[Admin] ([id], [AdminName], [AdminPassword], [AdminIdentity], [Email], [phone]) VALUES (4, N'yy', N'123', N'普通管理员', N'1160237554@qq.com', N'12345679')
INSERT [dbo].[Admin] ([id], [AdminName], [AdminPassword], [AdminIdentity], [Email], [phone]) VALUES (1003, N'芜湖', N'123', N'超级管理员', N'1160237554@qq.com', N'2233')
INSERT [dbo].[Admin] ([id], [AdminName], [AdminPassword], [AdminIdentity], [Email], [phone]) VALUES (1004, N'嗡嗡嗡', N'123456', N'超级管理员', N'1160237554@qq.com', N'18677154357')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[luntan] ON 

INSERT [dbo].[luntan] ([id], [eaintroduce], [introduce], [img], [userID]) VALUES (1, N'这个世界很美好', N'有空来看看吧', N'./Content/img/用户默认头像.jpg', 3)
INSERT [dbo].[luntan] ([id], [eaintroduce], [introduce], [img], [userID]) VALUES (2, N'世界真美好', N'你们京哈', N'./Content/img/用户默认头像.jpg', 3)
INSERT [dbo].[luntan] ([id], [eaintroduce], [introduce], [img], [userID]) VALUES (3, N'世界真美好顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶', N' 顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶', N'./Content/img/用户默认头像.jpg', 3)
INSERT [dbo].[luntan] ([id], [eaintroduce], [introduce], [img], [userID]) VALUES (4, N'去哪呀', N'你们京哈', N'./Content/img/用户默认头像.jpg', 3)
SET IDENTITY_INSERT [dbo].[luntan] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (3, 10, N'玉龙雪山大索道+印象丽江+玉龙雪山纯玩一日游', N'境外', 1, CAST(3999.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (4, 3, N'我i奥hi解耦', N'境内', 1, CAST(3999.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (5, 3, N'元素的空间噢批', N'境外', 1, CAST(2345.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (7, 10, N'阿斯顿尽可能六', N'境内', 1, CAST(1234.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (9, 10, N'玉龙雪山大索道+印象丽江+玉龙雪山纯玩一日游', N'境外', 1, CAST(3999.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (10, 3, N'我i奥hi解耦', N'境内', 1, CAST(3999.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (11, 3, N'元素的空间噢批', N'境外', 1, CAST(2345.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (13, 10, N'阿斯顿尽可能六', N'境内', 1, CAST(1234.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (14, 3, N'玉龙雪山大索道+印象丽江+玉龙雪山纯玩一日游', N'境外', 1, CAST(3999.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (15, 9, N'贵州旅游贵阳黄果树瀑布西江千户苗寨荔波梵净山旅游包车自由行', N'境内', 3, CAST(2850.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (16, 9, N'贵州旅游贵阳黄果树瀑布西江千户苗寨荔波梵净山旅游包车自由行', N'境内', 3, CAST(2850.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (20, 1, N'{order.shopName}', N'{order.type}', 2, CAST(3699.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (22, 3, N'贵阳天河潭+夜郎谷一日游-VIP一单一团·穿越历史隧道/身临夜郎古国·0购物·不拼团/独立私密·安全出游·一环内免费接送', N'境内', 11, CAST(6050.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (32, 3, N'贵阳+天河潭+丹寨+西江2日游-VIP一单一团·风情古寨·鸟笼制作/苗服拍照·蜡染体验·24H接机·黔山秀水·千户夜景', N'境内', 1, CAST(1500.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (33, 3, N'玉龙雪山大索道+印象丽江+玉龙雪山纯玩一日游+赠防寒服氧气', N'境内', 1, CAST(360.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (34, 3, N'玉龙雪山大索道+印象丽江+玉龙雪山纯玩一日游+赠防寒服氧气', N'境内', 1, CAST(360.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (35, 3, N'贵州旅游贵阳黄果树瀑布西江千户苗寨荔波梵净山旅游包车自由行', N'境内', 4, CAST(950.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (36, 3, N'网红打卡·呼伦贝尔大草原+异国风情满洲里SUV穿越5日游（1单1团+套娃亲子主题乐园+不限时骑马+星空蒙古包+篝火狂欢夜）', N'境内', 4, CAST(5920.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (42, 3, N'网红打卡·呼伦贝尔大草原+异国风情满洲里SUV穿越5日游（1单1团+套娃亲子主题乐园+不限时骑马+星空蒙古包+篝火狂欢夜）', N'境内', 2, CAST(2960.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (43, 3, N'网红打卡·呼伦贝尔大草原+异国风情满洲里SUV穿越5日游（1单1团+套娃亲子主题乐园+不限时骑马+星空蒙古包+篝火狂欢夜）', N'境内', 1, CAST(1480.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (48, 15, N'（五星，香格里拉）香格里拉松赞林卡2晚+早+松赞林寺门票+双人下午茶+接/送机！预定全系列松赞酒店松赞山居！', N'境外', 1, CAST(2018.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (49, 15, N'玉龙雪山大索道+印象丽江+玉龙雪山纯玩一日游+赠防寒服氧气', N'境内', 1, CAST(360.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (50, 15, N'玉龙雪山大索道+印象丽江+玉龙雪山纯玩一日游+赠防寒服氧气', N'境内', 1, CAST(360.00 AS Numeric(18, 2)))
INSERT [dbo].[order] ([id], [orderUserid], [shopName], [type], [sum], [price]) VALUES (1003, 3, N'贵州旅游贵阳黄果树瀑布西江千户苗寨荔波梵净山旅游包车自由行', N'境内', 1, CAST(950.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[Plun] ON 

INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (1, N'顶顶顶', N'翱翔', CAST(N'2021-04-01T20:07:48.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (2, N'撒大苏打', N'翱翔', CAST(N'2021-04-01T20:11:29.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (3, N'撒大苏打', N'翱翔', CAST(N'2021-04-01T20:23:37.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (4, N'等等', N'翱翔', CAST(N'2021-04-01T20:36:04.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (5, N'哈哈哈', N'翱翔', CAST(N'2021-04-02T13:12:38.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (6, N'凭什么要用面向对象编程—面向对象重要设计原则概述  ', N'翱翔', CAST(N'2021-04-02T13:18:13.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (7, N'世界真大！', N'翱翔', CAST(N'2021-04-02T13:20:23.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (8, N'带你去玩', N'翱翔', CAST(N'2021-04-02T13:20:30.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (9, N'成功不是将来才有的， 而是从决定去做的那一刻起，持续累积而成。', N'翱翔', CAST(N'2021-04-02T13:20:41.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (10, N'带你去玩', N'翱翔', CAST(N'2021-04-02T13:21:00.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (11, N'世界真大！', N'翱翔', CAST(N'2021-04-02T13:21:07.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (12, N'凭什么要用面向对象编程—面向对象重要设计原则概述  ', N'翱翔', CAST(N'2021-04-02T13:22:38.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (13, N'美丽风景', N'翱翔', CAST(N'2021-04-02T13:22:51.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (14, N'飞翔蓝天', N'翱翔', CAST(N'2021-04-02T13:22:59.000' AS DateTime))
INSERT [dbo].[Plun] ([id], [userplun], [name], [usertime]) VALUES (15, N'真不错！', N'翱翔', CAST(N'2021-04-02T13:23:06.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Plun] OFF
GO
SET IDENTITY_INSERT [dbo].[shopText] ON 

INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (6, N'./Content/shopimg/贵阳天河潭.jpg', CAST(1500.00 AS Numeric(18, 2)), N'贵阳+天河潭+丹寨+西江2日游-VIP一单一团·风情古寨·鸟笼制作/苗服拍照·蜡染体验·24H接机·黔山秀水·千户夜景', 2, 0, N'境内', N'最早可订明日，本商品支付完成即可顺利出行，无需等待确认', N'jhgjhg;', N'最早可订明日，本商品支付完成即可顺利出行，无需等待确认', N'使用日期前7天 17:00之前    0%    

使用日期前4天 17:00之前    20%    

使用日期前1天 17:00之前    40%    

使用日期前1天 17:00之后    100%    ', N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (8, N'./Content/shopimg/泸湖.jpg', CAST(360.00 AS Numeric(18, 2)), N'泸沽湖+猪槽船+里格半岛+纯玩2日跟团游（6-14人精品商务小团）', 12, 0, N'境内', N'泸沽湖客栈或酒店参考

泸沽湖山景房：阿塔庄园山景房，山舍客栈或同级

泸沽湖湖景房：阿塔庄园湖景，湖上雅居，湖上云居，湖上民居，云湾湖景客栈或同级', N'./Content/shopimg/泸湖酒店.jpg', N'所列行程内泸沽湖客栈或酒店标间，含餐1早3正，景点门票

', N'需商家二次确认的旅行产品，在用户下单付款后，商家确认前，用户可取消订单并要求退款；在商家确认后，用户要求取消订单并要求退款的须按下列规定执行：

国内团队游合同标准模板

使用日期前 7 天 17:00 之前(含) 损失费用 0%

使用日期前 4 天 17:00 之前(含) 损失费用 20%

使用日期前 1 天 17:00 之前(含) 损失费用 40%

使用日期前 1 天 17:00 之后 损失费用 100%', N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (9, N'./Content/shopimg/贵州.jpg', CAST(950.00 AS Numeric(18, 2)), N'贵州旅游贵阳黄果树瀑布西江千户苗寨荔波梵净山旅游包车自由行', 12, 1, N'境内', N'预定须知：
1：旺季个别车型比较紧张，下单前联系客服确认是否有车，自行下单无效。
2：48小时内属于加急订单，价格会有上浮的可能，请各位亲 提早预订呢。
3：请向客服准确提供乘坐人数，行李箱件数及尺寸大小，以便为您提供准确的车型及建议。
4：旅游包车服务属于特殊商品，本产品在您预定成功后，如需更改或取消请参考退改流程。
5：为方便调度人员提前为您安排车辆及师傅，请加好公司统一调度人员。备注好：订单客人姓名，包车时间。
6：出发前1-2天司机会以电话/短信联系您再次确认出发时间及地址，请务必保持电话畅通。
7：包车服务时间不可间断及分割，列如：早8点至晚18点为正常服务时间，超时用车及服务，理应支付相应的超时服务费等。
8：国内节假日：春节，暑假期间，国庆节等等节日会导致游客增多，包车费用因此也会有所上浮。
【附：淡季/旺季定义】
1）淡季：6月1日之前-9月（含1日）之后，贵州进出常规路线用车不加价。
2）旺季：（6月1日-8月31日）贵州进出常规路线用车加价20% 。
3）法定节假日：国庆节用车在原订单金额基础上加价20% ，春节用车价格另议 ', NULL, N'预定须知：
1：旺季个别车型比较紧张，下单前联系客服确认是否有车，自行下单无效。
2：48小时内属于加急订单，价格会有上浮的可能，请各位亲 提早预订呢。
3：请向客服准确提供乘坐人数，行李箱件数及尺寸大小，以便为您提供准确的车型及建议。
4：旅游包车服务属于特殊商品，本产品在您预定成功后，如需更改或取消请参考退改流程。
5：为方便调度人员提前为您安排车辆及师傅，请加好公司统一调度人员。备注好：订单客人姓名，包车时间。
6：出发前1-2天司机会以电话/短信联系您再次确认出发时间及地址，请务必保持电话畅通。
7：包车服务时间不可间断及分割，列如：早8点至晚18点为正常服务时间，超时用车及服务，理应支付相应的超时服务费等。
8：国内节假日：春节，暑假期间，国庆节等等节日会导致游客增多，包车费用因此也会有所上浮。
【附：淡季/旺季定义】
1）淡季：6月1日之前-9月（含1日）之后，贵州进出常规路线用车不加价。
2）旺季：（6月1日-8月31日）贵州进出常规路线用车加价20% 。
3）法定节假日：国庆节用车在原订单金额基础上加价20% ，春节用车价格另议 ', N'使用日期前7天17:00之前(含)，扣除买家订单金额0%作为卖家损失费
使用日期前4天17:00之前(含)，扣除买家订单金额20%作为卖家损失费
使用日期前1天17:00之前(含)，扣除买家订单金额40%作为卖家损失费
使用日期前1天17:00之后，扣除买家订单金额100%作为卖家损失费

特别说明

1. 请游客朋友须知，如果自己预定住宿务必跟客服联系确认地址，避免定错位置（如需单独预定酒店服务，请向客服咨询）。
2.拼车含住宿产品是按照2名成人入住1间房核算的单人价格，如出现单人下单系统会自动收取一人的单房差费用，我们尽量安排该队员与其他同性别队员拼住标间或三人间；如拼房成功，我社将单房差退换给游客。
3. 拼车含的套餐中的住宿标准；
第1晚恩和俄罗斯民族乡为特色木刻楞标间，纯木头打造的特色住宿；
第2晚莫尔道嘎为商务型酒店；
第3晚特色蒙古包标间，独立卫浴能洗漱； 
第4晚满洲里为商务型酒店。
4. 包车产品如遇人数较多的，我们还可以为您提供7座、9座、10座、11座 、14座、17座、23座 、26座、39座 等各种多档次车型，详情请咨询客服人员。', N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (11, N'./Content/shopimg/夜郎谷.jpg', CAST(650.00 AS Numeric(18, 2)), N'贵阳天河潭+夜郎谷一日游-VIP一单一团·穿越历史隧道/身临夜郎古国·0购物·不拼团/独立私密·安全出游·一环内免费接送', 2, 1, N'境内', N'最早可订明日，本商品支付完成即可顺利出行，无需等待确认', N'jhgjhg;', N'最早可订明日，本商品支付完成即可顺利出行，无需等待确认', N'使用日期前7天 17:00之前    0%    

使用日期前4天 17:00之前    20%    

使用日期前1天 17:00之前    40%    

使用日期前1天 17:00之后    100%    

', N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (13, N'./Content/shopimg/网红打卡.jpg', CAST(1480.00 AS Numeric(18, 2)), N'网红打卡·呼伦贝尔大草原+异国风情满洲里SUV穿越5日游（1单1团+套娃亲子主题乐园+不限时骑马+星空蒙古包+篝火狂欢夜）', 48, 3, N'境内', N'./Content/shopimg/网红打卡详情.jpg', NULL, N'当地交通

根据您团队的人数安排车辆，全程专车专司机，玩命保证您团队的独立、自由、自主；

2个人我们配备轿车（大众，伊兰特，尼桑启程，雪佛兰科鲁兹或同级）；

3人-4人我们配置城市suv（哈弗H6，起亚狮跑，海马S5或同级）；

5-6人我们配置别克（GL8）；

7-8人我们配置11座商务车（瑞丰）；

9-12人我们配置15座商务车（九龙，海格，金杯）；

13-17人我们配置22座考斯特；

18-30人我们配置33座空调旅游车；

住宿

全程包含4晚住宿，额尔古纳、满洲里、草原景区为蒙古包住宿、海拉尔；

餐食

全程住宿酒店含早餐，其他餐食敬请自理；

景点门票

行程所列景点门票 (不含自主娱乐项目)；景区门票包含：呼伦贝尔大草原、额尔古纳湿地+电瓶车、套娃、呼伦湖、186彩带河；

娱乐活动：巴尔虎20项民俗活动，骑马穿越草原一小时，射箭（10支），访牧户，滑草，蒙古袍拍照；

司导服务

10人以下团队，专业司机可提供简单向导及生活服务；十人以上团队配备导游全程服务；', N'使用日期前7天 17:00之前    0%    

使用日期前4天 17:00之前    20%    

使用日期前1天 17:00之前    40%    

使用日期前1天 17:00之后    100%    

', N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (14, N'./Content/shopimg/网红打卡.jpg', CAST(1480.00 AS Numeric(18, 2)), N'网红打卡·呼伦贝尔大草原+异国风情满洲里SUV穿越5日游（1单1团+套娃亲子主题乐园+不限时骑马+星空蒙古包+篝火狂欢夜）', 1, 0, N'境内', N'./Content/shopimg/网红打卡详情.jpg', NULL, N'当地交通', N'使用日期前7天 17:00之前    0%    

使用日期前4天 17:00之前    20%    

使用日期前1天 17:00之前    40%    

使用日期前1天 17:00之后    100%    

', N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (18, N'./Content/shopimg/三亚旅游亚特兰蒂斯酒店.jpg', CAST(1990.00 AS Numeric(18, 2)), N'【三亚旅游亚特兰蒂斯酒店】网红酒店自由搭配、送四项门票/下午茶/午晚餐！提前15天升级海景房示房态，三亚亚龙湾海棠湾三亚湾亲子旅行、专属客服服务、2人起订！', 1, 0, N'境外', N'▲快速预约出行↓↓Top New超值预售↓↓

▲客服手机/微信：188 1868 0049

▲一对一管家7*24小时全程旅行贴心服务。

▲酒店实时房态,旅行特价精选,早买早约,不约可退！

▲机票/酒店/机加酒等旅行超值折扣。更多咨询请撩客服！', N'床型：大/双床

房型：双人间

三亚

地址：三亚海棠湾海棠北路36号

三亚亚特兰蒂斯酒店位于海棠北路，雄踞海棠湾，俯瞰迷人的中国南海，距离国际免税城约数分钟车程。
酒店占地面积约30万平方米，是融合酒店，餐饮，购物，水乐园以及水族馆为一体的综合性娱乐度假目的地。这里拥有千余间宽敞的海景客房及套房，可以满足客人的不同需求。特色套房内宽敞豪华的内部装饰，带来尊贵的入住体验，配以24小时贴身管家服务。5间双层水底套房，可以饱览大使环礁湖中86000尾海洋精灵尽情游弋的奇幻景致。
这里拥有21家寰球美食，包括享誉全球的Bread Street Kitchen & Bar, 以及独具特色的奥西亚诺海底餐厅。全年开放的水世界按照国际领先标准打造，全长2公里的极速漂流河以及30条滑道为您带来肾上腺素飙升，心跳加速的J致快感。高达23米，角度近乎垂直的“海神之跃”等待着勇敢者的挑战。失落的空间水族馆内共展示约280种海洋鱼类，以及两只来自极地的可爱白鲸，大使环礁湖中提供多种潜水项目供您参与。在海豚湾和海狮乐园内， 40只聪慧的海洋精灵们期待与您零距离互动。
酒店拥有总面积超过5000平方米的多功能厅，无论是婚礼、派对，还是董事会议、宴会，都能提供满足您需求的理想场地。', N'套餐一：即可享受（未预约，可退款）

亚特海景房2晚海景房

2大2小海景房一晚住宿

2大2小自助早餐及入住期间无限次畅玩

亚特兰蒂斯水世界&失落的空间水族馆

C秀门票1张（在前台领取）

灯会门票（在前台领取）

复游旅拍（五张）

*2小指12岁以下小朋友



套餐二：即可享受

2+2组合5天4晚酒店套餐

每日早餐

所有酒店税费

机场至酒店专车接送机

此产品需2人起拍，页面价格为单人价。单人入住需补房差', N'
1、不含往返机票（如需预定，请咨询客服）

2、不含单房差费用

3、不含套餐外的一切个人费用

', N'预定亚特酒店礼遇以海报为准；

2大2小自助早餐

就餐人数：2成人，2儿童;（儿童年龄0～12岁（不含））

用餐时间：入住起第2天－第2天可用

餐厅描述：入住期间酒店双人自助早餐（大床房可2大1小 ，双床房可2大2小（小童限0-12岁） 超出人数和超高儿童餐费请前台自理



2大2小水世界无限次

适用人数：2成人，2儿童;（儿童年龄0～12岁（不含））

游玩时间：入住起第1天至2天 12:00 - 12:00可用

入园方式：办理入住登记入住人信息（成人+孩子），人脸识别入园

票型描述：非实体票，刷脸入园，有效期：入住当日12点办理等房卡手续后可以入园游玩---到次日退房前不限次数入园，办理入住时咨询前台

补充说明：

亚特兰蒂斯水世界造浪池表演秀 项目： 1. 热火桑巴舞和能炒水荧舞11: 00 2. 桑巴舞巡游12: 30 3. 热火桑巴舞12: 45 4. 佤族风情火舞和传统鼓舞13: 10 5. 演绎狂欢荟萃14: 30/16: 00 6. 幻海美人鱼表演秀16: 30 备注：以上所有演出时间以度假区当天实际安排为准。



三亚机场巴士接送

适用人数：2成人，2儿童;（儿童年龄0～12岁（不含））

适用时间：入住起第1天至2天 可用

补充说明：1、入住期间可免费乘坐酒店提供三亚凤凰机场/三亚市区穿梭巴士 2、具体时间请参考使用说明 3、请您以酒店当天安排巴士为准，如遇取消或者更改班次，无法做出任何补偿，请您谅解！



每房送C票1张

这个前台领取，酒店预定号为准。



旅拍免费体验一份（提前一天预定联系电话）

赠送5张电子照片。



亚特兰蒂斯拍摄场景共有:

室内： 1.水族馆  2.大使环礁湖 3.水底餐厅（客人需预约餐食品）4.客房内（客人需住店）

室外：1.草坪  2.沙滩 （三亚室外风景第1次来必拍）3.泳池 4. 水世界

我们有以下摄影服务套餐：

推荐套餐A

欢乐60分钟788元套餐 全套简修电子照片(保底80张以上)+赠送5张精修照片

拍摄场景建议：2个场景

推荐套餐B

网红约拍90分钟1588元专属定制

（ 跟拍90分钟 +保底80张简修电子照片+25张精修+30秒小视频)

拍摄场景建议：3个场景

以上各类套餐：

全套底片简修全送，摄影师1对1全程跟拍，无隐形消费

如需加场景：400元/个场景（含30分钟和30张照片)

超过人数不分大小（5人）：加150元/人。

注意：

1.所有套餐拍摄人数为一个家庭不得大于5人，为避免2组家庭张数不均，谢谢理解!

2.沙滩和水世界分开相隔20分钟路程，60分钟套餐不建议选择！

3.我们提供的服务是按时收费，从离开柜台起开始计时。

4.精修照片时间+10，您给到我们修片那天后＋10天。

5.复游拍约拍产品主打写实风格，亲子氛围为主。

6.三亚户外拍摄天气炎热，恳请各位客人理解摄影师的辛苦，给予他们正能量和鼓励！

醉后请各位亲务必在您约定的时间准时到达柜台，避免影响后面客人的拍摄。

如遇天气原因可免费更换时间。

如因客人自己原因取消拍摄费用只可退还50%，因为摄影师的档期时间已经为您安排请理解！





升级尊享管家服务（咨询客服）

享受皇家俱乐部、至 尊套房、豪华套房

2020-09-04至2020-10-07入住期间入住期间尊享皇家俱乐部礼遇。

尊享度假区内表演：美人鱼表演秀/白鲸表演/小丑魔术/杂技各类表演和舞蹈等。 

•贵宾厅办理入住/退房手续 

•客房赠送花露水

•免费迷你吧软饮

•皇家俱乐部享用早餐 

•皇家俱乐部享用下午茶 

•皇家俱乐部享用鸡尾酒时光 

•皇家俱乐部全天供应咖啡、茶及软饮 （7:00-23:00）

•皇家俱乐部提供报刊和杂志



升级尊享私人管家服务（咨询客服）

享受尼普顿水底套房、波塞冬水底套房、总统套房

皇家俱乐部礼遇，皇家俱乐部楼层享用下午茶 ，鸡尾酒时光，豪华车接送机服务（三亚市区范围内）； 

尊享入住期间双人白鲸互动或潜水探险之旅； 

尊享入住期间双人1小时AHAVA SPA体验； 

赠送海狮玩偶、亚特兰蒂斯定制T恤、帽子； 

尊享洗衣及熨烫服务；

尊享复游会专属旅拍5张电子照片； 

尊享每日水世界凉亭或泳池家庭凉亭； 

提供儿童尊享畅玩迷你营国际品牌玩具。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (19, N'./Content/shopimg/五星三亚.jpg', CAST(1988.00 AS Numeric(18, 2)), N'（五星，三亚）海南雅居乐莱佛士酒店2-3晚+三亚国际免税城海棠湾亚特兰蒂斯', 2, 0, N'境外', N'往返机场接送，怀憬廊下午茶+鸡尾酒，送红酒，中餐/意味海鲜晚餐

酒店可直达海滩区，距离CDF免税店和亚特兰蒂斯水上乐园只需15分钟车程

坐落于世界第三个“会唱歌的沙滩”清水湾，12公里纯美白沙延绵

观景落地窗及私人露台尽显海南美景。有独立泳池的私人别墅私密性很好', N'入住晚数：2晚

床型：双床

房型：双人间

陵水

地址：Clear Bay Avenue, Yingzhou Town

海南雅居乐莱佛士酒店位于海南岛英州镇，在豪华的住宿内提供宁静的海滨生活。酒店各处均覆盖了免费无线网络连接，其娱乐选择包括游泳池、健身中心和Spa。

海南雅居乐莱佛士酒店提供一个私人海滩区，距离清水湾高尔夫俱乐部有5分钟的车程，距离赤岭风景区有15分钟车程，距离蜈支洲岛有20分钟的车程，距离三亚市中心有1小时车程。

客房设有平面电视、空调和阳台。用餐区还配有冰箱、电热水壶和咖啡机。私人浴室配有淋浴，亦配有浴缸和吹风机。部分客房享有海景。其他设施还有迷你吧、iPod基座和休息区。

海南雅居乐莱佛士酒店设有游乐场、台球桌、乒乓球设施和网球场，也提供前往机场和旅游景点的免费班车服务。

客人可以在百味中餐厅享用粤菜和海鲜，也可以在意味海鲜餐厅享用地中海美食。其它用餐选择包括龙阁、清水湾大堂、长乐酒吧、地沙村餐厅和心畅酒吧。', N'【清海居豪华海景房】3晚2699元套餐内容：
1、3晚清海居海景房
2、入住当天欢迎水果+欢迎饮品
3、一次百味中餐厅或意味餐厅2大1小用餐体验（套餐）
4、免费体验一次大堂吧鸡尾酒及小点心（10:00-23:00）
5、每日房间迷你吧饮品一次
6、每日2大1小早餐（12岁以下儿童）
7、免费使用泳池儿童手摇船30分钟
8、免费体验莱佛士酒店植物探秘之旅
9、入住期间可享受SPA中心200元代金券
入住有效期至2021年2月8日
一一一一
【清海居海景房】2晚1788元套餐内容：
1.2晚入住清海居海景房
2.每日2大2小早餐（12岁以下儿童）
3.精美欢迎饮品
4.入一次海南莱佛士酒店清水湾大堂吧双人下午茶
5.每日房间迷你吧饮品一次
入住有效期：即日起至2021年2月8日
一一一一
【3晚临景庭复式双卧别墅】【3晚澜景庭平层双卧别墅】：
1、3晚双卧别墅（含4大人2小早餐，12岁以下儿童）
2、三亚机场至酒店往返专车接送（请至少提前一天与酒店礼宾部预约派车）
3、餐饮抵扣额度500元（在店消费餐饮，不可累计，在退房当日抵扣）
4、每日精美水果+每日房间迷你吧饮品一次
5、怀憬廊下午茶（15:00 - 17:00）
6、怀憬廊鸡尾酒（17:00 -18:30）
7、每天6件衣服湿洗
8、入住当天房间赠送免费红酒及巧克力
9、入三亚国际免税城5%免税折扣，请提前48小时于酒店申请
入住有效期至2020年11月19日
一一一一一
【3晚逸景庭一居别墅】：
1、3晚逸景庭一居别墅（含2大人1小早餐，12岁以下儿童）
2、三亚机场至酒店往返专车接送（请至少提前一天与酒店礼宾部预约派车）
3、入住期间享受2次正餐；1次莱佛士水疗中心双人巴厘岛按摩+玫瑰泡浴；1次早餐送餐服务（床边早餐或者漂浮早餐。(详情见建议行程表）
4、每日精美水果+每日房间迷你吧饮品一次
5、怀憬廊下午茶（15:00 - 17:00）
6、怀憬廊鸡尾酒（17:00 -18:30）
7、每天6件衣服湿洗
8、入住当天房间赠送免费红酒及巧克力
9、入住享受三亚国际免税城5%免税折扣，请提前48小时于酒店申请
入住有效期至2020年12月28日
一一一一一
【3晚揽海湾（一室一厅海景套房 】/【3晚家庭套房】：
1、3晚揽海湾（一室一厅海景套房 ；2大人1小早餐，12岁以下儿童）/ 【3晚家庭套房】 ( 一室景观套房：171平方米； 卧室1张2*2米大床+客厅1张1.5*2米大床:； 含4大1小早餐，12岁以下儿童）
2、三亚机场至酒店往返专车接送（请至少提前一天与酒店礼宾部预约派车）
3、餐饮抵扣额度500元（在店消费餐饮，不可累计，在退房当日抵扣）
4、每日精美水果+每日房间迷你吧饮品一次
5、怀憬廊下午茶（15:00 - 17:00）（家庭套餐为4人下午茶）
6、怀憬廊鸡尾酒（17:00 -18:30）（家庭套餐为4人鸡尾酒）
7、每天6件衣服湿洗
8、入住当天房间赠送免费红酒及巧克力
9、入住享受三亚国际免税城5%免税折扣，请提前48小时于酒店申请
入住有效期至2020年11月19日', N'一经购买不可退款，未经预约前可以更换入住酒店人员，预约后 不退不改不换人，过期未使用全款不退', N'拍下后请尽快告知我们，您计划入住的时间，具体以酒店预约确认为准！未预约成功前，请勿购买机票等，谢谢谅解')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (23, N'./Content/shopimg/五星香格里拉.jpg', CAST(2018.00 AS Numeric(18, 2)), N'（五星，香格里拉）香格里拉松赞林卡2晚+早+松赞林寺门票+双人下午茶+接/送机！预定全系列松赞酒店松赞山居！', 13, 1, N'境外', N'▲快速预约出行↓↓Top New超值预售↓↓

▲客服手机/微信：188 1868 0049

▲一对一管家7*24小时全程旅行贴心服务。

▲酒店实时房态,旅行特价精选,早买早约,不约可退！

▲机票/酒店/机加酒等旅行超值折扣。更多咨询请撩客服！', N'床型：双床

房型：双人间

香格里拉

地址：建塘镇松赞林寺小街子村

香格里拉松赞林卡酒店位于建塘镇松赞林寺小街子村，远眺松赞林寺的“香巴拉”秘境，松赞香格里拉林卡隐匿于祥和宁静的绿色山谷中，与滇地有负盛名的格鲁派寺庙——松赞林寺遥相对望，其间是藏族村落和青稞地交错的田园风光。
整个林卡依山势而建，采用了颇具康巴特色的藏式碉房建筑，彼此间错落有致，花草林木掩映。林卡旁的松林小径上，常有喇嘛、牧民和马群经过，自然和谐、禅意天成。酒店每一栋建筑的取名都来自香格里拉深处的某一个村庄。前厅摆放的实木家具、藏毯、铜制佛像、藏八宝装饰等手工制品与古董艺术品装饰，让人充分领略到藏民族文化的精髓。', N'1. 2晚酒店起订双人住宿

2. 每日双人早餐

3. 免费无线网络

4. 所有税费

酒店礼遇以海报为准；

没有日历价格联系客服申请优惠！', N'国内酒店套餐订单确认后不可被取消修改，不退不改（含因不可抗力因素导致无法出行），敬请合理安排出行时间。', N'拍下后请尽快告知我们，您计划入住的时间，具体以酒店预约确认为准！未预约成功前，请勿购买机票等，谢谢谅解')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (24, N'./Content/shopimg/三亚海裳湾.jpg', CAST(2199.00 AS Numeric(18, 2)), N'【三亚海棠湾红树林度假酒店】一价全包2-4晚早正餐、情侣、闺蜜自由行、亲子活动、酒店往返机场免费穿梭巴', 2, 1, N'境外', N'▲快速预约出行↓↓Top New超值预售↓↓

▲客服手机/微信：188 1868 0049

▲一对一管家7*24小时全程旅行贴心服务。

▲酒店实时房态,旅行特价精选,早买早约,不约可退！

▲机票/酒店/机加酒等旅行超值折扣。更多咨询请撩客服！', N'
床型：双床

房型：双人间

三亚

地址：海棠北路58号

三亚海棠湾红树林度假酒店位于三亚海棠湾的中心位置，酒店整体设计概念由英国Z名设计公司阿特金斯打造，主楼帆船造型华丽、优雅，拥有时尚的流线造型、内外光影秀，以及820米的沙滩海岸线，被视为三亚新地标之一。
酒店拥有五百余间客房，其中包含意大利设计师以星梦奇缘为主题打造的18套全海景亲子复式套房，以及29栋临海别墅。位于33楼的空中停机坪，可一站直达，私密入住。酒店的光影艺术大堂和客房的艺术走廊均由捷克知名设计师米兰·西派克操刀，国际时尚新宠——西班牙VONDOM品牌的家具遍布酒店。
六个特色餐吧为宾客呈现全球美馔。酒店顶层的云阁吧，距离地面126米，是私人聚会、时尚婚礼和高端定制之所。
会议及宴会场地总面积超过3,200平米，珊瑚宴会厅面积1,836平米，可容纳1,450人举办盛宴。
另有临海户外场地 - 未来塔，周边及别墅草坪占地6,800平米， 是举办会议、晚宴、主题派对及婚礼的卓越之所。
酒店拥有6大主题泳池、儿童俱乐部、康体娱乐中心、红树林水疗、室内外运动等多种娱乐，全方位满足宾客的娱乐需求，让宾客的假期精彩不断。', N'▲购买问题/出行咨询/其它房型报价电话18818680049



1、酒店入住2大2小住宿

2、酒店每日2大2小早餐

3、酒店房费包含税费

4、可向客服索取发票

5、特殊要求如生日蜜月请联系客服安排。

6、一对一管家7*24小时全程旅行贴心服务。

7、机票/酒店/机加酒等旅行超值折扣。更多咨询请撩客服。



无日历报价需更多房型报价，请撩客服！

', N'国内酒店套餐订单确认后不可被取消修改，不退不改（含因不可抗力因素导致无法出行），敬请合理安排出行时间。', N'拍下后请尽快告知我们，您计划入住的时间，具体以酒店预约确认为准！未预约成功前，请勿购买机票等，谢谢谅解')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (25, N'./Content/shopimg/丽江.jpg', CAST(100.00 AS Numeric(18, 2)), N'丽江拉市海骑马+会所旅拍纯玩一日游', 10, 0, N'境内', N'精华景点：赠送价值160元的拉市海骑马，会所旅拍（会所里面网红打卡点：天空之境、天梯、吉普车、水池花、玻璃球、天使之翼等各种摆拍道具免费使用）、纳西人家品茶和穿民族服装拍照。

特别美食：午餐纳西四合院享用原汁原味的特色土鸡火锅、免费品尝阿乡哥会所精心准备的果茶和季节性水果。', NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。', NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (26, N'./Content/shopimg/香格里拉.png', CAST(400.00 AS Numeric(18, 2)), N'香格里拉+普达措国家森林公园+独克宗古城纯玩2日跟团游（6-14人精品商务小团）', 0, 0, N'境内', N'香格里拉纯玩2日跟团游（商务车）', NULL, NULL, N'需商家二次确认的旅行产品，在用户下单付款后，商家确认前，用户可取消订单并要求退款；在商家确认后，用户要求取消订单并要求退款的须按下列规定执行：

国内团队游合同标准模板

使用日期前 7 天 17:00 之前(含) 损失费用 0%

使用日期前 4 天 17:00 之前(含) 损失费用 20%

使用日期前 1 天 17:00 之前(含) 损失费用 40%

使用日期前 1 天 17:00 之后 损失费用 100%

', N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (28, N'./Content/img/特色当地体验.jpg', CAST(486.00 AS Numeric(18, 2)), N'香港迪士尼乐园门票', 2, 0, N'境内', N'前往深受大人、小孩喜爱的奇妙王国「香港迪士尼乐园度假区」，置身梦幻迪士尼故事当中，与迪士尼卡通人物见面。乐园共有7个不同的主题园区，提供超过百项游乐设施及娱乐体验，而且还可以入住华丽舒适的迪士尼主题酒店！走进乐园，尽情探索各国丛林、游览神秘的博物馆，乘坐矿车飞越矿山，坐上小船环游缤纷世界，甚至坐上火箭，飞越太空！你更可率先欣赏全新面貌的「奇妙梦想城堡」。此外，乐园内各处设有「自拍点」，让你与喜爱的迪士尼卡通人物在适当的社交距离下自拍，留下难忘回忆。度假区内更有各式商店及餐厅可供选择，尽情挑选特色商品，戴上可爱头饰，开始一整日的玩乐吧！立即购买1日或2日门票，以优惠价格尽情狂欢！', NULL, NULL, NULL, N'温馨提示：
为保持社交距离，乐园会控制入园人数。你需在到访乐园前7日内凭有效门票、会员卡、门票、换领凭证或确认通知预先透过此网页预约到访日子。详情请查看 或​ 你购买的电子门票或门票换领凭证上注明的入园预约提醒信息及网站连结
照片只供参考。度假区内所有活动、娱乐设施及表演安排会视乎实际情况而定，如有任何变动，恕不另行通知。请浏览香港迪士尼乐园度假区的官方网页及手机应用程式以查阅最新资讯或时间表，以便轻松出行开展奇妙旅程
快人一步，尊享一系列指定游乐设施优先通行，畅玩乐园更添奇妙！详情请查看
入园时，别忘了领取免费乐园时间表，尽享各项精彩娱乐表演及活动
想节省宝贵时间，让旅途更轻松，可预订至香港迪士尼乐园
香港迪士尼乐园门票与其他景点不需同一日使用
如需升级门票至奇妙处处通会员（乐园年票），可在乐园入口处补差价（请查看各方案详情）')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (29, N'./Content/img/特色当地体验1.jpg', CAST(130.00 AS Numeric(18, 2)), N'罗马金宫剧场人妖秀', 2, 0, N'境外', N'置身场中最佳位置，饱览舞台所有角落，全方位欣赏表演
国际表演艺术水平，配以最先进的视觉、音响、灯光技术，让舞台效果更炫目
16幕世界各地特色歌舞表演，让来自全球的观众更感亲切有共鸣
座位和空间宽敞，确保剧院每一座位观看角度清晰，是先不受打扰
剧场由方便残疾人士设施，轮椅使用者无阻专用安全通道', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (31, N'./Content/img/特色当地体验2.jpg', CAST(183.00 AS Numeric(18, 2)), N'京都和服体验 - 梦馆', 1, 0, N'境外', N'京都的美，在于仿佛永远停留在过去的时光，穿上和服漫步其中，像穿越了时空融入当地的背景。受到众多部落客推荐的梦馆，提供多达500组和服花样和丰富的配饰，还可以加购发型设计，让你完美变身一日樱花妹！工作人员可提供中文、日语、英语服务，在你眼花撩乱之际，店员贴心地为你提供最适合的建议。三五好友一起感受日式风情，一同漫步祇园、清水寺、伏见稻荷神社，留下最难忘的日式回忆。', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (33, N'./Content/img/特色当地体验4.jpg', CAST(720.00 AS Numeric(18, 2)), N'英国巨石阵 & 温莎城堡 & 巴斯罗马浴场一日游', 0, 0, N'境外', N'跟着专业导游脚步，踏遍英国近郊著名景点，展开历史探寻之旅
走访2,000多年前的巴斯罗马浴场，仿佛置身于罗马鼎盛时期
朝圣世界文化遗产巨石阵，惊叹史前人类的创造力
探索占地广大的温莎城堡，一窥统治英国超过千年的皇室秘辛
巴士提供免费WiFi，方便查找更多景点资讯或即时分享精彩旅程', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (34, N'./Content/img/优选推荐.jpg', CAST(360.00 AS Numeric(18, 2)), N'冰火共存 探索极光国度', 1, 0, N'境外', N'冰岛游玩全攻略', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (35, N'./Content/img/优选推荐1.jpg', CAST(780.00 AS Numeric(18, 2)), N'纸醉金迷 情陷拉斯维加斯', 0, 0, N'境外', N'拉斯维加斯浪漫之行', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (36, N'./Content/img/优选推荐4.jpg', CAST(800.00 AS Numeric(18, 2)), N'关西漫步', 0, 0, N'境外', N'玩转大阪 嗨翻环球影城', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (37, N'./Content/img/优选推荐2.jpg', CAST(1324.00 AS Numeric(18, 2)), N'遇见迪拜 邂逅奢华', 0, 0, N'境外', N'迪拜及周边必体验', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (38, N'./Content/img/优选推荐3.jpg', CAST(321.00 AS Numeric(18, 2)), N'精彩时节的美国西岸', 0, 0, N'境外', N'玩转洛杉矶 方法任你选', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (39, N'./Content/img/玩转全球.jpg', CAST(333.00 AS Numeric(18, 2)), N'东京动漫乐园情报大解析', 2, 0, N'境外', N'如何在东京找回你的玩乐童心', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (40, N'./Content/img/玩转全球1.jpg', CAST(546.00 AS Numeric(18, 2)), N'富士山日游', 0, 0, N'境外', N'领略日本圣岳之壮丽', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (41, N'./Content/img/玩转全球2.jpg', CAST(546.00 AS Numeric(18, 2)), N'日本美食 独一无二', 1, 0, N'境外', N'米其林还是居酒屋 随你选', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (42, N'./Content/img/玩转全球3.jpg', CAST(645.00 AS Numeric(18, 2)), N'没有它 你将寸步难行', 0, 0, N'境内', N'所有交通的可能性就在这里', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (43, N'./Content/img/玩转全球4.jpg', CAST(783.00 AS Numeric(18, 2)), N'冲绳之乐', 0, 0, N'境外', N'不仅仅是大海', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (44, N'./Content/img/东南亚.jpg', CAST(457.00 AS Numeric(18, 2)), N'与泰国一起 为美食疯狂', 0, 0, N'境外', N'曼谷+清迈人气餐厅大盘点', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (45, N'./Content/img/东南亚1.jpg', CAST(63574.00 AS Numeric(18, 2)), N'嗨玩清迈', 0, 0, N'境内', N'大众小众全cover', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (46, N'./Content/img/东南亚2.jpg', CAST(543.00 AS Numeric(18, 2)), N'小众越南', 0, 0, N'境外', N'碧海蓝天和白沙', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (47, N'./Content/img/东南亚3.jpg', CAST(453.00 AS Numeric(18, 2)), N'除了雪这里拥有一切', 0, 0, N'境外', N'跟随穷游 了解斯里兰卡', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (48, N'./Content/img/东南亚4.jpg', CAST(354.00 AS Numeric(18, 2)), N'一生要来一次一次定爱一回', 0, 0, N'境外', N'柬埔寨吴哥窟之旅', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (49, N'./Content/img/欧洲美洲.jpg', CAST(768.00 AS Numeric(18, 2)), N'着色地中海 火辣巴塞罗那', 0, 0, N'境外', N'360度嗨玩巴塞', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (50, N'./Content/img/欧洲美洲1.jpg', CAST(876.00 AS Numeric(18, 2)), N'走进童话 豪饮巴伐利亚', 0, 0, N'境外', N'内附2017慕尼黑啤酒节TIPS', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (51, N'./Content/img/欧洲美洲2.jpg', CAST(876.00 AS Numeric(18, 2)), N'美国西部大峡谷观景', 1, 0, N'境外', N'翻开一页“活的地质史教科书”', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (52, N'./Content/img/欧洲美洲3.jpg', CAST(876.00 AS Numeric(18, 2)), N'乘驯鹿雪橇 走访圣诞老人', 0, 0, N'境外', N'芬兰玩法大全', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (53, N'./Content/img/欧洲美洲4.jpg', CAST(713.00 AS Numeric(18, 2)), N'古典而多元 品味别样英伦', 0, 0, N'境外', N'伦敦5-7天玩法大放送', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (55, N'./Content/img/中东.jpg', CAST(2411.00 AS Numeric(18, 2)), N'烂漫纯静新西兰 动静皆可皇后镇', 1, 0, N'境外', N'极限冒险 精灵世界', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (56, N'./Content/img/中东1.jpg', CAST(1230.00 AS Numeric(18, 2)), N'澳娇昆士兰', 1, 0, N'境外', N'上天入海圣灵群岛', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (57, N'./Content/img/中东2.jpg', CAST(3243.00 AS Numeric(18, 2)), N'纳米比亚秘境探险', 0, 0, N'境外', N'感受非洲沙漠的神秘', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (58, N'./Content/img/中东3.jpg', CAST(2431.00 AS Numeric(18, 2)), N'迪拜哈利法塔观光', 0, 0, N'境外', N'用1分钟 登上124层观景台', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (59, N'./Content/img/中东4.jpg', CAST(3421.00 AS Numeric(18, 2)), N'定情于撒哈拉', 0, 0, N'', N'沙漠上露营、观星、看日出', N'', N'沙漠上露营、观星、看日出', N'', N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (60, N'./Content/img/港澳台.jpg', CAST(2341.00 AS Numeric(18, 2)), N'漫步读中环', 1, 0, N'境内', N'细味香港风云变迁', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (61, N'./Content/img/港澳台1.jpg', CAST(3342.00 AS Numeric(18, 2)), N'内蒙古大草原', 0, 0, N'境内', N'策马奔腾 追逐自由', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (62, N'./Content/img/港澳台2.jpg', CAST(2431.00 AS Numeric(18, 2)), N'探访北京城', 1, 0, N'境内', N'感受紫禁城魅力', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (63, N'./Content/img/港澳台3.jpg', CAST(3541.00 AS Numeric(18, 2)), N'追忆大秦帝国', 2, 0, N'境内', N'不可错过的西安', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
INSERT [dbo].[shopText] ([shopid], [shopimg], [ShopPrice], [ShopTitle], [shopBrowse], [Sell], [Shoptype], [ShopDetails], [hotel], [CostDescription], [refund], [Tips]) VALUES (64, N'./Content/img/港澳台4.jpg', CAST(3542.00 AS Numeric(18, 2)), N'雪国世界', 1, 0, N'境内', N'冰雪嘉年华', NULL, NULL, NULL, N'1、出行安全提示：
① 出海、游泳、漂流、潜水、滑雪溜冰、跳伞、丛林飞跃等活动项目，均存有较高风险。参与前请根据自身健康、身体状况及有关部门的提示谨慎选择游玩项目，在游玩中请务必听从专业人士指导、切勿冒险进行高风险项目，以免发生不测。
② 请您应确保自身条件适合外出旅游度假。如您为孕妇、老人、小孩或者有心脏病、高血压、呼吸系统疾病等，请在征得医院专业医生同意后预订旅游产品。如您在预订前未告知真实情况而造成人身伤害或损失，您将自行承担相应责任。
③ 请自愿购买旅游人身意外保险。穷游网郑重提醒您应安排好自己的活动项目，谨慎参加赛车、骑马、攀岩、滑翔、探险、漂流、出海、潜水（浮潜／深潜）、游泳、滑雪、滑冰、滑板、跳伞、热气球、蹦极、冲浪等高风险活动，如需参加上述活动，穷游网建议您投保包含高风险项目的意外险种。
④ 经过危险地段（如陡峭、狭窄、潮湿泛滑的道路等）不可拥挤，前往险峻景点观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理；参与登山等活动时，应注意适当休息，避免过度激烈运动，同时做好防护工作。
⑤ 在水上（包括江河、湖海、水库）游览或者活动时，您须注意乘船安全，应穿戴救生衣，不可单独前往深水水域或者危险河道；选择水下游泳时，应携救生设备助游。
⑥ 海拔3000公尺以上的高原地带，气压低，空气含氧量少，易导致人体缺氧，引起高原不良反应，请甲方避免剧烈运动和情绪兴奋，洗澡水不易过热，学会正确呼吸方法。16周岁以下及60周岁以上者，患有贫血、糖尿病、慢性肺病、较严重心脑血管疾病、精神病及孕妇等不宜进入高原旅游。

2、文明出游提示：出游过程中，请严格遵守中华人民共和国法律、目的地有关国家和地区法律法规，请遵守当地的饮食习惯、习俗禁忌、宗教礼仪等，避免因触犯法律或当地民俗而损害自身利益。

3、盗抢风险提示：出行过程中，为了您的人身、财产安全，请妥善保管贵重物品，并尽量避免单独出行，在公开场合切勿暴露贵重物品及大量现金，以免发生盗抢事故。

4、交通风险提示：为了您的人身安全，请谨慎选择自驾游产品或私营交通工具，并请根据个人身体状况选择出行时间和出行方式，避免出现疲劳驾驶或违反当地交通规则而损害自身利益。')
SET IDENTITY_INSERT [dbo].[shopText] OFF
GO
SET IDENTITY_INSERT [dbo].[tiezi] ON 

INSERT [dbo].[tiezi] ([id], [Userid], [title], [contentText], [UserName], [userimg]) VALUES (1, 3, N'震惊某男子在家中竟然做了这种事', N'lvlvlvlvlvllvlvlvvlvl', N'老K', N'./Content/userimg/弥豆子.jpg')
INSERT [dbo].[tiezi] ([id], [Userid], [title], [contentText], [UserName], [userimg]) VALUES (2, 3, N'asdqwq', N'vvvvv', N'老K', N'./Content/userimg/弥豆子.jpg')
INSERT [dbo].[tiezi] ([id], [Userid], [title], [contentText], [UserName], [userimg]) VALUES (3, 3, N'sad', N'321', N'老K', N'./Content/userimg/弥豆子.jpg')
INSERT [dbo].[tiezi] ([id], [Userid], [title], [contentText], [UserName], [userimg]) VALUES (4, 3, N'老K', N'2000.3.3', N'老K', N'./Content/userimg/弥豆子.jpg')
INSERT [dbo].[tiezi] ([id], [Userid], [title], [contentText], [UserName], [userimg]) VALUES (1003, 3, N'老K', N'123', N'老K', N'./Content/userimg/弥豆子.jpg')
SET IDENTITY_INSERT [dbo].[tiezi] OFF
GO
SET IDENTITY_INSERT [dbo].[tongyou] ON 

INSERT [dbo].[tongyou] ([id], [title], [setout], [returns], [address], [userID], [UserName], [userimg]) VALUES (1, N'你好', N'2020-02-02', N'2020-03-01', N'中国', 3, N'老K', N'./Content/userimg/弥豆子.jpg')
INSERT [dbo].[tongyou] ([id], [title], [setout], [returns], [address], [userID], [UserName], [userimg]) VALUES (2, N'1111', N'2020-03-01', N'2020-04-02', N'美国', 10, N'admin', N'./Content/img/用户默认头像.jpg')
INSERT [dbo].[tongyou] ([id], [title], [setout], [returns], [address], [userID], [UserName], [userimg]) VALUES (3, N'去哪呀', N'2021-02-25', N'2021-04-10', N'中国', 9, N'普鲁埃兹外特多拉贡', N'./Content/img/用户默认头像.jpg')
INSERT [dbo].[tongyou] ([id], [title], [setout], [returns], [address], [userID], [UserName], [userimg]) VALUES (4, N'世界真美好', N'2021-03-17', N'2021-08-08', N'中国，美国，英国', 9, N'普鲁埃兹外特多拉贡', N'./Content/img/用户默认头像.jpg')
INSERT [dbo].[tongyou] ([id], [title], [setout], [returns], [address], [userID], [UserName], [userimg]) VALUES (5, N'世界真美好', N'2021-03-31', N'2021-02-24', N'中国，美国，英国', 10, NULL, N'./Content/img/用户默认头像.jpg')
INSERT [dbo].[tongyou] ([id], [title], [setout], [returns], [address], [userID], [UserName], [userimg]) VALUES (6, N'世界真美好', N'0001-01-01', N'0001-01-01', N'中国', 3, N'老K', N'./Content/userimg/弥豆子.jpg')
INSERT [dbo].[tongyou] ([id], [title], [setout], [returns], [address], [userID], [UserName], [userimg]) VALUES (7, N'世界真美好', N'0001-01-01', N'0001-01-01', N'中国', 3, N'老K', N'./Content/userimg/弥豆子.jpg')
INSERT [dbo].[tongyou] ([id], [title], [setout], [returns], [address], [userID], [UserName], [userimg]) VALUES (11, N'去哪呀', N'2021-03-04', N'2021-03-10', N'中国', 11, N'哈哈哈', N'./Content/img/用户默认头像.jpg')
SET IDENTITY_INSERT [dbo].[tongyou] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Userid], [UserName], [sex], [UserAccount], [UserPwd], [QB], [balance], [UserIntroduce], [Phone], [birthday], [Address], [onceAddress], [userimg]) VALUES (3, N'老K', N'男         ', N'asd', N'123', CAST(3452.34 AS Numeric(18, 2)), CAST(276.00 AS Numeric(18, 2)), N'此时此刻很难受', N'18677534243', N'2021-05-30', N'不告诉你', N'不告诉你', N'./Content/userimg/弥豆子.jpg')
INSERT [dbo].[User] ([Userid], [UserName], [sex], [UserAccount], [UserPwd], [QB], [balance], [UserIntroduce], [Phone], [birthday], [Address], [onceAddress], [userimg]) VALUES (9, N'普鲁埃兹外特多拉贡', N'女         ', N'18277153458', N'123', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'', N'18277153458', NULL, NULL, NULL, N'./Content/img/用户默认头像.jpg')
INSERT [dbo].[User] ([Userid], [UserName], [sex], [UserAccount], [UserPwd], [QB], [balance], [UserIntroduce], [Phone], [birthday], [Address], [onceAddress], [userimg]) VALUES (10, N'admin', N'男         ', N'admin', N'admin', CAST(300.00 AS Numeric(18, 2)), CAST(465.00 AS Numeric(18, 2)), N'这个人很懒，没有留下什么', N'16487651324', NULL, NULL, NULL, N'./Content/img/用户默认头像.jpg')
INSERT [dbo].[User] ([Userid], [UserName], [sex], [UserAccount], [UserPwd], [QB], [balance], [UserIntroduce], [Phone], [birthday], [Address], [onceAddress], [userimg]) VALUES (11, N'哈哈哈', N'男         ', N'1784644041', N'123', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'', N'1784644041', NULL, NULL, NULL, N'./Content/img/用户默认头像.jpg')
INSERT [dbo].[User] ([Userid], [UserName], [sex], [UserAccount], [UserPwd], [QB], [balance], [UserIntroduce], [Phone], [birthday], [Address], [onceAddress], [userimg]) VALUES (1014, N'哈哈哈', N'男         ', N'12345678910', N'123', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'', N'12345678910', N'', N'', N'', N'./Content/img/用户默认头像.jpg')
INSERT [dbo].[User] ([Userid], [UserName], [sex], [UserAccount], [UserPwd], [QB], [balance], [UserIntroduce], [Phone], [birthday], [Address], [onceAddress], [userimg]) VALUES (1015, N'十六', N'男         ', N'12345679', N'123', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'', N'12345679', N'', N'', N'', N'./Content/img/用户默认头像.jpg')
INSERT [dbo].[User] ([Userid], [UserName], [sex], [UserAccount], [UserPwd], [QB], [balance], [UserIntroduce], [Phone], [birthday], [Address], [onceAddress], [userimg]) VALUES (1016, N'嘎嘎嘎', N'男         ', N'18677153429', N'12345678', CAST(2050.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'吨吨吨', N'18677153429', N'2021-04-13', N'', N'', N'./Content/userimg/皮克.jpg')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Admin]    Script Date: 2021/4/18 7:56:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Admin] ON [dbo].[Admin]
(
	[AdminName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User]    Script Date: 2021/4/18 7:56:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_User] ON [dbo].[User]
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_User_1]    Script Date: 2021/4/18 7:56:44 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_User_1] ON [dbo].[User]
(
	[UserAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_QB]  DEFAULT ((0)) FOR [QB]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_balance]  DEFAULT ((0)) FOR [balance]
GO
USE [master]
GO
ALTER DATABASE [Travel] SET  READ_WRITE 
GO
