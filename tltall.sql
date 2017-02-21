USE [LMS]
GO

/****** Object:  StoredProcedure [dbo].[tltall]    Script Date: 2/21/2017 7:07:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[tltall]
AS
	SELECT bc.Bookid, bc.Branchid, bc.No_Of_Copies, bk.Title, lb.BranchName  FROM Book_Copies bc
	JOIN Book bk ON bc.Bookid = bk.Bookid JOIN Library_Branch lb ON bc.Branchid = lb.Branchid
	WHERE Title = 'The Lost Tribe'

GO

