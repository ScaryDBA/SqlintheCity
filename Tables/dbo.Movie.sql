CREATE TABLE [dbo].[Movie]
(
[MovieId] [int] NOT NULL IDENTITY(1, 1),
[StudioId] [int] NOT NULL,
[MovieName] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Movie] ADD CONSTRAINT [MoviePK] PRIMARY KEY CLUSTERED  ([MovieId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MovieNameIndex] ON [dbo].[Movie] ([MovieName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Movie] ADD CONSTRAINT [Movie_StudioFK] FOREIGN KEY ([StudioId]) REFERENCES [dbo].[Studio] ([StudioId])
GO
