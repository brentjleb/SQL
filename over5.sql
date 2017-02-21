USE [LMS]
GO

/****** Object:  StoredProcedure [dbo].[over5]    Script Date: 2/21/2017 7:06:52 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[over5]
AS

SELECT COUNT (BO.CardNo) AS Over5BooksOut, BO.CardNo, BO.Name, BO.Address, BO.Phone
FROM BORROWER AS BO 
INNER JOIN BOOK_LOANS AS BL
ON BO.CardNo = BL.CardNo
GROUP BY BO.CardNo, BO.Name, BO.Address, BO.Phone
Having
COUNT(*) > 5
GO

