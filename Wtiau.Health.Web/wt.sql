USE [master]
GO
/****** Object:  Database [WTIAU_Health]    Script Date: 11/7/2019 1:53:00 PM ******/
CREATE DATABASE [WTIAU_Health]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WTIAU_Health', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\WTIAU_Health.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WTIAU_Health_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\WTIAU_Health_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WTIAU_Health] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WTIAU_Health].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WTIAU_Health] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WTIAU_Health] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WTIAU_Health] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WTIAU_Health] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WTIAU_Health] SET ARITHABORT OFF 
GO
ALTER DATABASE [WTIAU_Health] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WTIAU_Health] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WTIAU_Health] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WTIAU_Health] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WTIAU_Health] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WTIAU_Health] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WTIAU_Health] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WTIAU_Health] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WTIAU_Health] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WTIAU_Health] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WTIAU_Health] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WTIAU_Health] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WTIAU_Health] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WTIAU_Health] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WTIAU_Health] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WTIAU_Health] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WTIAU_Health] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WTIAU_Health] SET RECOVERY FULL 
GO
ALTER DATABASE [WTIAU_Health] SET  MULTI_USER 
GO
ALTER DATABASE [WTIAU_Health] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WTIAU_Health] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WTIAU_Health] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WTIAU_Health] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WTIAU_Health] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WTIAU_Health] SET QUERY_STORE = OFF
GO
USE [WTIAU_Health]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [WTIAU_Health]
GO
/****** Object:  Table [dbo].[Tbl_Branch]    Script Date: 11/7/2019 1:53:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Branch](
	[Branch_ID] [int] IDENTITY(1,1) NOT NULL,
	[Branch_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Branch_Name] [nvarchar](50) NOT NULL,
	[Branch_Display] [nvarchar](50) NOT NULL,
	[Branch_GroupID] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_Branch] PRIMARY KEY CLUSTERED 
(
	[Branch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Code]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Code](
	[Code_ID] [int] IDENTITY(1,1) NOT NULL,
	[Code_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Code_CGID] [int] NOT NULL,
	[Code_Name] [nvarchar](128) NOT NULL,
	[Code_Display] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Tbl_Code] PRIMARY KEY CLUSTERED 
(
	[Code_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_CodeGroop]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_CodeGroop](
	[CG_ID] [int] IDENTITY(1,1) NOT NULL,
	[CG_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CG_Name] [nvarchar](128) NOT NULL,
	[CG_Display] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Tbl_CodeGroop] PRIMARY KEY CLUSTERED 
(
	[CG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_College]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_College](
	[College_ID] [int] IDENTITY(1,1) NOT NULL,
	[College_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[College_Name] [nvarchar](50) NOT NULL,
	[College_Display] [nvarchar](50) NOT NULL,
	[College_UniversityID] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_College] PRIMARY KEY CLUSTERED 
(
	[College_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Course]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Course](
	[Course_ID] [int] IDENTITY(1,1) NOT NULL,
	[Course_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Course_Years] [nchar](10) NOT NULL,
	[Course_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Course] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_FormAnswer]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_FormAnswer](
	[FA_ID] [int] IDENTITY(1,1) NOT NULL,
	[FA_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[FA_StudentID] [int] NOT NULL,
	[FA_FormID] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_FormAnswer] PRIMARY KEY CLUSTERED 
(
	[FA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_FormAnswerResponse]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_FormAnswerResponse](
	[FAR_ID] [int] IDENTITY(1,1) NOT NULL,
	[FAR_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[FAR__FAID] [int] NOT NULL,
	[FAR_ResponseID] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_FormAnswerResponse] PRIMARY KEY CLUSTERED 
(
	[FAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_FormStep]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_FormStep](
	[FS_ID] [int] IDENTITY(1,1) NOT NULL,
	[FS_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[FS_Name] [nvarchar](50) NOT NULL,
	[FS_Order] [int] NOT NULL,
	[FS_Display] [nvarchar](max) NOT NULL,
	[FS_FormID] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_FormStep] PRIMARY KEY CLUSTERED 
(
	[FS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_From]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_From](
	[Form_ID] [int] IDENTITY(1,1) NOT NULL,
	[Form_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Form_Name] [nvarchar](50) NOT NULL,
	[Form_CreatorID] [int] NOT NULL,
	[Form_CourseID] [int] NOT NULL,
	[Form_Display] [nvarchar](max) NOT NULL,
	[Form_TotalQuestion] [int] NOT NULL,
	[Form_Active] [bit] NOT NULL,
	[Form_CreateDate] [datetime2](7) NOT NULL,
	[Form_Modify] [datetime2](7) NOT NULL,
	[Form_StepCount] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_From] PRIMARY KEY CLUSTERED 
(
	[Form_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Group]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Group](
	[Group_ID] [int] IDENTITY(1,1) NOT NULL,
	[Group_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Group_Name] [nvarchar](50) NOT NULL,
	[Group_Display] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Group] PRIMARY KEY CLUSTERED 
(
	[Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Login]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Login](
	[Login_ID] [int] IDENTITY(1,1) NOT NULL,
	[Login_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Login_RoleID] [int] NOT NULL,
	[Login_Email] [nvarchar](50) NOT NULL,
	[Login_Name] [nvarchar](50) NOT NULL,
	[Login_Family] [nvarchar](50) NOT NULL,
	[Login_Hash] [nvarchar](max) NOT NULL,
	[Login_Salt] [nvarchar](max) NOT NULL,
	[Login_CreateDate] [datetime2](7) NOT NULL,
	[Login_Modify] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Tbl_Login] PRIMARY KEY CLUSTERED 
(
	[Login_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Question]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Question](
	[Question_ID] [int] IDENTITY(1,1) NOT NULL,
	[Question_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Question_StepID] [int] NOT NULL,
	[Question_Titel] [nchar](10) NOT NULL,
	[Question_TypeCodeID] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_Question] PRIMARY KEY CLUSTERED 
(
	[Question_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Response]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Response](
	[Response_ID] [int] IDENTITY(1,1) NOT NULL,
	[Response_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Response_Order] [int] NOT NULL,
	[ResponseTitel] [int] NOT NULL,
	[Response_QuestionID] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_Response] PRIMARY KEY CLUSTERED 
(
	[Response_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Role]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Role](
	[Role_ID] [int] IDENTITY(1,1) NOT NULL,
	[Role_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Role_Name] [nvarchar](50) NOT NULL,
	[Role_Diplay] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_Role] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Student]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Student](
	[Student_ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_Guid] [uniqueidentifier] NOT NULL,
	[Student_Code] [nchar](10) NOT NULL,
	[Student_NationalCode] [nvarchar](50) NOT NULL,
	[Student_SIID] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_Student] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_StudentInfo]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_StudentInfo](
	[SI_ID] [int] IDENTITY(1,1) NOT NULL,
	[SI_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[SI_Name] [nvarchar](50) NOT NULL,
	[SI_Family] [nvarchar](50) NOT NULL,
	[SI_Email] [nvarchar](50) NOT NULL,
	[SI_Phone] [nvarchar](50) NOT NULL,
	[SI_Mobile] [nvarchar](50) NOT NULL,
	[SI_GenderCodeID] [int] NOT NULL,
	[SI_BarthYearCodeID] [int] NOT NULL,
	[SI_NationalCodeID] [int] NOT NULL,
	[SI_BloodCodeID] [int] NOT NULL,
	[SI_InsuranceCodeID] [int] NOT NULL,
	[SI_GradeCodeID] [int] NOT NULL,
	[SI_HomeTypeCodeID] [int] NOT NULL,
	[SI_MaritaCodeID] [int] NOT NULL,
	[SI_CollegeID] [int] NOT NULL,
	[SI_BranchID] [int] NOT NULL,
	[SI_BathLocation] [nvarchar](100) NOT NULL,
	[SI_BeforeUniversity] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_StudentInfo] PRIMARY KEY CLUSTERED 
(
	[SI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_University]    Script Date: 11/7/2019 1:53:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_University](
	[University_ID] [int] IDENTITY(1,1) NOT NULL,
	[University_Guid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[University_Name] [nvarchar](50) NOT NULL,
	[University_Display] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_University] PRIMARY KEY CLUSTERED 
(
	[University_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_Branch] ADD  CONSTRAINT [DF_Tbl_Branch_Branch_Guid]  DEFAULT (newid()) FOR [Branch_Guid]
GO
ALTER TABLE [dbo].[Tbl_Code] ADD  CONSTRAINT [DF_Tbl_Code_Code_Guid]  DEFAULT (newid()) FOR [Code_Guid]
GO
ALTER TABLE [dbo].[Tbl_CodeGroop] ADD  CONSTRAINT [DF_Tbl_CodeGroop_CG_Guid]  DEFAULT (newid()) FOR [CG_Guid]
GO
ALTER TABLE [dbo].[Tbl_College] ADD  CONSTRAINT [DF_Tbl_College_College_Guid]  DEFAULT (newid()) FOR [College_Guid]
GO
ALTER TABLE [dbo].[Tbl_Course] ADD  CONSTRAINT [DF_Tbl_Course_Course_Guid]  DEFAULT (newid()) FOR [Course_Guid]
GO
ALTER TABLE [dbo].[Tbl_FormAnswer] ADD  CONSTRAINT [DF_Tbl_FormAnswer_FA_Guid]  DEFAULT (newid()) FOR [FA_Guid]
GO
ALTER TABLE [dbo].[Tbl_FormAnswerResponse] ADD  CONSTRAINT [DF_Tbl_FormAnswerResponse_FAR_Guid]  DEFAULT (newid()) FOR [FAR_Guid]
GO
ALTER TABLE [dbo].[Tbl_FormStep] ADD  CONSTRAINT [DF_Tbl_FormStep_FS_Guid]  DEFAULT (newid()) FOR [FS_Guid]
GO
ALTER TABLE [dbo].[Tbl_From] ADD  CONSTRAINT [DF_Tbl_From_Form_Guid]  DEFAULT (newid()) FOR [Form_Guid]
GO
ALTER TABLE [dbo].[Tbl_Group] ADD  CONSTRAINT [DF_Tbl_Group_Group_Guid]  DEFAULT (newid()) FOR [Group_Guid]
GO
ALTER TABLE [dbo].[Tbl_Login] ADD  CONSTRAINT [DF_Tbl_Login_Login_Guid]  DEFAULT (newid()) FOR [Login_Guid]
GO
ALTER TABLE [dbo].[Tbl_Question] ADD  CONSTRAINT [DF_Tbl_Question_Question_Guid]  DEFAULT (newid()) FOR [Question_Guid]
GO
ALTER TABLE [dbo].[Tbl_Response] ADD  CONSTRAINT [DF_Tbl_Response_Response_Guid]  DEFAULT (newid()) FOR [Response_Guid]
GO
ALTER TABLE [dbo].[Tbl_Role] ADD  CONSTRAINT [DF_Tbl_Role_Role_Guid]  DEFAULT (newid()) FOR [Role_Guid]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] ADD  CONSTRAINT [DF_Tbl_StudentInfo_SI_Guid]  DEFAULT (newid()) FOR [SI_Guid]
GO
ALTER TABLE [dbo].[Tbl_University] ADD  CONSTRAINT [DF_Tbl_University_University_Guid]  DEFAULT (newid()) FOR [University_Guid]
GO
ALTER TABLE [dbo].[Tbl_Branch]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Branch_Tbl_Group] FOREIGN KEY([Branch_GroupID])
REFERENCES [dbo].[Tbl_Group] ([Group_ID])
GO
ALTER TABLE [dbo].[Tbl_Branch] CHECK CONSTRAINT [FK_Tbl_Branch_Tbl_Group]
GO
ALTER TABLE [dbo].[Tbl_Code]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Code_Tbl_CodeGroop] FOREIGN KEY([Code_CGID])
REFERENCES [dbo].[Tbl_CodeGroop] ([CG_ID])
GO
ALTER TABLE [dbo].[Tbl_Code] CHECK CONSTRAINT [FK_Tbl_Code_Tbl_CodeGroop]
GO
ALTER TABLE [dbo].[Tbl_College]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_College_Tbl_University] FOREIGN KEY([College_UniversityID])
REFERENCES [dbo].[Tbl_University] ([University_ID])
GO
ALTER TABLE [dbo].[Tbl_College] CHECK CONSTRAINT [FK_Tbl_College_Tbl_University]
GO
ALTER TABLE [dbo].[Tbl_FormAnswer]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_FormAnswer_Tbl_From] FOREIGN KEY([FA_FormID])
REFERENCES [dbo].[Tbl_From] ([Form_ID])
GO
ALTER TABLE [dbo].[Tbl_FormAnswer] CHECK CONSTRAINT [FK_Tbl_FormAnswer_Tbl_From]
GO
ALTER TABLE [dbo].[Tbl_FormAnswerResponse]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_FormAnswerResponse_Tbl_FormAnswer] FOREIGN KEY([FAR__FAID])
REFERENCES [dbo].[Tbl_FormAnswer] ([FA_ID])
GO
ALTER TABLE [dbo].[Tbl_FormAnswerResponse] CHECK CONSTRAINT [FK_Tbl_FormAnswerResponse_Tbl_FormAnswer]
GO
ALTER TABLE [dbo].[Tbl_FormAnswerResponse]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_FormAnswerResponse_Tbl_Response] FOREIGN KEY([FAR_ResponseID])
REFERENCES [dbo].[Tbl_Response] ([Response_ID])
GO
ALTER TABLE [dbo].[Tbl_FormAnswerResponse] CHECK CONSTRAINT [FK_Tbl_FormAnswerResponse_Tbl_Response]
GO
ALTER TABLE [dbo].[Tbl_FormStep]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_FormStep_Tbl_From] FOREIGN KEY([FS_FormID])
REFERENCES [dbo].[Tbl_From] ([Form_ID])
GO
ALTER TABLE [dbo].[Tbl_FormStep] CHECK CONSTRAINT [FK_Tbl_FormStep_Tbl_From]
GO
ALTER TABLE [dbo].[Tbl_From]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_From_Tbl_Course] FOREIGN KEY([Form_CourseID])
REFERENCES [dbo].[Tbl_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Tbl_From] CHECK CONSTRAINT [FK_Tbl_From_Tbl_Course]
GO
ALTER TABLE [dbo].[Tbl_From]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_From_Tbl_Login] FOREIGN KEY([Form_CourseID])
REFERENCES [dbo].[Tbl_Login] ([Login_ID])
GO
ALTER TABLE [dbo].[Tbl_From] CHECK CONSTRAINT [FK_Tbl_From_Tbl_Login]
GO
ALTER TABLE [dbo].[Tbl_Login]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Login_Tbl_Role] FOREIGN KEY([Login_RoleID])
REFERENCES [dbo].[Tbl_Role] ([Role_ID])
GO
ALTER TABLE [dbo].[Tbl_Login] CHECK CONSTRAINT [FK_Tbl_Login_Tbl_Role]
GO
ALTER TABLE [dbo].[Tbl_Question]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Question_Tbl_Code] FOREIGN KEY([Question_TypeCodeID])
REFERENCES [dbo].[Tbl_Code] ([Code_ID])
GO
ALTER TABLE [dbo].[Tbl_Question] CHECK CONSTRAINT [FK_Tbl_Question_Tbl_Code]
GO
ALTER TABLE [dbo].[Tbl_Response]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Response_Tbl_Question] FOREIGN KEY([Response_QuestionID])
REFERENCES [dbo].[Tbl_Question] ([Question_ID])
GO
ALTER TABLE [dbo].[Tbl_Response] CHECK CONSTRAINT [FK_Tbl_Response_Tbl_Question]
GO
ALTER TABLE [dbo].[Tbl_Student]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Student_Tbl_StudentInfo] FOREIGN KEY([Student_SIID])
REFERENCES [dbo].[Tbl_StudentInfo] ([SI_ID])
GO
ALTER TABLE [dbo].[Tbl_Student] CHECK CONSTRAINT [FK_Tbl_Student_Tbl_StudentInfo]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Branch] FOREIGN KEY([SI_BranchID])
REFERENCES [dbo].[Tbl_Branch] ([Branch_ID])
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] CHECK CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Branch]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code] FOREIGN KEY([SI_GenderCodeID])
REFERENCES [dbo].[Tbl_Code] ([Code_ID])
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] CHECK CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code1] FOREIGN KEY([SI_BarthYearCodeID])
REFERENCES [dbo].[Tbl_Code] ([Code_ID])
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] CHECK CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code1]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code2] FOREIGN KEY([SI_NationalCodeID])
REFERENCES [dbo].[Tbl_Code] ([Code_ID])
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] CHECK CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code2]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code3] FOREIGN KEY([SI_BloodCodeID])
REFERENCES [dbo].[Tbl_Code] ([Code_ID])
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] CHECK CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code3]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code4] FOREIGN KEY([SI_InsuranceCodeID])
REFERENCES [dbo].[Tbl_Code] ([Code_ID])
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] CHECK CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code4]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code5] FOREIGN KEY([SI_GradeCodeID])
REFERENCES [dbo].[Tbl_Code] ([Code_ID])
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] CHECK CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code5]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code6] FOREIGN KEY([SI_HomeTypeCodeID])
REFERENCES [dbo].[Tbl_Code] ([Code_ID])
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] CHECK CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code6]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code7] FOREIGN KEY([SI_MaritaCodeID])
REFERENCES [dbo].[Tbl_Code] ([Code_ID])
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] CHECK CONSTRAINT [FK_Tbl_StudentInfo_Tbl_Code7]
GO
ALTER TABLE [dbo].[Tbl_StudentInfo]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_StudentInfo_Tbl_College] FOREIGN KEY([SI_CollegeID])
REFERENCES [dbo].[Tbl_College] ([College_ID])
GO
ALTER TABLE [dbo].[Tbl_StudentInfo] CHECK CONSTRAINT [FK_Tbl_StudentInfo_Tbl_College]
GO
USE [master]
GO
ALTER DATABASE [WTIAU_Health] SET  READ_WRITE 
GO
