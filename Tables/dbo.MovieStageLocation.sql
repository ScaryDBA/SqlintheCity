CREATE TABLE [dbo].[MovieStageLocation]
(
[LocationId] [int] NOT NULL,
[MovieId] [int] NOT NULL,
[MovieStageDefinitionId] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieStageLocation] ADD CONSTRAINT [MovieSTageLocationPK] PRIMARY KEY CLUSTERED  ([LocationId], [MovieId], [MovieStageDefinitionId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieStageLocation] ADD CONSTRAINT [MovieStageLocation_LocationFK] FOREIGN KEY ([LocationId]) REFERENCES [dbo].[Location] ([LocationId])
GO
ALTER TABLE [dbo].[MovieStageLocation] ADD CONSTRAINT [MoviestageLocation_MovieStageFK] FOREIGN KEY ([MovieId], [MovieStageDefinitionId]) REFERENCES [dbo].[MovieStage] ([MovieID], [MovieStageDefinitionId])
GO
