USE [LMS]
GO

/****** Object:  StoredProcedure [dbo].[howmany]    Script Date: 2/21/2017 7:06:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[howmany]
AS

SELECT Title, No_Of_Copies, BranchName, Address

FROM [BOOK_COPIES] AS BC 

INNER JOIN [LIBRARY_BRANCH] AS LB ON BC.BranchId = LB.BranchId

INNER JOIN [BOOK] AS BK ON BC.BookId = BK.BookID

WHERE Title = 'City of Glass'
GO

