CREATE TABLE [dbo].[StageType]
(
[StageTypeId] [smallint] NOT NULL IDENTITY(1, 1),
[StageTypeDesc] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StageType] ADD CONSTRAINT [StageTypePK] PRIMARY KEY CLUSTERED  ([StageTypeId]) ON [PRIMARY]
GO
