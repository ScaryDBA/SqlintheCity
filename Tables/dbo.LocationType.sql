CREATE TABLE [dbo].[LocationType]
(
[LocationTypeId] [smallint] NOT NULL IDENTITY(1, 1),
[LocationTypeDesc] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LocationType] ADD CONSTRAINT [LocationTypePK] PRIMARY KEY CLUSTERED  ([LocationTypeId]) ON [PRIMARY]
GO
