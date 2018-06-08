CREATE TABLE [dbo].[Agent]
(
[AgentId] [int] NOT NULL IDENTITY(1, 1),
[AgentName] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AgentDetails] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmailAddress] [nvarchar] (254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SocialSecurityNumber] [nchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agent] ADD CONSTRAINT [AgentPK] PRIMARY KEY CLUSTERED  ([AgentId]) WITH (STATISTICS_NORECOMPUTE=ON) ON [PRIMARY]
GO
