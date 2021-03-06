USE [hsmdb]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 02/22/2014 12:33:56 ******/
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
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 02/22/2014 12:33:56 ******/
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
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 02/22/2014 12:33:56 ******/
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
/****** Object:  Table [dbo].[UserProfile]    Script Date: 02/22/2014 12:33:56 ******/
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
/****** Object:  Table [dbo].[Academy]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Academy](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[LevelCode] [varchar](3) NOT NULL,
	[LevelName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Academy] PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[States]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Posts](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Occupations]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Occupations](
	[OccupationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Occupations] PRIMARY KEY CLUSTERED 
(
	[OccupationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChoirSplits]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChoirSplits](
	[SplitId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Splits] PRIMARY KEY CLUSTERED 
(
	[SplitId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChoirParts]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChoirParts](
	[sn] [int] NOT NULL,
	[Part] [nvarchar](15) NOT NULL,
	[Code] [varchar](3) NOT NULL,
 CONSTRAINT [PK_Parts] PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FriendshipGroups]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FriendshipGroups](
	[ClubId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](5) NOT NULL,
	[Description] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Clubs] PRIMARY KEY CLUSTERED 
(
	[ClubId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Events]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nchar](10) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dues]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dues](
	[DueId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[IsMonthly] [bit] NOT NULL,
 CONSTRAINT [PK_Dues] PRIMARY KEY CLUSTERED 
(
	[DueId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CodeAlgorithm]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CodeAlgorithm](
	[sn] [int] IDENTITY(1,1) NOT NULL,
	[Year] [varchar](4) NOT NULL,
	[Part_id] [int] NOT NULL,
	[LastNumber] [int] NOT NULL,
 CONSTRAINT [PK_CodeAlgorithm] PRIMARY KEY CLUSTERED 
(
	[sn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 02/22/2014 12:33:56 ******/
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
/****** Object:  Table [dbo].[Members]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Members](
	[Application_id] [int] NULL,
	[MemberId] [int] NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[OtherNames] [varchar](50) NOT NULL,
	[Gender] [varchar](6) NOT NULL,
	[Birthday] [date] NOT NULL,
	[MaritalStatus] [varchar](10) NOT NULL,
	[HomeAddress] [varchar](250) NOT NULL,
	[OfficeAddress] [varchar](250) NOT NULL,
	[MobileNo] [varchar](20) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[Nationality] [varchar](50) NOT NULL,
	[Wedding] [datetime] NULL,
	[OccupationId] [int] NOT NULL,
	[Nickname] [varchar](50) NOT NULL,
	[ChoirSplit_Id] [int] NOT NULL,
	[AvailabilityId] [int] NOT NULL,
	[Remarks] [varchar](250) NULL,
	[StateOfOriginId] [int] NOT NULL,
	[LGA] [varchar](30) NOT NULL,
	[Photo] [varchar](50) NOT NULL,
	[RobeNo] [varchar](50) NOT NULL,
	[PartId] [int] NOT NULL,
	[JoinedOn] [datetime] NOT NULL,
	[PostId] [int] NULL,
	[HomeTown] [varchar](30) NOT NULL,
	[Friendship_Id] [int] NOT NULL,
	[Picture] [image] NULL,
	[Attendance_id] [int] NULL,
	[Academy_Id] [int] NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[Amount] [money] NOT NULL,
	[Date] [datetime] NOT NULL,
	[DueId] [int] NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[EventId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[TimeIn] [time](7) NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NextOfKins]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NextOfKins](
	[MemberId] [int] NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[OtherNames] [varchar](50) NOT NULL,
	[Gender] [varchar](6) NOT NULL,
	[MobileNo] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](50) NULL,
	[Relationship] [varchar](15) NOT NULL,
	[HomeAddress] [varchar](250) NOT NULL,
	[OfficeAddress] [varchar](250) NULL,
 CONSTRAINT [PK_NextOfKins] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonthlyDues]    Script Date: 02/22/2014 12:33:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonthlyDues](
	[TransactionId] [int] NOT NULL,
	[DateId] [varchar](6) NOT NULL,
 CONSTRAINT [PK_MonthlyDues_1] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_CodeAlgorithm_LastNumber]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[CodeAlgorithm] ADD  CONSTRAINT [DF_CodeAlgorithm_LastNumber]  DEFAULT ((0)) FOR [LastNumber]
GO
/****** Object:  Default [DF__webpages___IsCon__2D27B809]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__2E1BDC42]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  ForeignKey [FK_Attendance_Events]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([EventId])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Events]
GO
/****** Object:  ForeignKey [FK_Attendance_Members]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Members]
GO
/****** Object:  ForeignKey [FK_CodeAlgorithm_ChoirParts]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[CodeAlgorithm]  WITH CHECK ADD  CONSTRAINT [FK_CodeAlgorithm_ChoirParts] FOREIGN KEY([Part_id])
REFERENCES [dbo].[ChoirParts] ([sn])
GO
ALTER TABLE [dbo].[CodeAlgorithm] CHECK CONSTRAINT [FK_CodeAlgorithm_ChoirParts]
GO
/****** Object:  ForeignKey [FK_Members_Academy]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Academy] FOREIGN KEY([Academy_Id])
REFERENCES [dbo].[Academy] ([sn])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Academy]
GO
/****** Object:  ForeignKey [FK_Members_ChoirParts]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_ChoirParts] FOREIGN KEY([PartId])
REFERENCES [dbo].[ChoirParts] ([sn])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_ChoirParts]
GO
/****** Object:  ForeignKey [FK_Members_Clubs]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Clubs] FOREIGN KEY([Friendship_Id])
REFERENCES [dbo].[FriendshipGroups] ([ClubId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Clubs]
GO
/****** Object:  ForeignKey [FK_Members_Occupations]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Occupations] FOREIGN KEY([OccupationId])
REFERENCES [dbo].[Occupations] ([OccupationId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Occupations]
GO
/****** Object:  ForeignKey [FK_Members_Posts]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Posts] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([PostId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Posts]
GO
/****** Object:  ForeignKey [FK_Members_Splits]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Splits] FOREIGN KEY([ChoirSplit_Id])
REFERENCES [dbo].[ChoirSplits] ([SplitId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Splits]
GO
/****** Object:  ForeignKey [FK_Members_States]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_States] FOREIGN KEY([StateOfOriginId])
REFERENCES [dbo].[States] ([StateId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_States]
GO
/****** Object:  ForeignKey [FK_MonthlyDues_Transactions]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[MonthlyDues]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyDues_Transactions] FOREIGN KEY([TransactionId])
REFERENCES [dbo].[Transactions] ([TransactionId])
GO
ALTER TABLE [dbo].[MonthlyDues] CHECK CONSTRAINT [FK_MonthlyDues_Transactions]
GO
/****** Object:  ForeignKey [FK_NextOfKins_Members]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[NextOfKins]  WITH CHECK ADD  CONSTRAINT [FK_NextOfKins_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[NextOfKins] CHECK CONSTRAINT [FK_NextOfKins_Members]
GO
/****** Object:  ForeignKey [FK_Transactions_Dues]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Dues] FOREIGN KEY([DueId])
REFERENCES [dbo].[Dues] ([DueId])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Dues]
GO
/****** Object:  ForeignKey [FK_Transactions_Members]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([MemberId])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Members]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 02/22/2014 12:33:56 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
