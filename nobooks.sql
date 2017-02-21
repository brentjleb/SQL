USE [LMS]
GO

/****** Object:  StoredProcedure [dbo].[nobooks]    Script Date: 2/21/2017 7:06:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[nobooks]
AS
	SELECT bl.Bookid, bl.Branchid, bl.CardNo, br.Name
	FROM Book_Loans bl JOIN Borrower br
	ON bl.CardNo = br.CardNo
	WHERE bl.CardNo NOT IN (SELECT CardNo FROM Book_Loans);
GO

