USE [LMS]
GO

/****** Object:  StoredProcedure [dbo].[centking]    Script Date: 2/21/2017 7:06:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[centking]
AS

SELECT Title, No_Of_Copies, BranchName
FROM Book AS bk
FULL OUTER JOIN Book_Copies AS bc ON bk.Bookid = bc.Bookid
FULL OUTER JOIN Library_Branch AS lb ON bc.Branchid = lb.Branchid
FULL OUTER JOIN Book_Authors AS ba ON bk.bookid = ba.bookid
WHERE Branchname = 'Central'
AND Authorname = 'Stephen King'
GO

