CREATE TABLE [dbo].[Studio]
(
[StudioId] [int] NOT NULL IDENTITY(1, 1),
[StudioName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Studio] ADD CONSTRAINT [StudioPK] PRIMARY KEY CLUSTERED  ([StudioId]) ON [PRIMARY]
GO
