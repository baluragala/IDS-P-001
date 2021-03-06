USE [IPAPPM]
GO
/****** Object:  Table [dbo].[tbl_State]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_State](
	[State_Id] [int] IDENTITY(1,1) NOT NULL,
	[State_Name] [varchar](20) NOT NULL,
	[IsActive] [bit] DEFAULT 1,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,	
PRIMARY KEY CLUSTERED 
(
	[State_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SellerType]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SellerType](
	[SellerType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Seller_Type] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
	[IsActive] [bit] DEFAULT 1,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SellerType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProductCategory]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ProductCategory](
	[Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [varchar](50) NOT NULL,
	[Description] [varchar](100) NULL,
	[IsActive] [bit] DEFAULT 1,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
	[ImagePath] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Notifications]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Notifications](
	[Notification_Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [varchar](max) NULL,
	[IsActive] [bit] DEFAULT 1,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Notification_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_MRoles]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MRoles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Mobile_Verification]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Mobile_Verification](
	[Verification_Id] [int] IDENTITY(1,1) NOT NULL,
	[MobileNumber] [varchar](20) NULL,
	[OTP] [varchar](10) NULL,
	[IsVerified] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Verification_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_LoginAudit]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoginAudit](
	[LAudit_Id] [int] IDENTITY(1,1) NOT NULL,
	[LoginTime] [datetime] NOT NULL,
	[LogOutTime] [datetime] NULL,
	[UserName] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LAudit_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
--/****** Object:  Table [dbo].[tbl_FavoriteProduct]    Script Date: 07/25/2015 14:07:51 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--CREATE TABLE [dbo].[tbl_FavoriteProduct](
--	[FavoriteProduct_Id] [int] IDENTITY(1,1) NOT NULL,
--	[UserId] [int] NULL,
--	[Product_Id] [int] NOT NULL,
--PRIMARY KEY CLUSTERED 
--(
--	[FavoriteProduct_Id] ASC
--)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
/****** Object:  Table [dbo].[tbl_CompanyType]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_CompanyType](
	[CompanyType_Id] [int] IDENTITY(1,1) NOT NULL,
	[Company_Type] [varchar](50) NOT NULL,
	[Target_Type] [varchar](50) NOT NULL,
	[Description] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CompanyInfo]    Script Date: 07/25/2015 14:07:51 ******/
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
	[IsActive] [bit] DEFAULT 1
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](20) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Comapny_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CommonTerms]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_CommonTerms](
	[CtTerms_Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](20) NOT NULL,
	[Description] [varchar](200) NULL,
	[TermType] [int] NOT NULL,
	[ISActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CaretedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CtTerms_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_UserNotifications]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserNotifications](
	[UserNotification_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Notification_Id] [int] NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Notification_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProductDetails]    Script Date: 07/25/2015 14:07:51 ******/
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
/****** Object:  Table [dbo].[tbl_UserDetails]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UserDetails](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ComanyName] [varchar](50) NOT NULL,
	[Designation] [varchar](20) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[MobileNumber] [varchar](12) NOT NULL,
	[City] [varchar](20) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Password] [varchar](15) NOT NULL,
	[Registered_Date] [datetime] NOT NULL,
	[IsActive] [bit] NULL,
	[CompanyType_Id] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[PhoneNumber] [varchar](50) NULL,
 CONSTRAINT [PK__tbl_User__1788CC4C117F9D94] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_City]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_City](
	[City_Id] [int] IDENTITY(1,1) NOT NULL,
	[City_Name] [varchar](20) NOT NULL,
	[State_Id] [int] NOT NULL,
	[IsActive] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[City_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_UserQuestions]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UserQuestions](
	[Question_Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](2000) NOT NULL,
	[Answer] [varchar](2000) NULL,
	[UserId] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Question_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SellerDetails]    Script Date: 07/25/2015 14:07:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SellerDetails](
	[Seller_Id] [int] IDENTITY(1,1) NOT NULL,
	[Seller_Name] [varchar](20) NULL,
	[Seller_code] [varchar](12) NULL,
	[Address] [varchar](2000) NULL,
	[PhoneNumbers] [varchar](100) NULL,
	[SellerType_Id] [int] NOT NULL,
	[State] [int] NOT NULL,
	[City] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](20) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Seller_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__tbl_City__IsActi__46E78A0C]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_City] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__tbl_Compa__IsAct__57DD0BE4]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_CompanyInfo] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__tbl_compa__IsAct__0EA330E9]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_CompanyType] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__tbl_Mobil__IsVer__060DEAE8]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_Mobile_Verification] ADD  DEFAULT ((0)) FOR [IsVerified]
GO
/****** Object:  Default [DF__tbl_Notif__IsAct__59063A47]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_Notifications] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__tbl_Produ__IsAct__0B91BA14]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_ProductCategory] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__tbl_Produ__IsAct__2645B050]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_ProductDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__tbl_Selle__IsAct__2DE6D218]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_SellerDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__tbl_Selle__IsAct__3C69FB99]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_SellerType] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__tbl_State__IsAct__412EB0B6]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_State] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__tbl_UserD__IsAct__1367E606]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_UserDetails] ADD  CONSTRAINT [DF__tbl_UserD__IsAct__1367E606]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__tbl_UserQ__IsAct__5441852A]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_UserQuestions] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__webpages___IsCon__3D2915A8]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__3E1D39E1]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  ForeignKey [FK__tbl_City__State___45F365D3]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_City]  WITH CHECK ADD FOREIGN KEY([State_Id])
REFERENCES [dbo].[tbl_State] ([State_Id])
GO
/****** Object:  ForeignKey [FK__tbl_Produ__Categ__25518C17]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_ProductDetails]  WITH CHECK ADD FOREIGN KEY([Category_Id])
REFERENCES [dbo].[tbl_ProductCategory] ([Category_Id])
GO
/****** Object:  ForeignKey [FK__tbl_Selle__Selle__2B0A656D]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_SellerDetails]  WITH CHECK ADD FOREIGN KEY([SellerType_Id])
REFERENCES [dbo].[tbl_SellerType] ([SellerType_Id])
GO
/****** Object:  ForeignKey [FK__tbl_Selle__State__2BFE89A6]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_SellerDetails]  WITH CHECK ADD FOREIGN KEY([State])
REFERENCES [dbo].[tbl_State] ([State_Id])
GO
/****** Object:  ForeignKey [FK__tbl_Seller__City__2CF2ADDF]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_SellerDetails]  WITH CHECK ADD FOREIGN KEY([City])
REFERENCES [dbo].[tbl_City] ([City_Id])
GO
/****** Object:  ForeignKey [FK__tbl_UserD__Compa__145C0A3F]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_UserDetails]  WITH CHECK ADD  CONSTRAINT [FK__tbl_UserD__Compa__145C0A3F] FOREIGN KEY([CompanyType_Id])
REFERENCES [dbo].[tbl_CompanyType] ([CompanyType_Id])
GO
ALTER TABLE [dbo].[tbl_UserDetails] CHECK CONSTRAINT [FK__tbl_UserD__Compa__145C0A3F]
GO
/****** Object:  ForeignKey [FK__tbl_UserD__RoleI__15502E78]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_UserDetails]  WITH CHECK ADD  CONSTRAINT [FK__tbl_UserD__RoleI__15502E78] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbl_MRoles] ([RoleId])
GO
ALTER TABLE [dbo].[tbl_UserDetails] CHECK CONSTRAINT [FK__tbl_UserD__RoleI__15502E78]
GO
/****** Object:  ForeignKey [FK__tbl_UserQ__UserI__534D60F1]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[tbl_UserQuestions]  WITH CHECK ADD  CONSTRAINT [FK__tbl_UserQ__UserI__534D60F1] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_UserDetails] ([UserId])
GO
ALTER TABLE [dbo].[tbl_UserQuestions] CHECK CONSTRAINT [FK__tbl_UserQ__UserI__534D60F1]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 07/25/2015 14:07:51 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
