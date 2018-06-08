SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[ResourceList]
AS
SET NOCOUNT ON;

SELECT  r.LastName,
        r.FirstName,
        r.Gender
FROM    dbo.Resource AS r;
GO
