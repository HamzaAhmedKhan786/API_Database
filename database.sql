USE [Gflix]
GO
/****** Object:  Table [dbo].[Casts_Table]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casts_Table](
	[CM_ID] [uniqueidentifier] NOT NULL,
	[C_Name] [nvarchar](50) NOT NULL,
	[M_ID] [int] NOT NULL,
 CONSTRAINT [PK_Casts_Table] PRIMARY KEY CLUSTERED 
(
	[CM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collection_Table]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection_Table](
	[Collection_ID] [uniqueidentifier] NOT NULL,
	[User_Role_ID] [nvarchar](50) NOT NULL,
	[M_ID] [nvarchar](50) NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[User_Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Collection_Table] PRIMARY KEY CLUSTERED 
(
	[Collection_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieCasts_Table]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieCasts_Table](
	[CM_ID] [uniqueidentifier] NOT NULL,
	[C_Name] [nvarchar](50) NOT NULL,
	[M_ID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MovieCasts_Table] PRIMARY KEY CLUSTERED 
(
	[CM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies_Table]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies_Table](
	[M_ID] [uniqueidentifier] NOT NULL,
	[Movie_Name] [nvarchar](50) NOT NULL,
	[Movie_ReleaseDate] [date] NULL,
	[Movie_Rating] [int] NULL,
	[Genre] [nvarchar](50) NULL,
	[Casts] [nvarchar](max) NULL,
 CONSTRAINT [PK_Movies_Table] PRIMARY KEY CLUSTERED 
(
	[M_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLE_Table]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE_Table](
	[ROLE_ID] [uniqueidentifier] NOT NULL,
	[USER_ROLE] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ROLE_Table] PRIMARY KEY CLUSTERED 
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[temp]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp](
	[Email_ID] [varchar](20) NULL,
	[password_u] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Role_Management_Table]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role_Management_Table](
	[User_Role_ID] [uniqueidentifier] NOT NULL,
	[User_ID] [uniqueidentifier] NOT NULL,
	[ROLE_ID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_User_Role_Management_Table] PRIMARY KEY CLUSTERED 
(
	[User_Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Table]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Table](
	[User_ID] [uniqueidentifier] NOT NULL,
	[User_Name] [nvarchar](50) NOT NULL,
	[User_Email_ID] [nvarchar](50) NOT NULL,
	[User_Password] [nvarchar](50) NOT NULL,
	[User_DOB] [date] NOT NULL,
	[User_Address] [nvarchar](50) NULL,
	[User_PhoneNumber] [nvarchar](10) NULL,
 CONSTRAINT [PK_User_Table] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Casts_Table]  WITH CHECK ADD  CONSTRAINT [FK_Casts_Table_Casts_Table] FOREIGN KEY([CM_ID])
REFERENCES [dbo].[Casts_Table] ([CM_ID])
GO
ALTER TABLE [dbo].[Casts_Table] CHECK CONSTRAINT [FK_Casts_Table_Casts_Table]
GO
ALTER TABLE [dbo].[Collection_Table]  WITH CHECK ADD  CONSTRAINT [FK_Collection_Table_MID] FOREIGN KEY([Collection_ID])
REFERENCES [dbo].[Collection_Table] ([Collection_ID])
GO
ALTER TABLE [dbo].[Collection_Table] CHECK CONSTRAINT [FK_Collection_Table_MID]
GO
ALTER TABLE [dbo].[Collection_Table]  WITH CHECK ADD  CONSTRAINT [FK_Collection_Table_URID] FOREIGN KEY([Collection_ID])
REFERENCES [dbo].[Collection_Table] ([Collection_ID])
GO
ALTER TABLE [dbo].[Collection_Table] CHECK CONSTRAINT [FK_Collection_Table_URID]
GO
ALTER TABLE [dbo].[MovieCasts_Table]  WITH CHECK ADD  CONSTRAINT [FK_MovieCasts_Table_MovieCasts_Table] FOREIGN KEY([CM_ID])
REFERENCES [dbo].[MovieCasts_Table] ([CM_ID])
GO
ALTER TABLE [dbo].[MovieCasts_Table] CHECK CONSTRAINT [FK_MovieCasts_Table_MovieCasts_Table]
GO
ALTER TABLE [dbo].[User_Role_Management_Table]  WITH CHECK ADD  CONSTRAINT [FK_Role] FOREIGN KEY([User_Role_ID])
REFERENCES [dbo].[User_Role_Management_Table] ([User_Role_ID])
GO
ALTER TABLE [dbo].[User_Role_Management_Table] CHECK CONSTRAINT [FK_Role]
GO
ALTER TABLE [dbo].[User_Role_Management_Table]  WITH CHECK ADD  CONSTRAINT [FK_User] FOREIGN KEY([User_Role_ID])
REFERENCES [dbo].[User_Role_Management_Table] ([User_Role_ID])
GO
ALTER TABLE [dbo].[User_Role_Management_Table] CHECK CONSTRAINT [FK_User]
GO
/****** Object:  StoredProcedure [dbo].[CollectionAsPer_UserEmailID]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Hamza Ahmed Khan>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CollectionAsPer_UserEmailID] 
	-- Add the parameters for the stored procedure here
	--@UserR nvarchar(10),
	@UserEID nvarchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	  SELECT 
	   Collection_Table.User_Name, Collection_Table.User_Role, User_Table.User_Email_ID,
	   Movies_Table.Movie_Name, Movies_Table.Movie_ReleaseDate, Movies_Table.Movie_Rating,
       Movies_Table.Genre, Movies_Table.Casts
	  from Collection_Table join Movies_Table on Collection_Table.M_ID =  Movies_Table.M_ID  
	  JOIN  User_Table ON  Collection_Table.User_Name = User_Table.User_Name
	  where User_Table.User_Email_ID = @UserEID
	  -- and
END
GO
/****** Object:  StoredProcedure [dbo].[CollectionAsPer_UserRole]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Hamza Ahmed Khan>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CollectionAsPer_UserRole] 
	-- Add the parameters for the stored procedure here
	--@UserR nvarchar(10),
	@UserR nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	  SELECT 
	   User_Name, Collection_Table.User_Role,
	   Movies_Table.Movie_Name, Movies_Table.Movie_ReleaseDate, Movies_Table.Movie_Rating,
       Movies_Table.Genre, Movies_Table.Casts
	  from Collection_Table join Movies_Table on Collection_Table.M_ID =  Movies_Table.M_ID  
	  where User_Role = @UserR
	  -- and
END
GO
/****** Object:  StoredProcedure [dbo].[CollectionAsPer_UserRole_UserName]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Hamza Ahmed Khan>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CollectionAsPer_UserRole_UserName] 
	-- Add the parameters for the stored procedure here
	--@UserR nvarchar(10),
	@UserR nvarchar(10) ,
	@UserName nvarchar(10) 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT 
	   User_Name, Collection_Table.User_Role,
	   Movies_Table.Movie_Name, Movies_Table.Movie_ReleaseDate, Movies_Table.Movie_Rating,
       Movies_Table.Genre, Movies_Table.Casts
	  from Collection_Table join Movies_Table on Collection_Table.M_ID =  Movies_Table.M_ID  
	  where User_Role like '%'+@UserR+'%' or User_Name = @UserName
	  -- and
END
GO
/****** Object:  StoredProcedure [dbo].[DELETION_From_Collection]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DELETION_From_Collection] 
	-- Add the parameters for the stored procedure here
	@User_Name varchar(10),
	@Movie_Name varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Declare
	@MID uniqueidentifier
	Select @MID = M_ID from Movies_Table where Movie_Name = @Movie_Name
	 DELETE FROM Collection_Table where User_Name = @User_Name and M_ID = @MID
END
GO
/****** Object:  StoredProcedure [dbo].[GetData]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Hamza Ahmed Khan,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[GetData]
	-- Add the parameters for the stored procedure here
	 @Movie_Name nvarchar(50) = 'Iron Man',  
    @Cast_Name nvarchar(50)  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	if @Movie_Name != null
	BEGIN
	(
	SELECT * from Movies_Table where @Movie_Name = Movie_Name
	)
	END

	else
	BEGIN
		 Select * from Movies_Table 
		 inner join Casts_Table on .Movies_Table.M_ID = Casts_Table.M_ID
		 where C_Name = @Cast_Name	
	END

END
GO
/****** Object:  StoredProcedure [dbo].[Insert_MovieForUser_in_Collection]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_MovieForUser_in_Collection] 
	-- Add the parameters for the stored procedure here
	@User_Name varchar(10),
	@User_Role  varchar(10),
	@Movie_Name varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Declare
	  @id uniqueidentifier,
	  @UID uniqueidentifier,
	  @RID uniqueidentifier,
	  @URID uniqueidentifier,
	  @MID uniqueidentifier
	  Select @UID = User_ID from User_Table where User_Name = @User_Name
	  Select @RID = Role_ID from ROLE_Table where USER_ROLE = @User_Role
	  Select @URID = User_Role_ID from User_Role_Management_Table where User_ID = @UID and ROLE_ID = @RID
	  Select @MID = M_ID from Movies_Table where Movie_Name = @Movie_Name
	  Set @id = NEWID()
	  Insert into Collection_Table(Collection_ID, User_Role_ID, M_ID, User_Name, User_Role)
	  Values(	@id,
				@URID,
				@MID,
				@User_Name,
				@User_Role
	  );
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDataofMovies]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Hamza Ahmed Khan,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[spGetDataofMovies]
	-- Add the parameters for the stored procedure here
	 @Movie_Name nvarchar(20) = null,
    @Cast_Name nvarchar(50) = null,
	 @Release_Date nvarchar(20)= null,
	  @Movie_rating int = null,
	   @Genre nvarchar(20) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	if @Movie_Name is null and @Cast_Name is null and @Release_Date is null and @Movie_rating is null and @Genre is null
	BEGIN
	(
	select Movies_Table.M_ID, Movie_Name, Movie_ReleaseDate, Movie_Rating, Genre, Casts, User_Name  from Movies_Table 
		INNER JOIN Collection_Table ON Movies_Table.M_ID = Collection_Table.M_ID 
	
	)
	END
	else if @Movie_Name != null OR @Cast_Name != null OR @Release_Date != null OR @Movie_rating != NULL OR  @Genre != null
	begin
	(
		select Movies_Table.M_ID, Movie_Name, Movie_ReleaseDate, Movie_Rating, Genre, Casts, User_Name  from Movies_Table 
		INNER JOIN Collection_Table ON Movies_Table.M_ID = Collection_Table.M_ID 
		where 
		(Movie_Name like '%'+@Movie_Name+'%' OR Movie_ReleaseDate like '%'+@Release_Date+'%' 
			OR Movie_Rating=@Movie_rating OR Genre LIKE '%'+@Genre+'%' OR Casts LIKE '%'+@Cast_Name+'%') 
	)
	end

		 else
DECLARE @MSD VARCHAR = 'DATA NOT FOUND'
PRINT @MSD;

----select * from Movies_Table where (Movie_Name=@Movie_Name OR Movie_ReleaseDate=@Release_Date OR Movie_Rating=@Movie_rating OR Genre=@Genre
----								  OR Casts=@Cast_Name)	
	-- Add the parameters for the stored procedure here
	
END
GO
/****** Object:  StoredProcedure [dbo].[spRoleBased]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spRoleBased]
	-- Add the parameters for the stored procedure here
@User_ROLE varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		  SELECT ROLE_TABLE.ROLE_ID, ROLE_TABLE.USER_ROLE, User_Table.User_Name  FROM ROLE_Table 
  JOIN User_Role_Management_Table ON ROLE_Table.ROLE_ID = User_Role_Management_Table.ROLE_ID
  JOIN User_Table ON User_Role_Management_Table.User_ID = User_Table.User_ID
  
  
  where USER_ROLE = @User_ROLE
END
GO
/****** Object:  StoredProcedure [dbo].[spUserBased]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[spUserBased]
	-- Add the parameters for the stored procedure here
@User_Name varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		  SELECT ROLE_TABLE.ROLE_ID, ROLE_TABLE.USER_ROLE, User_Table.User_Name  FROM ROLE_Table 
  JOIN User_Role_Management_Table ON ROLE_Table.ROLE_ID = User_Role_Management_Table.ROLE_ID
  JOIN User_Table ON User_Role_Management_Table.User_ID = User_Table.User_ID
  
  
  where User_Name = @User_Name
END
GO
/****** Object:  StoredProcedure [dbo].[User_DetailsByUserID]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[User_DetailsByUserID]
	-- Add the parameters for the stored procedure here
	@UserEID nvarchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
SELECT User_Table.User_Name,
User_Email_ID,
User_Password,
User_DOB,
User_Address,
User_PhoneNumber,
USER_ROLE 
FROM User_Table  JOIN User_Role_Management_Table ON User_Table.User_ID = User_Role_Management_Table.User_ID
JOIN ROLE_Table ON User_Role_Management_Table.ROLE_ID = ROLE_Table.ROLE_ID
Where User_Email_ID = @UserEID

END
GO
/****** Object:  StoredProcedure [dbo].[UserAuthenticator]    Script Date: 5/8/2022 4:18:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Hamza Ahmed Khan>
-- Create date: <Create Date,,>
-- Description:	<Description,,User verification through Authenticator>
-- =============================================
CREATE PROCEDURE [dbo].[UserAuthenticator] 
	-- Add the parameters for the stored procedure here
	@User_EID VARCHAR(30),
	@User_PWD VARCHAR(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--if  @User_EID != null and @User_PWD != null
	Begin
	
	  SELECT   Count(*) from User_Table 
	 where User_Email_ID = @User_EID and User_Password = @User_PWD
	 end
	
	
	
	

END
GO
