CREATE TABLE [dbo].[MovieStageResourceRequirement]
(
[MovieStageResourceRequirementId] [int] NOT NULL IDENTITY(1, 1),
[MovieStageDefinitionId] [int] NOT NULL,
[ResourceRequirementId] [int] NOT NULL,
[QuantityRequired] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieStageResourceRequirement] ADD CONSTRAINT [MovieStageResourceRequirementPK] PRIMARY KEY CLUSTERED  ([MovieStageResourceRequirementId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MovieStageResourceRequirement] ADD CONSTRAINT [MovieStageResourceRequirement_MovieStageDefinitionFK] FOREIGN KEY ([MovieStageDefinitionId]) REFERENCES [dbo].[MovieStageDefinition] ([MovieStageDefinitionId])
GO
ALTER TABLE [dbo].[MovieStageResourceRequirement] ADD CONSTRAINT [MovieStageResourceRequirement_ResourceRequirementFK] FOREIGN KEY ([ResourceRequirementId]) REFERENCES [dbo].[ResourceRequirement] ([ResourceRequirementId])
GO
