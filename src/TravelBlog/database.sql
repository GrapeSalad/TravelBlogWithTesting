USE [master]
GO
/****** Object:  Database [TravelBlog]    Script Date: 8/1/2017 4:45:43 PM ******/
CREATE DATABASE [TravelBlog]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TravelBlog', FILENAME = N'C:\Users\epicodus\TravelBlog.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TravelBlog_log', FILENAME = N'C:\Users\epicodus\TravelBlog_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TravelBlog] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelBlog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TravelBlog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TravelBlog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TravelBlog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TravelBlog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TravelBlog] SET ARITHABORT OFF 
GO
ALTER DATABASE [TravelBlog] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TravelBlog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TravelBlog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TravelBlog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TravelBlog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TravelBlog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TravelBlog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TravelBlog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TravelBlog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TravelBlog] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TravelBlog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TravelBlog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TravelBlog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TravelBlog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TravelBlog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TravelBlog] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TravelBlog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TravelBlog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TravelBlog] SET  MULTI_USER 
GO
ALTER DATABASE [TravelBlog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TravelBlog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TravelBlog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TravelBlog] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TravelBlog] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TravelBlog] SET QUERY_STORE = OFF
GO
USE [TravelBlog]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [TravelBlog]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/1/2017 4:45:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Experiences]    Script Date: 8/1/2017 4:45:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experiences](
	[ExperienceId] [int] IDENTITY(1,1) NOT NULL,
	[Drink] [nvarchar](max) NULL,
	[Eat] [nvarchar](max) NULL,
	[LocationId] [int] NULL,
	[PersonId] [int] NULL,
	[See] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_Experiences] PRIMARY KEY CLUSTERED 
(
	[ExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 8/1/2017 4:45:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[Currency] [nvarchar](max) NULL,
	[FlavorText] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Population] [nvarchar](max) NULL,
	[Region] [nvarchar](max) NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[People]    Script Date: 8/1/2017 4:45:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[Bio] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170801212304_Initial', N'1.0.0-rtm-21431')
SET IDENTITY_INSERT [dbo].[Experiences] ON 

INSERT [dbo].[Experiences] ([ExperienceId], [Drink], [Eat], [LocationId], [PersonId], [See], [Title]) VALUES (1, N'water', N'food', 1, 1, N'something', N'Wine Tasting')
INSERT [dbo].[Experiences] ([ExperienceId], [Drink], [Eat], [LocationId], [PersonId], [See], [Title]) VALUES (2, N'asdklfj', N'asdf', 1, NULL, N'asdf', N'Strolling the streets')
SET IDENTITY_INSERT [dbo].[Experiences] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationId], [Currency], [FlavorText], [Image], [Language], [Name], [Population], [Region]) VALUES (1, N'EUR', N'With its lyrical landscapes, world-class art and a superb cucina contadina (farmer''''s kitchen), the Tuscan experience is perfectly in symbiosis with the land.', N'http://cdn2.discovertuscany.com/img/landscapes/tuscany-red-hills.jpg?w=1420&q=50&auto=enhance', N'Italian', N'Tuscany', N'3.753 million', N'Europe')
INSERT [dbo].[Locations] ([LocationId], [Currency], [FlavorText], [Image], [Language], [Name], [Population], [Region]) VALUES (2, N'USD', N'Epicenter of the arts. Dining and shopping capital. Trendsetter. New York City wears many crowns, and spreads an irresistible feast for all.', N'http://az616578.vo.msecnd.net/files/2016/07/21/636047332914342794-620055947_Colorful-New-York-City-1920x1200.jpg', N'English', N'New York City', N'8.538 million', N'North America')
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[People] ON 

INSERT [dbo].[People] ([PersonId], [Bio], [Name]) VALUES (1, N'Hello', N'Alyssa')
SET IDENTITY_INSERT [dbo].[People] OFF
/****** Object:  Index [IX_Experiences_LocationId]    Script Date: 8/1/2017 4:45:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Experiences_LocationId] ON [dbo].[Experiences]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Experiences_PersonId]    Script Date: 8/1/2017 4:45:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Experiences_PersonId] ON [dbo].[Experiences]
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Experiences]  WITH CHECK ADD  CONSTRAINT [FK_Experiences_Locations_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([LocationId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Experiences] CHECK CONSTRAINT [FK_Experiences_Locations_LocationId]
GO
ALTER TABLE [dbo].[Experiences]  WITH CHECK ADD  CONSTRAINT [FK_Experiences_People_PersonId] FOREIGN KEY([PersonId])
REFERENCES [dbo].[People] ([PersonId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Experiences] CHECK CONSTRAINT [FK_Experiences_People_PersonId]
GO
USE [master]
GO
ALTER DATABASE [TravelBlog] SET  READ_WRITE 
GO
