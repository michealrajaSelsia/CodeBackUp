USE [University]
GO
/****** Object:  UserDefinedTableType [dbo].[TypeApplication]    Script Date: 11/27/2018 1:40:43 AM ******/
CREATE TYPE [dbo].[TypeApplication] AS TABLE(
	[ApplicationID] [nvarchar](10) NULL,
	[Course] [nvarchar](50) NULL,
	[Fname] [nvarchar](50) NULL,
	[Lname] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[FatherName] [nvarchar](50) NULL,
	[MotherName] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MobileNo] [numeric](15, 0) NULL,
	[P_Address] [nvarchar](500) NULL,
	[C_Address] [nvarchar](500) NULL,
	[Photo] [varbinary](max) NULL,
	[SSLCSchoolName] [nvarchar](100) NULL,
	[SSLCMark] [nvarchar](100) NULL,
	[SSLCPercentage] [nvarchar](100) NULL,
	[HSCSchoolName] [nvarchar](100) NULL,
	[HSCMark] [nvarchar](100) NULL,
	[HSCPercentage] [nvarchar](100) NULL,
	[UGSchoolName] [nvarchar](100) NULL,
	[UGMark] [nvarchar](100) NULL,
	[UGPercentage] [nvarchar](100) NULL,
	[PGSchoolName] [nvarchar](100) NULL,
	[PGMark] [nvarchar](100) NULL,
	[PGPercentage] [nvarchar](100) NULL,
	[CreateOn] [date] NULL,
	[isActive] [bit] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TypeApplicationStatus]    Script Date: 11/27/2018 1:40:43 AM ******/
CREATE TYPE [dbo].[TypeApplicationStatus] AS TABLE(
	[ApplicationID] [nvarchar](10) NULL,
	[ApprovedStatus] [nvarchar](50) NULL,
	[ApprovedBy] [nvarchar](50) NULL,
	[ApplicationComment] [nvarchar](200) NULL,
	[ApprovedOn] [date] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[typeContactUS]    Script Date: 11/27/2018 1:40:43 AM ******/
CREATE TYPE [dbo].[typeContactUS] AS TABLE(
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](500) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TypeUserRegistration]    Script Date: 11/27/2018 1:40:43 AM ******/
CREATE TYPE [dbo].[TypeUserRegistration] AS TABLE(
	[Userid] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Createdon] [date] NULL,
	[isActive] [int] NULL
)
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/27/2018 1:40:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [numeric](12, 0) IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[isActive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminMenu]    Script Date: 11/27/2018 1:40:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminMenu](
	[id] [int] NULL,
	[MenuName] [nvarchar](50) NULL,
	[URL] [nvarchar](200) NULL,
	[description] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 11/27/2018 1:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[id] [numeric](20, 0) IDENTITY(1,1) NOT NULL,
	[ApplicationID] [nvarchar](10) NULL,
	[Course] [nvarchar](50) NULL,
	[Fname] [nvarchar](50) NULL,
	[Lname] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[DOB] [date] NULL,
	[Gender] [bit] NULL,
	[FatherName] [nvarchar](50) NULL,
	[MotherName] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MobileNo] [numeric](15, 0) NULL,
	[P_Address] [nvarchar](500) NULL,
	[C_Address] [nvarchar](500) NULL,
	[Photo] [varbinary](max) NULL,
	[SSLCSchoolName] [nvarchar](100) NULL,
	[SSLCMark] [numeric](10, 0) NULL,
	[SSLCPercentage] [numeric](2, 0) NULL,
	[HSCSchoolName] [nvarchar](100) NULL,
	[HSCMark] [numeric](10, 0) NULL,
	[HSCPercentage] [numeric](2, 0) NULL,
	[UGSchoolName] [nvarchar](100) NULL,
	[UGMark] [nvarchar](10) NULL,
	[UGPercentage] [numeric](2, 0) NULL,
	[PGSchoolName] [nvarchar](100) NULL,
	[PGMark] [numeric](10, 0) NULL,
	[PGPercentage] [numeric](2, 0) NULL,
	[CreateOn] [date] NULL,
	[isActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationStatus]    Script Date: 11/27/2018 1:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationID] [nvarchar](10) NULL,
	[ApprovedStatus] [nvarchar](50) NULL,
	[ApprovedBy] [nvarchar](50) NULL,
	[ApplicationComment] [nvarchar](200) NULL,
	[ApprovedOn] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommonMenu]    Script Date: 11/27/2018 1:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommonMenu](
	[id] [int] NULL,
	[MenuName] [nvarchar](50) NULL,
	[URL] [nvarchar](200) NULL,
	[description] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUS]    Script Date: 11/27/2018 1:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](100) NULL,
	[Message] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/27/2018 1:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [nvarchar](50) NULL,
	[CourseName] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
	[isActive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GalleryImage]    Script Date: 11/27/2018 1:40:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GalleryImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ImgPath] [nvarchar](1000) NULL,
	[Description] [nvarchar](200) NULL,
	[Liked] [numeric](5, 1) NULL,
	[DisLiked] [numeric](5, 1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religion]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReligionName] [nvarchar](50) NULL,
	[isActive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentMenu]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentMenu](
	[id] [int] NULL,
	[MenuName] [nvarchar](50) NULL,
	[URL] [nvarchar](200) NULL,
	[description] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRegistration]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegistration](
	[id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[Userid] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Createdon] [date] NULL,
	[isActive] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetApplication]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetApplication]
AS 
Begin

begin try
	select * from Application;
end try
begin catch 
select 'Faild' as status
end catch

end
GO
/****** Object:  StoredProcedure [dbo].[GetApplicationStatus]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetApplicationStatus]
As
Begin
 select * from ApplicationStatus
End
GO
/****** Object:  StoredProcedure [dbo].[GetCourses]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetCourses]
As
Begin
	SELECT * FROM Courses
End
GO
/****** Object:  StoredProcedure [dbo].[GetGalleryImages]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetGalleryImages]
AS 
Begin

begin try
	select * from GalleryImage;
end try
begin catch 
	select 'Faild' as status
end catch

end
GO
/****** Object:  StoredProcedure [dbo].[GetReligion]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[GetReligion]
As
Begin
	SELECT * FROM Religion
End
GO
/****** Object:  StoredProcedure [dbo].[GetUserDetails]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetUserDetails]
AS 
Begin
	--Insert into UserRegistration(Userid,Name, Username,EmailID, PhoneNo, Createdon, isActive) select * from @UserRegistration;	
    Select * from UserRegistration;

End

GO
/****** Object:  StoredProcedure [dbo].[saveContactUS]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[saveContactUS](@ContactUStbl typeContactUS readonly)
As
Begin
insert into ContactUS select Name,Email,Subject,Message from @ContactUStbl
End
GO
/****** Object:  StoredProcedure [dbo].[UpdateApplication]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[UpdateApplication](@Application1 [TypeApplication] readonly)
AS 
Begin

Insert into Application(
ApplicationID	,	
Course 			,
Fname 			,
Lname 			,
Fullname 		,
DOB 			,
Gender			,
FatherName 		,
MotherName		,
Religion 		,
Nationality 	,
Email 			,
MobileNo		,
P_Address 		,
C_Address 		,
--Photo 			,
SSLCSchoolName	,
SSLCMark 		,
SSLCPercentage	,
HSCSchoolName 	,
HSCMark 		,
HSCPercentage 	,
UGSchoolName 	,
UGMark 			,
UGPercentage 	,
PGSchoolName 	,
PGMark 			,
PGPercentage 	,
CreateOn 		,
isActive)

select
l.ApplicationID		,
l.Course 		  ,
l.Fname 		  ,
l.Lname 		  ,
l.Fullname 		  ,
l.DOB 			  ,
l.Gender		  ,
l.FatherName 	  ,
l.MotherName	  ,
l.Religion 		  ,
l.Nationality 	  ,
l.Email 		  ,
l.MobileNo		  ,
l.P_Address 	  ,
l.C_Address 	  ,
--l.Photo 		  ,
l.SSLCSchoolName  ,
l.SSLCMark 		  ,
l.SSLCPercentage  ,
l.HSCSchoolName   ,
l.HSCMark 		  ,
l.HSCPercentage   ,
l.UGSchoolName 	  ,
l.UGMark 		  ,
l.UGPercentage 	  ,
l.PGSchoolName 	  ,
l.PGMark 		  ,
l.PGPercentage 	  ,
l.CreateOn 		  ,
l.isActive 		


from Application as l
 left outer join @Application1 as r on l.ApplicationID=r.ApplicationID 
 where r.ApplicationID is Null
 
update a set 
a.ApplicationID		=b.ApplicationID		,
a.Course 				=b.Course 			,
a.Fname 				=b.Fname 			,
a.Lname 				=b.Lname 			,
a.Fullname 			=b.Fullname 			,
a.DOB 				=b.DOB 					,
a.Gender				=b.Gender			,
a.FatherName 			=b.FatherName 		,
a.MotherName			=b.MotherName		,
a.Religion 			=b.Religion 			,
a.Nationality 		=b.Nationality 			,
a.Email 				=b.Email 			,
a.MobileNo			=b.MobileNo				,
a.P_Address 			=b.P_Address 		,
a.C_Address 			=b.C_Address 		,
--a.Photo 				=b.Photo 			,
a.SSLCSchoolName 		=b.SSLCSchoolName 	,
a.SSLCMark 			=b.SSLCMark 			,
a.SSLCPercentage 		=b.SSLCPercentage 	,
a.HSCSchoolName 		=b.HSCSchoolName 	,
a.HSCMark 			=b.HSCMark 				,
a.HSCPercentage 		=b.HSCPercentage 	,
a.UGSchoolName 		=b.UGSchoolName 		,
a.UGMark 				=b.UGMark 			,
a.UGPercentage 		=b.UGPercentage 		,
a.PGSchoolName 		=b.PGSchoolName 		,
a.PGMark 				=b.PGMark 			,
a.PGPercentage 		=b.PGPercentage 		,
a.CreateOn 			=b.CreateOn				,
a.isActive 			=b.isActive from application as a 
inner join @Application1 as b on a.ApplicationID = b.ApplicationID

End
GO
/****** Object:  StoredProcedure [dbo].[UpdateApplicationStatus]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[UpdateApplicationStatus](@ApplicationStatus as TypeApplicationStatus Readonly)
As
Begin
 insert into ApplicationStatus(ApplicationID , ApprovedStatus, ApprovedBy, ApplicationComment,ApprovedOn) select * from  @ApplicationStatus
End

GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[UpdateUser](@UserRegistration TypeUserRegistration readonly)
AS 
Begin
	--Insert into UserRegistration(Userid,Name, Username,EmailID, PhoneNo, Createdon, isActive) select * from @UserRegistration;	

	insert into UserRegistration(Userid,Name, Username,Password,EmailID, PhoneNo, Createdon, isActive)
	select a.Userid, a.Name, a.Username,a.Password, a.EmailID, a.PhoneNo, a.Createdon, a.isActive from @UserRegistration as a left join UserRegistration as b on a.Userid= b.Userid where b.Userid is null

	update a set a.Name=b.Name, a.Username=b.Username,
	a.EmailID=b.EmailID, a.PhoneNo=a.PhoneNo, a.Createdon=b.Createdon, a.isActive=b.isActive
	 from  UserRegistration as a inner join @UserRegistration as b on a.Userid =b.Userid;

End
GO
/****** Object:  StoredProcedure [dbo].[ValidateAdminLogin]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ValidateAdminLogin](@Username nvarchar(50), @Password nvarchar(50))
As
Begin
	IF exists( SELECT * FROM Admin WHERE Username = @Username AND Password = @Password AND isActive=1)
	Begin
		Select 'True'  as Result;
		SELECT * FROM Admin WHERE Username = @Username AND Password = @Password AND isActive=1
	End
	Else
	Begin
		Select 'False'  as Result;
	End
End
GO
/****** Object:  StoredProcedure [dbo].[ValidateUserLogin]    Script Date: 11/27/2018 1:40:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ValidateUserLogin](@Username nvarchar(50), @Password nvarchar(50))
As
Begin
	IF exists( SELECT * FROM [dbo].[UserRegistration] WHERE Username = @Username AND Password = @Password AND isActive=1)
	Begin
		Select 'True' as Result;
	End
	Else
	Begin
		Select 'False' as Result;
	End
End
GO
