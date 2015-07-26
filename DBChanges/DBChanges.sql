USE [IPAPPM_LIVE]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_EndUs__IsAct__7A672E12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_EndUses] DROP CONSTRAINT [DF__tbl_EndUs__IsAct__7A672E12]
END

GO

--DROP [tbl_ProductFeature] - NOT NEEDED AS COLUMNS MOVED TO 
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tbl_Produ__Produ__300424B4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_ProductFeature]'))
ALTER TABLE [dbo].[tbl_ProductFeature] DROP CONSTRAINT [FK__tbl_Produ__Produ__300424B4]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_Produ__IsAct__30F848ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_ProductFeature] DROP CONSTRAINT [DF__tbl_Produ__IsAct__30F848ED]
END

GO

USE [IPAPPM_LIVE]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tbl_Favor__Produ__36B12243]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_FavoriteProduct]'))
ALTER TABLE [dbo].[tbl_FavoriteProduct] DROP CONSTRAINT [FK__tbl_Favor__Produ__36B12243]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tbl_Favor__UserI__35BCFE0A]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_FavoriteProduct]'))
ALTER TABLE [dbo].[tbl_FavoriteProduct] DROP CONSTRAINT [FK__tbl_Favor__UserI__35BCFE0A]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_Favor__IsAct__37A5467C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_FavoriteProduct] DROP CONSTRAINT [DF__tbl_Favor__IsAct__37A5467C]
END

GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tbl_Produ__Produ__24927208]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_ProductSpecification]'))
ALTER TABLE [dbo].[tbl_ProductSpecification] DROP CONSTRAINT [FK__tbl_Produ__Produ__24927208]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_Produ__IsAct__25869641]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_ProductSpecification] DROP CONSTRAINT [DF__tbl_Produ__IsAct__25869641]
END

GO

USE [IPAPPM_LIVE]
GO

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__tbl_Produ__Categ__1ED998B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tbl_ProductDetails]'))
ALTER TABLE [dbo].[tbl_ProductDetails] DROP CONSTRAINT [FK__tbl_Produ__Categ__1ED998B2]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_Produ__IsAct__1FCDBCEB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_ProductDetails] DROP CONSTRAINT [DF__tbl_Produ__IsAct__1FCDBCEB]
END

GO

USE [IPAPPM_LIVE]
GO

/****** Object:  Table [dbo].[tbl_ProductDetails]    Script Date: 07/21/2015 15:10:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ProductDetails]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_ProductDetails]
GO

USE [IPAPPM_LIVE]
GO

/****** Object:  Table [dbo].[tbl_ProductDetails]    Script Date: 07/21/2015 15:10:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_ProductDetails](
	[Product_Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Features] [varchar](max) NULL,
	[Specifications] [varchar](max) NULL,
	[Benefits] [varchar](max) NULL,
	[EndUses] [varchar](max) NULL,
	[ImagePath] [varchar](255) NULL,
	[ImageModifiedDate] [datetime] NULL,
	[Category_Id] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbl_ProductDetails]  WITH CHECK ADD FOREIGN KEY([Category_Id])
REFERENCES [dbo].[tbl_ProductCategory] ([Category_Id])
GO

ALTER TABLE [dbo].[tbl_ProductDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO


USE [IPAPPM_LIVE]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tbl_Compa__IsAct__628FA481]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbl_CompanyInfo] DROP CONSTRAINT [DF__tbl_Compa__IsAct__628FA481]
END

GO

USE [IPAPPM_LIVE]
GO

/****** Object:  Table [dbo].[tbl_CompanyInfo]    Script Date: 07/25/2015 00:12:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_CompanyInfo]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_CompanyInfo]
GO

USE [IPAPPM_LIVE]
GO

/****** Object:  Table [dbo].[tbl_CompanyInfo]    Script Date: 07/25/2015 00:12:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_CompanyInfo](
	[Comapny_Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](100) NULL,
	[Text] [varchar](max) NULL,
	[Imagepath] [varchar](200) NULL,
	[Website] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](20) NOT NULL,
	[ModifiedDate] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Comapny_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbl_CompanyInfo] ADD  DEFAULT ((1)) FOR [IsActive]
GO


USE [IPAPPM_LIVE]
GO

/****** Object:  Table [dbo].[tbl_FavoriteProduct]    Script Date: 07/25/2015 08:13:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_FavoriteProduct]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_FavoriteProduct]
GO

USE [IPAPPM_LIVE]
GO

/****** Object:  Table [dbo].[tbl_FavoriteProduct]    Script Date: 07/25/2015 08:13:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_FavoriteProduct](
	[FavoriteProduct_Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Product_Id] [int] NOT NULL	
PRIMARY KEY CLUSTERED 
(
	[FavoriteProduct_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


