CREATE TABLE [dbo].[ResourceType]
(
[ResourceTypeId] [smallint] NOT NULL IDENTITY(1, 1),
[ResourceTypeDesc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ResourceType] ADD CONSTRAINT [ResourceTypePK] PRIMARY KEY CLUSTERED  ([ResourceTypeId]) ON [PRIMARY]
GO
