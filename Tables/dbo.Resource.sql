CREATE TABLE [dbo].[Resource]
(
[ResourceId] [int] NOT NULL IDENTITY(1, 1),
[AgentId] [int] NOT NULL,
[FirstName] [nvarchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MiddleName] [nvarchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Gender] [bit] NOT NULL,
[OtherDetails] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Resource] ADD CONSTRAINT [ResourceId] PRIMARY KEY CLUSTERED  ([ResourceId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Resource] ADD CONSTRAINT [Recource_AgentFK] FOREIGN KEY ([AgentId]) REFERENCES [dbo].[Agent] ([AgentId])
GO
