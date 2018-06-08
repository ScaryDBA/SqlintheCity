SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[DevOpsVG]
AS
SELECT m.MovieId,
       m.StudioId,
       m.MovieName
FROM dbo.Movie AS m;
GO
