USE [master]
GO
/****** Object:  Database [CinemaKredek]    Script Date: 07.12.2019 15:50:40 ******/
CREATE DATABASE [CinemaKredek]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CinemaKredek', FILENAME = N'M:\SQLMicrosoft\MSSQL14.MSSQLSERVER\MSSQL\DATA\CinemaKredek.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CinemaKredek_log', FILENAME = N'M:\SQLMicrosoft\MSSQL14.MSSQLSERVER\MSSQL\DATA\CinemaKredek_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CinemaKredek] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CinemaKredek].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CinemaKredek] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CinemaKredek] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CinemaKredek] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CinemaKredek] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CinemaKredek] SET ARITHABORT OFF 
GO
ALTER DATABASE [CinemaKredek] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CinemaKredek] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CinemaKredek] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CinemaKredek] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CinemaKredek] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CinemaKredek] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CinemaKredek] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CinemaKredek] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CinemaKredek] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CinemaKredek] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CinemaKredek] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CinemaKredek] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CinemaKredek] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CinemaKredek] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CinemaKredek] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CinemaKredek] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CinemaKredek] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CinemaKredek] SET RECOVERY FULL 
GO
ALTER DATABASE [CinemaKredek] SET  MULTI_USER 
GO
ALTER DATABASE [CinemaKredek] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CinemaKredek] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CinemaKredek] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CinemaKredek] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CinemaKredek] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CinemaKredek', N'ON'
GO
ALTER DATABASE [CinemaKredek] SET QUERY_STORE = OFF
GO
USE [CinemaKredek]
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Comment_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Comment_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Complaint_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Complaint_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Customer_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Customer_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Genre_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Genre_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 50
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Movie_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Movie_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Rating_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Rating_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Role_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Role_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 3
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Screen_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Screen_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 3
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Seat_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Seat_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 80
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Showtime_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Showtime_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Ticket_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Ticket_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 2147483647
 CACHE 
GO
USE [CinemaKredek]
GO
/****** Object:  Sequence [dbo].[SEQ_Ticket_Type_ID]    Script Date: 07.12.2019 15:50:43 ******/
CREATE SEQUENCE [dbo].[SEQ_Ticket_Type_ID] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 10
 CACHE 
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Comment_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Comment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complaint]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaint](
	[Complaint_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Complaint_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] NOT NULL,
	[Login] [varchar](25) NOT NULL,
	[Password] [varchar](25) NOT NULL,
	[First_Name] [varchar](25) NOT NULL,
	[Last_Name] [varchar](25) NOT NULL,
	[Birth] [date] NOT NULL,
	[Email] [varchar](30) NULL,
	[Phone] [varchar](20) NULL,
	[Role_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[Genre_ID] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Description] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Genre_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Movie_ID] [int] NOT NULL,
	[Title] [varchar](250) NOT NULL,
	[Release_Date] [date] NOT NULL,
	[Description] [varchar](500) NULL,
	[Director] [varchar](50) NULL,
	[Age_Category] [int] NULL,
	[Duration] [int] NOT NULL,
	[Genre_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Rating_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
	[Stars] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Rating_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_ID] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screen]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screen](
	[Screen_ID] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
	[Screen_Size] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Screen_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[Seat_ID] [int] NOT NULL,
	[Screen_ID] [int] NOT NULL,
	[Name] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Seat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Showtime]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Showtime](
	[Showtime_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
	[Screen_ID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Technology] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Showtime_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Ticket_ID] [int] NOT NULL,
	[Showtime_ID] [int] NOT NULL,
	[Customer_ID] [int] NULL,
	[Seat_ID] [int] NOT NULL,
	[Ticket_Type_ID] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ticket_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket_Type]    Script Date: 07.12.2019 15:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket_Type](
	[Ticket_Type_ID] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ticket_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Comment] ([Comment_ID], [Movie_ID], [Customer_ID], [Description], [Date]) VALUES (1, 1, 1, N'Amazing!', CAST(N'2019-11-25T22:11:00.000' AS DateTime))
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (1, N'JanKowal', N'123', N'Jan', N'Kowalski', CAST(N'1983-04-22' AS Date), N'kowal@gmail.com', N'', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (2, N'AtomicPulga', N'qwerty', N'Leo', N'Messi', CAST(N'1989-10-26' AS Date), N'lmessi@gmail.com', N'215488975', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (3, N'kinglj', N'lakers', N'LeBron', N'James', CAST(N'1987-08-05' AS Date), N'ljames@gmail.com', N'443258971', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (4, N'hazardeden', N'chelsea', N'Eden', N'Hazard', CAST(N'1992-07-11' AS Date), N'ehazard@gmail.com', N'784525641', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (5, N'cr7', N'juveshit', N'Cristiano', N'Ronaldo', CAST(N'1988-08-01' AS Date), N'cronaldo@gmail.com', N'756285341', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (6, N'captainamerica', N'trueblue', N'Christian', N'Pulisic', CAST(N'1998-02-27' AS Date), N'cpulisic@gmail.com', N'697854231', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (7, N'flampard', N'bestcoach', N'Frank', N'Lampard', CAST(N'1984-12-04' AS Date), N'flampard@gmail.com', N'795648231', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (8, N'jmourinho', N'specialone', N'Jose', N'Mourinho', CAST(N'1962-04-13' AS Date), N'jmourinho@gmail.com', N'315478945', 1)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (9, N'admin', N'admin', N'admin', N'admin', CAST(N'1998-12-13' AS Date), NULL, NULL, 3)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (10, N'hannahBaker', N'note', N'Hannah', N'Baker', CAST(N'2000-01-19' AS Date), N'hbaker@gmail.com', N'465892320', 2)
INSERT [dbo].[Customer] ([Customer_ID], [Login], [Password], [First_Name], [Last_Name], [Birth], [Email], [Phone], [Role_ID]) VALUES (11, N'clayJensen', N'helmet', N'Clay', N'Jensen', CAST(N'2000-02-15' AS Date), N'cjensen@gmail.com', N'685321457', 2)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (1, N'Action', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (2, N'Adventure', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (3, N'Animation', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (4, N'Comedy', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (5, N'Crime', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (6, N'Drama', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (7, N'Fantasy', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (8, N'Historical', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (9, N'Horror', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (10, N'Romance', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (11, N'Sci-Fi', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (12, N'Thriller', NULL)
INSERT [dbo].[Genre] ([Genre_ID], [Name], [Description]) VALUES (13, N'Western', NULL)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (1, N'Joker', CAST(N'2019-10-04' AS Date), NULL, N'Todd Phillips', 16, 122, 5)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (2, N'Once Upon a Time... in Hollywood', CAST(N'2019-08-16' AS Date), NULL, N'Quentin Tarantino', 16, 161, 5)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (3, N'Frozen 2', CAST(N'2019-11-22' AS Date), NULL, N'Jennifer Lee', NULL, 103, 3)
INSERT [dbo].[Movie] ([Movie_ID], [Title], [Release_Date], [Description], [Director], [Age_Category], [Duration], [Genre_ID]) VALUES (4, N'Star Wars: The Rise of Skywalker', CAST(N'2019-12-19' AS Date), NULL, N'J.J. Abrams', 12, 155, 11)
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (1, 1, 1, 3, CAST(N'2019-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (2, 1, 2, 9, CAST(N'2019-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (3, 1, 1, 6, CAST(N'2019-11-25T22:35:00.000' AS DateTime))
INSERT [dbo].[Rating] ([Rating_ID], [Customer_ID], [Movie_ID], [Stars], [Date]) VALUES (4, 2, 3, 6, CAST(N'2019-11-25T22:35:00.000' AS DateTime))
INSERT [dbo].[Role] ([Role_ID], [Name]) VALUES (1, N'Client')
INSERT [dbo].[Role] ([Role_ID], [Name]) VALUES (2, N'Employee')
INSERT [dbo].[Role] ([Role_ID], [Name]) VALUES (3, N'Admin')
INSERT [dbo].[Screen] ([Screen_ID], [Capacity], [Screen_Size]) VALUES (1, 20, N'small')
INSERT [dbo].[Screen] ([Screen_ID], [Capacity], [Screen_Size]) VALUES (2, 20, N'medium')
INSERT [dbo].[Screen] ([Screen_ID], [Capacity], [Screen_Size]) VALUES (3, 40, N'big')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (1, 1, N'1A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (2, 1, N'2A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (3, 1, N'3A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (4, 1, N'4A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (5, 1, N'5A')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (6, 1, N'1B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (7, 1, N'2B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (8, 1, N'3B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (9, 1, N'4B')
INSERT [dbo].[Seat] ([Seat_ID], [Screen_ID], [Name]) VALUES (10, 1, N'5B')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (1, 1, 3, CAST(N'2019-11-26T20:15:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (2, 4, 3, CAST(N'2019-12-19T20:45:00.000' AS DateTime), N'3D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (3, 2, 1, CAST(N'2019-11-26T17:45:00.000' AS DateTime), N'2D')
INSERT [dbo].[Showtime] ([Showtime_ID], [Movie_ID], [Screen_ID], [Date], [Technology]) VALUES (4, 3, 2, CAST(N'2019-11-26T15:15:00.000' AS DateTime), N'3D')
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (1, 1, 1, 1, 2, N'Paid', CAST(N'2019-11-25T22:35:00.000' AS DateTime))
INSERT [dbo].[Ticket] ([Ticket_ID], [Showtime_ID], [Customer_ID], [Seat_ID], [Ticket_Type_ID], [Status], [Date]) VALUES (2, 4, 3, 2, 2, N'Booked', CAST(N'2019-11-25T22:48:00.000' AS DateTime))
INSERT [dbo].[Ticket_Type] ([Ticket_Type_ID], [Name], [Price]) VALUES (1, N'Reduced', 15)
INSERT [dbo].[Ticket_Type] ([Ticket_Type_ID], [Name], [Price]) VALUES (2, N'Regular', 20)
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Customer]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Movie]
GO
ALTER TABLE [dbo].[Complaint]  WITH CHECK ADD  CONSTRAINT [FK_Complaint_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Complaint] CHECK CONSTRAINT [FK_Complaint_Customer]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Role] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Role] ([Role_ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Role]
GO
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Genre] FOREIGN KEY([Genre_ID])
REFERENCES [dbo].[Genre] ([Genre_ID])
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_Genre]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Customer]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Movie]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [FK_Seat_Screen] FOREIGN KEY([Screen_ID])
REFERENCES [dbo].[Screen] ([Screen_ID])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [FK_Seat_Screen]
GO
ALTER TABLE [dbo].[Showtime]  WITH CHECK ADD  CONSTRAINT [FK_Showtime_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[Showtime] CHECK CONSTRAINT [FK_Showtime_Movie]
GO
ALTER TABLE [dbo].[Showtime]  WITH CHECK ADD  CONSTRAINT [FK_Showtime_Screen] FOREIGN KEY([Screen_ID])
REFERENCES [dbo].[Screen] ([Screen_ID])
GO
ALTER TABLE [dbo].[Showtime] CHECK CONSTRAINT [FK_Showtime_Screen]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Customer]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Seat] FOREIGN KEY([Seat_ID])
REFERENCES [dbo].[Seat] ([Seat_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Seat]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Showtime] FOREIGN KEY([Showtime_ID])
REFERENCES [dbo].[Showtime] ([Showtime_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Showtime]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Ticket_Type] FOREIGN KEY([Ticket_Type_ID])
REFERENCES [dbo].[Ticket_Type] ([Ticket_Type_ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Ticket_Type]
GO
/****** Object:  StoredProcedure [dbo].[sp_showRatingUser]    Script Date: 07.12.2019 15:50:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_showRatingUser] @Customer_ID int
AS
SELECT concat(Customer.First_Name,' ',Customer.Last_Name)AS 'Customer',Movie.Title,Rating.stars AS 'Rating'
FROM Rating 
JOIN Customer ON Rating.Customer_ID=Customer.Customer_ID
JOIN Movie ON Rating.Movie_ID=Movie.Movie_ID
WHERE Rating.Customer_ID= @Customer_ID
GO
USE [master]
GO
ALTER DATABASE [CinemaKredek] SET  READ_WRITE 
GO
