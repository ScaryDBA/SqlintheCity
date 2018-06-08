CREATE TABLE [dbo].[ResourceRequirement]
(
[ResourceRequirementId] [int] NOT NULL IDENTITY(1, 1),
[ResourceTypeId] [smallint] NOT NULL,
[ResourceRequirementName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ResourceREquirementDesc] [nvarchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OtherResourceDetails] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ResourceRequirement] ADD CONSTRAINT [ResourceRequirementPK] PRIMARY KEY CLUSTERED  ([ResourceRequirementId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ResourceTypeIDFK] ON [dbo].[ResourceRequirement] ([ResourceTypeId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ResourceRequirement] ADD CONSTRAINT [ResourceRequirement_ResourceTypeFK] FOREIGN KEY ([ResourceTypeId]) REFERENCES [dbo].[ResourceType] ([ResourceTypeId])
GO
