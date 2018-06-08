CREATE TABLE [dbo].[MovieStage]
(
[MovieID] [int] NOT NULL,
[MovieStageDefinitionId] [int] NOT NULL,
[StartDate] [date] NOT NULL,
[EndDate] [date] NULL,
[OtherDetails] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieStage] ADD CONSTRAINT [MovieStagePK] PRIMARY KEY CLUSTERED  ([MovieID], [MovieStageDefinitionId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieStage] ADD CONSTRAINT [MovieStage_MovieFK] FOREIGN KEY ([MovieID]) REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[MovieStage] ADD CONSTRAINT [MovieStage_MovieStageDefinitionFK] FOREIGN KEY ([MovieStageDefinitionId]) REFERENCES [dbo].[MovieStageDefinition] ([MovieStageDefinitionId])
GO
