CREATE TABLE [dbo].[udLaborTracking]
(
[Co] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Employee] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Job] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastJob] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Notes] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE TRIGGER [dbo].[LastJob] ON [dbo].[udLaborTracking]
AFTER UPDATE
AS 
SELECT * FROM Deleted;

UPDATE dbo.udLaborTracking 
SET LastJob = d.Job
FROM dbo.udLaborTracking AS ult
JOIN deleted AS d
ON d.Co = ult.Co;
GO
