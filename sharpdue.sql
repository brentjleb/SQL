USE [LMS]
GO

/****** Object:  StoredProcedure [dbo].[SharpDue]    Script Date: 2/21/2017 7:07:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SharpDue]
AS
	SELECT bk.Title, br.Name, 'br.Address'
	FROM Book bk, Borrower br, Book_Loans bl, Library_Branch lb
	WHERE lb.BranchName = 'Sharpstown' AND lb.Branchid = bl.Branchid AND
	bl.Duedate = '2017-02-09' AND bl.CardNo = br.CardNo AND bl.Bookid = bk.Bookid
GO

