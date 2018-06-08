CREATE TABLE [dbo].[MovieStageDefinition]
(
[MovieStageDefinitionId] [int] NOT NULL IDENTITY(1, 1),
[StageTypeId] [smallint] NOT NULL,
[MovieStageName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MovieStageDesc] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieStageDefinition] ADD CONSTRAINT [MovieStageDefinitionPK] PRIMARY KEY CLUSTERED  ([MovieStageDefinitionId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieStageDefinition] ADD CONSTRAINT [MovieStageDefiniion_StageTypeFK] FOREIGN KEY ([StageTypeId]) REFERENCES [dbo].[StageType] ([StageTypeId])
GO
