CREATE TABLE [dbo].[Department]
(
[DepartmentID] [int] NOT NULL IDENTITY(1, 1),
[DepartmentName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD CONSTRAINT [DeparmentPK] PRIMARY KEY CLUSTERED  ([DepartmentID]) ON [PRIMARY]
GO
