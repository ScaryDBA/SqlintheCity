SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[MovieDetails]
(
 @MovieID INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT  m.MovieName,
            s.StudioName,
			--s.StudioId,
            msd.MovieStageName,
			msd.MovieStageDesc
    FROM    dbo.Movie AS m
    JOIN    dbo.Studio AS s
            ON s.StudioId = m.StudioId
    JOIN    dbo.MovieStage AS ms
            ON ms.MovieID = m.MovieId
    JOIN    dbo.MovieStageDefinition AS msd
            ON msd.MovieStageDefinitionId = ms.MovieStageDefinitionId
    WHERE   m.MovieId = @MovieID;
	--for the sql cruise
END
GO
