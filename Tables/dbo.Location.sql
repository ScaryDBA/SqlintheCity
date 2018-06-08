CREATE TABLE [dbo].[Location]
(
[LocationId] [int] NOT NULL IDENTITY(1, 1),
[LocationTypeId] [smallint] NOT NULL,
[LocationName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LocationDetails] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddColumn] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Location] ADD CONSTRAINT [LocationPK] PRIMARY KEY CLUSTERED  ([LocationId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Location] ADD CONSTRAINT [Location_LocationTypeFK] FOREIGN KEY ([LocationTypeId]) REFERENCES [dbo].[LocationType] ([LocationTypeId])
GO
