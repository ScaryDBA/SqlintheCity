SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[ListStudio]
AS
SET NOCOUNT ON;

SELECT  s.StudioName,
        s.StudioId
FROM    dbo.Studio AS s;
GO
