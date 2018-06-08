CREATE TABLE [dbo].[__SchemaSnapshot]
(
[Snapshot] [varbinary] (max) NULL,
[LastUpdateDate] [datetime] NULL CONSTRAINT [__SchemaSnapshotDateDefault] DEFAULT (getdate())
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'This table is used by ReadyRoll SQL Projects to store a snapshot of the schema at the time of the last deployment. Please do not alter or remove this table from the database.', 'SCHEMA', N'dbo', 'TABLE', N'__SchemaSnapshot', NULL, NULL
GO
