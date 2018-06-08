CREATE TABLE [dbo].[MovieStageResource]
(
[MovieStageResourceId] [int] NOT NULL IDENTITY(1, 1),
[Movieid] [int] NOT NULL,
[MovieStageDefinitionId] [int] NOT NULL,
[ResourceId] [int] NOT NULL,
[MovieStageResourceRequirementId] [int] NOT NULL,
[StartDate] [date] NOT NULL,
[EndDate] [date] NULL,
[OtherDetails] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieStageResource] ADD CONSTRAINT [MovieStageResourcePK] PRIMARY KEY CLUSTERED  ([MovieStageResourceId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieStageResource] ADD CONSTRAINT [MovieStageResource_MovieStageFK] FOREIGN KEY ([Movieid], [MovieStageDefinitionId]) REFERENCES [dbo].[MovieStage] ([MovieID], [MovieStageDefinitionId])
GO
ALTER TABLE [dbo].[MovieStageResource] ADD CONSTRAINT [MovieStageResource_MovieStageResourceRequirementFK] FOREIGN KEY ([MovieStageResourceRequirementId]) REFERENCES [dbo].[MovieStageResourceRequirement] ([MovieStageResourceRequirementId])
GO
ALTER TABLE [dbo].[MovieStageResource] ADD CONSTRAINT [MovieStageResource_ResourceFK] FOREIGN KEY ([ResourceId]) REFERENCES [dbo].[Resource] ([ResourceId])
GO
